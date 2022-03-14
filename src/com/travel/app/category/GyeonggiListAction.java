package com.travel.app.category;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.category.dao.CategoryDAO;
import com.travel.app.category.dao.CategoryDTO;

public class GyeonggiListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		CategoryDAO cadao = new CategoryDAO();
		
		request.setAttribute("caList1", cadao.getCategoryList1());
		request.setAttribute("caList2", cadao.getCategoryList2());
		request.setAttribute("caList3", cadao.getCategoryList3());
		
		forward.setRedirect(false);
		forward.setPath(request.getContextPath() + "/app/category/categoryGyeonggi.jsp");
		
		return forward;
	}

}
