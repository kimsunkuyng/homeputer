package com.travel.app.post;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.post.dao.PostDAO;
import com.travel.app.post.dao.PostDTO;

public class PostUpdateOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		PostDAO pdao = new PostDAO();
		PostDTO pdto = new PostDTO();
		
		int postId = Integer.parseInt(request.getParameter("postId"));
		String postTitle = request.getParameter("postTitle");
		String postContent = request.getParameter("postContent");
		System.out.println(postId);
		
		pdto.setPostId(postId);
		pdto.setPostTitle(postTitle);
		pdto.setPostContent(postContent);
		
		forward.setRedirect(true);
		
		if(pdao.updatePost(pdto)) {
			forward.setPath(request.getContextPath() + "/post/post.do?page=1");
		} else {
			forward.setPath(request.getContextPath() + "/post/postEdit.do");
		}
		
		return forward;
	}
}
