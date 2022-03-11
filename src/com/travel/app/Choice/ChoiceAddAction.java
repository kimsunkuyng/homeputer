package com.travel.app.Choice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.Choice.dao.ChoiceDAO;
import com.travel.app.Choice.dao.ChoiceDTO;

public class ChoiceAddAction implements Action {
	// choiceAdd 
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		
		ChoiceDAO cdao = new ChoiceDAO();
		
//		int informationId = Integer.parseInt(request.getParameter("informationId"));
		String user_index = String.valueOf(session.getAttribute("user_index"));
		String informationid = request.getParameter("informationid");
		
		if(cdao.addChoice(user_index, informationid)) {
			forward.setPath("/app/information/inform"+informationid+".jsp");
		} else {
			forward.setPath("/app/information/inform"+informationid+".jsp");
		}
		
		return forward;
	}
	
}
