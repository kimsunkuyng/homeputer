package com.travel.category;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.category.dao.CategoryDAO;
import com.travel.category.dao.CategoryDTO;

public class CategoryListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		CategoryDAO cadao = new CategoryDAO();
		System.out.println("1234");
		List<CategoryDTO> caList = cadao.getCategoryList();
		System.out.println("cdao" + cadao);
		
		request.setAttribute("caList", caList);
		
		forward.setRedirect(false);
		forward.setPath(request.getContextPath() + "/app/category/categoryGyeonggi.jsp");
		
		return forward;
	}

}
