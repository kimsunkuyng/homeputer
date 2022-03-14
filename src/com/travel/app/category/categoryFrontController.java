package com.travel.app.category;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travel.action.ActionForward;

@WebServlet("*.ca")
public class categoryFrontController extends HttpServlet {

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
		case "/category/SeoulList.ca":	
			forward = new SeoulLisAction().execute(req, resp);
			break;
		
		case "/category/GyeonggiList.ca":	
			forward = new GyeonggiListAction().execute(req, resp);
			break;
		
		case "/category/GangwonList.ca":	
			forward = new GangwonListAction().execute(req, resp);
			break;
		
		case "/category/ChungcheonList.ca":	
			forward = new ChungcheonListAction().execute(req, resp);
			break;
		
		case "/category/JeollaList.ca":	
			forward = new JeollaListAction().execute(req, resp);
			break;
		
		case "/category/GyeongsangList.ca":	
			forward = new GyeongsangListAction().execute(req, resp);
			break;
		
		case "/category/JejuList.ca":	
			forward = new JejuListAction().execute(req, resp);
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
