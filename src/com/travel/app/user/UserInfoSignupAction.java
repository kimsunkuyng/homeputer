package com.travel.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.user.dao.UserInfoDAO;
import com.travel.app.user.dao.UserInfoDTO;

public class UserInfoSignupAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserInfoDAO udao = new UserInfoDAO();
		UserInfoDTO user = new UserInfoDTO();
		ActionForward forward = new ActionForward();
		
		user.setUser_id(request.getParameter("user_id"));
		user.setUser_pw(request.getParameter("user_pw"));
		user.setUser_name(request.getParameter("user_name"));
		user.setUser_birth(request.getParameter("user_birth"));
		user.setUser_tell(request.getParameter("user_tell"));
		user.setUser_email(request.getParameter("user_email"));
		
		if(udao.signup(user)) {
			forward.setPath(request.getContextPath() + "/app/userinfo/login.jsp");
			forward.setRedirect(true);
		} else {
			forward.setPath(request.getContextPath() + "/app/userinfo/index.jsp");
			forward.setRedirect(true);
		}
		return forward;
	}
}
