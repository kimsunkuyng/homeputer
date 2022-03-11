package com.travel.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.user.dao.UserInfoDAO;
import com.travel.app.user.dao.UserInfoDTO;

public class UserUpdateAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserInfoDAO udao = new UserInfoDAO();
		UserInfoDTO user = new UserInfoDTO();

		HttpSession session = request.getSession();
		String user_id = (String) session.getAttribute("id");

		
		user.setUser_id(user_id);
		System.out.println(request.getParameter("user_pw"));
		user.setUser_pw(request.getParameter("user_pw"));
		user.setUser_name(request.getParameter("user_name"));
		user.setUser_birth(request.getParameter("user_birth"));
		user.setUser_tell(request.getParameter("user_tell"));
		user.setUser_email(request.getParameter("user_email"));
		
		if(udao.userUpdate(user)) {
			forward.setRedirect(true);
			System.out.println(forward.getPath());
			forward.setPath(request.getContextPath() + "/");
			System.out.println(forward.getPath());
		}
		return forward;
		
	}
}
