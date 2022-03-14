package com.travel.app.post;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.post.dao.PostDAO;

public class PostAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		PostDAO pdao = new PostDAO();
		
		String temp  = request.getParameter("page");
		int postCategory = Integer.parseInt(request.getParameter("postCategory"));
		System.out.println("postCategory" + postCategory);
		int totalCnt = pdao.getPostCnt();
		int page = 0;
		page = temp == null ? 1 : Integer.parseInt(temp);
		int pageSize = 10;
		int endRow = page*10;
		int startRow = endRow-9;
		int startPage = (page-1)/pageSize*pageSize+1;
		int endPage = startPage+pageSize-1;
		int totalPage = (totalCnt-1)/pageSize+1;
		int userIndex = 1;
		
		endPage = endPage > totalPage ? totalPage : endPage;

		request.setAttribute("totalPage", totalPage);
		request.setAttribute("nowPage", page);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("totalCnt", totalCnt);
		if(postCategory == 0) {
			request.setAttribute("postList", pdao.getPostListAll(startRow, endRow));
		} else {
			request.setAttribute("postList", pdao.getPostListSelect(startRow, endRow, postCategory));
		}

		forward.setRedirect(false);
		forward.setPath(request.getContextPath() + "/app/post/postAll.jsp");
		return forward;
	}
}
