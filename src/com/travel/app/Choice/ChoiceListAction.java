package com.travel.app.Choice;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.Choice.dao.ChoiceDAO;
import com.travel.app.Choice.dao.ChoiceDTO;

import java.util.List;

public class ChoiceListAction implements Action{
	// choice select
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		ChoiceDAO cdao = new ChoiceDAO();
		HttpSession session = request.getSession();
		String user_index = String.valueOf(session.getAttribute("user_index"));
		
		System.out.println("ChoiceListAction");
		System.out.println(user_index);
		
		request.setAttribute("getChoice", cdao.getChoice(user_index));
		System.out.println("choiceListAction"+request.getAttribute("getChoice"));
		List<ChoiceDTO> clist = cdao.getChoice(user_index);
		System.out.println("clist"+clist.get(0).getCategoryname());
		
		forward.setRedirect(false);
		forward.setPath(request.getContextPath() + "/app/choice/choice.jsp");
		
		//frontcontroller타는지 확인
//		forward.setPath(request.getContextPath() + "/app/choice/test.jsp");
		return forward;
	}
}
 