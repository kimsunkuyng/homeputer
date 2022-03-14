package com.travel.app.post.dao;

import java.util.Date;

public class PostDTO {

	String postId;
	String postTitle;
	String postContent;
	Date postDate;
	String postAvailable;
	String postCategory;
	String userIndex;
	String user_name;
	
	public String getPostId() {
		return postId;
	}
	public void setPostId(String postId) {
		this.postId = postId;
	}
	public String getPostTitle() {
		return postTitle;
	}
	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	public Date getPostDate() {
		return postDate;
	}
	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}
	public String getPostAvailable() {
		return postAvailable;
	}
	public void setPostAvailable(String postAvailable) {
		this.postAvailable = postAvailable;
	}
	public String getPostCategory() {
		return postCategory;
	}
	public void setPostCategory(String postCategory) {
		this.postCategory = postCategory;
	}
	public String getUserIndex() {
		return userIndex;
	}
	public void setUserIndex(String userIndex) {
		this.userIndex = userIndex;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
}
