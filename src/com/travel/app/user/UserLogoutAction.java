package com.travel.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travel.action.Action;
import com.travel.action.ActionForward;

public class UserLogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		session.removeAttribute("id");
		session.removeAttribute("user_index");
		session.removeAttribute("loginStat");
		System.out.println("hello22");
		forward.setRedirect(true);
		forward.setPath(request.getContextPath() + "/");
		return forward;
	}

}
