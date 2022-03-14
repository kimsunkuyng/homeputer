package com.travel.app.Choice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.Choice.dao.ChoiceDAO;
import com.travel.app.Choice.dao.ChoiceDTO;
import com.travle.function.Alert;

public class ChoiceAddAction implements Action {
	// choiceAdd 
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response){
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		
		ChoiceDAO cdao = new ChoiceDAO();
		Alert alert = new Alert();
		
//		int informationId = Integer.parseInt(request.getParameter("informationId"));
		String user_index = String.valueOf(session.getAttribute("user_index"));
		String informationid = request.getParameter("informationid");
		try {
				cdao.addChoice(user_index, informationid);
				alert.alert(request, forward, "/app/information/info"+informationid+".jsp", "찜 목록에 추가되었습니다.");
		} catch (Exception e) {
			// '이미 찜 되어 있다' alert 처리
			System.out.println("catch");
			System.out.println(informationid);
			alert.alert(request, forward, "/app/information/info"+informationid+".jsp", "이미 찜 목록에 있습니다.");
			System.out.println("a");
		}
		return forward;
	}
	
}
