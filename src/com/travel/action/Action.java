package com.travel.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public interface Action {
	
	public ActionForward execute( HttpServletRequest request, HttpServletResponse response );
	
}
