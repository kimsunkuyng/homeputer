package com.travel.app.user.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.travel.app.user.dao.UserInfoDTO;
import com.travel.mybatis.SqlMapConfig;

public class UserInfoDAO {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public UserInfoDAO() {
		sqlsession = factory.openSession(true);
	}
	
	//회원가입
	public boolean signup(UserInfoDTO user) {
		boolean result = false;
		System.out.println(user.getUser_name());
		
		if(sqlsession.insert("User.signup", user) == 1) {
			result = true;
		}
		
		return result;
	}
	
	//로그인
	public boolean login(String user_id, String user_pw) {
		boolean result = false;
		HashMap<String, String> datas = new HashMap<>();
		datas.put("user_id", user_id);
		datas.put("user_pw", user_pw);
		
		if((Integer)sqlsession.selectOne("User.login", datas) == 1) {
			result = true;
		}
		
		return result;
	}
	
	//회원 삭제
	public boolean userDelete(int user_index) {
		boolean result = false;
		if(sqlsession.update("User.delete", user_index) == 1) {
			result = true;
		}
		return result;
	}
	//회원 조희
	public UserInfoDTO getByid(String userid) {
		UserInfoDTO dto = null;
		dto = sqlsession.selectOne("User.select", userid);
		return dto;
	}
	//회원 수정
	public boolean userUpdate(UserInfoDTO user) {
		boolean result = false;
		System.out.println(user.getUser_email());
		if(sqlsession.update("User.update", user) == 1) {
			result = true;
		}
		return result;
	}

	public int getUser_index(String user_id) {
		return (Integer)sqlsession.selectOne("User.getUser_index", user_id);
	}

}
