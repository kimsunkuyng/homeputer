package com.travel.app.Choice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travel.action.ActionForward;

@WebServlet("*.no")
public class ChoiceFrontController extends HttpServlet {

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
		
		switch (requestURI) {
		case "/Choice/ChoiceList.no":	
			forward = new ChoiceListAction().execute(req, resp);
			break;
		case "/Choice/ChoiceAdd.no":	
			forward = new ChoiceAddAction().execute(req, resp);
			break;
			// 찜하기 지우는 action
		case "/Choice/ChoiceDelete.no":	
			forward = new ChoiceDeleteAction().execute(req, resp);
			break;
		}
		
		if( forward != null ) {
			if( forward.isRedirect() ) {
				// redirect 방식
				resp.sendRedirect(forward.getPath());
			} else {
				// forward방식
				RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
				disp.forward(req, resp);
			}
		}	
	}
}
