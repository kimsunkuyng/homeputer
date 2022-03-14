package com.travel.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.user.dao.UserInfoDAO;

public class UserLoginOKAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserInfoDAO udao = new UserInfoDAO();
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		if(udao.login(user_id, user_pw)) {
			//로그인 성공
			HttpSession session = request.getSession();
			int user_index = udao.getUser_index(user_id);
			int loginStat = 1;
			System.out.println(user_index);
			session.setAttribute("id", user_id);
			session.setAttribute("user_index", user_index);
			session.setAttribute("loginStat", loginStat);
			forward.setRedirect(true);
			forward.setPath(request.getContextPath() + "/");
//			forward.setRedirect(false);
//			forward.setPath(request.getContextPath() + "/index.jsp");
		} else {
			//로그인 실패
			forward.setRedirect(true);
			forward.setPath(request.getContextPath() + "/app/userinfo/login.jsp?try=false");
		}
		
		return forward;
	}

}
