package com.travel.app.post;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.post.dao.PostDAO;
import com.travel.app.post.dao.PostDTO;

public class PostUpdateOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		PostDAO pdao = new PostDAO();
		PostDTO pdto = new PostDTO();
		
		String postId = request.getParameter("postId");
		String postTitle = request.getParameter("postTitle");
		String postContent = request.getParameter("postContent");
		
		pdto.setPostId(postId);
		pdto.setPostTitle(postTitle);
		pdto.setPostContent(postContent);
		forward.setRedirect(true);
		
		try {
			pdao.updatePost(pdto);
			forward.setPath(request.getContextPath() + "/post/post.do?page=1");
		} catch (Exception e) {
			//얼럿처리
			forward.setPath(request.getContextPath() + "/post/postEdit.do");
		}
		
		return forward;
	}
}
