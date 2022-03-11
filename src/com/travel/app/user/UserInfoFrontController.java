package com.travel.app.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travel.action.ActionForward;

@SuppressWarnings("serial")
@WebServlet("*.us")
public class UserInfoFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String requestURI = req.getRequestURI();
		ActionForward forward = null;
		
		System.out.println("UserInformationController");
		
		if(requestURI.equals("/user/UserSignup.us")) {
			forward = new UserInfoSignupAction().execute(req, resp);
		} else if(requestURI.equals("/user/UserLoginOK.us")) {
			forward = new UserLoginOKAction().execute(req, resp);
		} else if(requestURI.equals("/user/delete.us")) {
			forward = new UserDeleteAction().execute(req, resp);
		} else if(requestURI.equals("/user/update.us")) {
			System.out.println("update");
			forward = new UserUpdateAction().execute(req, resp);
		} else if(requestURI.equals("/user/UserLogOut.us")) {
			forward = new UserLogoutAction().execute(req, resp);
		}
		
		if(forward != null) {
			if(forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
				disp.forward(req, resp);
			}
		}
	}
}
