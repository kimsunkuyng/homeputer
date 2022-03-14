package com.travel.app.Choice;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.Choice.dao.ChoiceDAO;
import com.travel.app.Choice.dao.ChoiceDTO;
import com.travle.function.Alert;

import java.util.List;

public class ChoiceListAction implements Action{
	// choice select
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		ChoiceDAO cdao = new ChoiceDAO();
		HttpSession session = request.getSession();
		String user_index = String.valueOf(session.getAttribute("user_index"));
		Alert alert = new Alert();
		
//		System.out.println("ChoiceListAction");
//		System.out.println("user_index"+user_index+"입니다");

//		session.getAttribute("loginStat") == null &&
		if( session.getAttribute("user_index") == null) {
			alert.alert(request, forward, "/", "로그인 후 이용부탁드립니다");
		} else {
			try {
				
				request.setAttribute("getChoice", cdao.getChoice(user_index));
				
				forward.setRedirect(false);
				forward.setPath(request.getContextPath() + "/app/choice/choice.jsp");
				
			} catch (Exception e) {
				alert.alert(request, forward, "/", "로그인 후 이용 바랍니다");
			}
		}
		
		
		
		
		
		
		return forward;
	}
}
 