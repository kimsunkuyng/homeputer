package com.travel.app.Choice;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travel.action.ActionForward;
import com.travel.app.Choice.dao.ChoiceDAO;

public class ChoiceDeleteAction extends HttpServlet{
	
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		ChoiceDAO cdao = new ChoiceDAO();
		
		String choiceid = request.getParameter("choiceid");
		
		if(cdao.deleteChoice(choiceid)) {
			forward.setPath("/Choice/ChoiceList.no");
		} else {
			forward.setPath("/Choice/ChoiceList.no");
		}
		
		return forward;
	}
}
