package com.travel.app.post.dao;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.travel.mybatis.SqlMapConfig;

public class PostDAO {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public PostDAO() {
		sqlsession = factory.openSession(true);
	}

	public int getPostCnt() {
		return sqlsession.selectOne("Post.getPostCnt");
	}

	
	public List<PostDTO> getPostList(int startRow, int endRow) {
		HashMap<String, Integer> datas = new HashMap<String, Integer>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		List<PostDTO> postList = sqlsession.selectList("Post.getPostList", datas);
		return postList;
	}
	
	/*
	public List<PostDTO> getPostList(int userIndex) {
		List<PostDTO> postList = sqlsession.selectList("Post.getPostList", userIndex);
		return postList;
	}
	*/
	
	public PostDTO getDetail(int postId) {
		return sqlsession.selectOne("Post.getDetail", postId);
	}

	public boolean insertPost(PostDTO pdto) {
		boolean result = false;
		//int sql = sqlsession.insert("Post.insertPost", pdto);
		
		if(sqlsession.insert("Post.insertPost", pdto) == 1) {
			result = true;
		}
		
		return result;
	}

	public boolean updatePost(PostDTO pdto) {
		boolean result = false;
		
		if(sqlsession.update("Post.updatePost", pdto) == 1) {
			result = true;
		}
		return result;
	}

	public boolean deletePost(int postId) {
		boolean result = false;
		
		if(sqlsession.update("Post.deletePost", postId) == 1) {
			result = true;
		}
		return result;
	}

}
