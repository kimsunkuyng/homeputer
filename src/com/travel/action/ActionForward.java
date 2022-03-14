package com.travel.action;

import javax.servlet.http.HttpSession;

public class ActionForward {
	private boolean isRedirect;
	private String path;
	
	public ActionForward() {}
	
	public ActionForward(boolean isRedirect, String path) {
		this.isRedirect = isRedirect;
		this.path = path;
	}
	
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}

}
