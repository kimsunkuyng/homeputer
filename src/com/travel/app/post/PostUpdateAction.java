package com.travel.app.post;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.post.dao.PostDAO;

public class PostUpdateAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		PostDAO pdao = new PostDAO();
		
		int postId = Integer.parseInt(request.getParameter("postId"));
		
		request.setAttribute("post", pdao.getDetail(postId));
		forward.setRedirect(false);
		forward.setPath(request.getContextPath() + "/app/post/postUpdate.jsp");
		return forward;
	}
}
