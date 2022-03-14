package com.travel.app.post;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.app.post.dao.PostDAO;
import com.travel.app.post.dao.PostDTO;

public class PostEditOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		PostDAO pdao = new PostDAO();
		PostDTO pdto = new PostDTO();
		
		String postTitle = request.getParameter("postTitle");
		String postContent = request.getParameter("postContent");
		String postCategory = request.getParameter("postCategory");
		
		pdto.setPostTitle(postTitle);
		pdto.setPostContent(postContent);
		pdto.setUserIndex(String.valueOf(session.getAttribute("user_index")));
		pdto.setPostCategory(postCategory);
		forward.setRedirect(true);
		System.out.println(pdto.getPostCategory());
		System.out.println(pdto.getUserIndex());
		
		pdao.insertPost(pdto);
		forward.setPath(request.getContextPath() + "/post/post.do?page=1");
//		try {
//		} catch (Exception e) {
//			//얼럿처리
//			forward.setPath(request.getContextPath() + "/post/postEdit.do");
//
//		}

		return forward;
	}
}
