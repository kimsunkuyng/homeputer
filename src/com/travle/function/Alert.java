package com.travle.function;

import javax.servlet.http.HttpServletRequest;

import com.travel.action.ActionForward;

public class Alert {
	public static ActionForward alert(HttpServletRequest request , ActionForward forward, String url, String msg) {
		request.setAttribute("url", request.getContextPath() + url);
		request.setAttribute("msg", msg);
		forward.setRedirect(false);
		forward.setPath(request.getContextPath() + "/function/alert.jsp");

		return forward;
	}
}
