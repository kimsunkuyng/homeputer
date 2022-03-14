package com.travel.app.category;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.category.dao.CategoryDAO;

public class SeoulLisAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		CategoryDAO cadao = new CategoryDAO();
		String locationid = "1";
		request.setAttribute("place", cadao.getPlaceList(locationid));
		request.setAttribute("festival", cadao.getFestivalList(locationid));
		request.setAttribute("restaurant", cadao.getRestaurantList(locationid));
		
		forward.setRedirect(false);
		forward.setPath(request.getContextPath() + "/app/category/categorySeoul.jsp");
		
		return forward;
	}

}
