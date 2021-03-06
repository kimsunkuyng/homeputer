package com.travel.app.post;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.post.dao.PostDAO;

public class Post_viewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		PostDAO pdao = new PostDAO();
		
		String postId = request.getParameter("postId");
		
		request.setAttribute("post", pdao.getDetail(postId));
		forward.setRedirect(false);
		forward.setPath(request.getContextPath() + "/app/post/post_view.jsp");
		return forward;
	}
}
