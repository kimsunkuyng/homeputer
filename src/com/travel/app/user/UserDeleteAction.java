package com.travel.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.user.dao.UserInfoDAO;

public class UserDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		UserInfoDAO udao = new UserInfoDAO();
		int user_index = (Integer)session.getAttribute("user_index");
		
		if(udao.userDelete(user_index)) {
			session.removeAttribute("id");
			session.removeAttribute("user_index");
			session.removeAttribute("loginStat");
			forward.setPath(request.getContextPath() + "/index.jsp");
			forward.setRedirect(true);
		}
		return forward;
	}

}
