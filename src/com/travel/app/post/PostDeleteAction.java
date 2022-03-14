package com.travel.app.post;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.post.dao.PostDAO;
import com.travel.app.post.dao.PostDTO;

public class PostDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward  forward = new ActionForward();
		PostDAO pdao = new PostDAO();
		PostDTO pdto = new PostDTO();
		
		String postId = request.getParameter("postId");
		System.out.println(postId);
		
		pdto.setPostAvailable("1");
		
		forward.setRedirect(true);
		if(pdao.deletePost(postId)) {
			forward.setPath(request.getContextPath() + "/post/post.do?page=1");
		} else {
			forward.setPath(request.getContextPath() + "/post/postUpdate.do?page=" + postId);
		}
		return forward;
	}

}
