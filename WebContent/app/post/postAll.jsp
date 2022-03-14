<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>행여나-게시글</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="apple-touch-icon" href="/assets/img/apple-icon.png">
	<link rel="shortcut icon" type="image/x-icon" href="/assets/img/favicon.ico">
	
	<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="/assets/css/templatemo.css">
	<link rel="stylesheet" href="/assets/css/custom.css">
	
	<!-- Load fonts style after rendering the layout styles -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
	<link rel="stylesheet" href="/assets/css/fontawesome.min.css">
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
</head>	
<body>
	<jsp:include page="/header.jsp"/>
	<c:set var="postList" value="${requestScope.postList }"/>
	<c:set var="totalCnt" value="${requestScope.totalCnt }"/>
	<c:set var="loginStat" value="${sessionScope.loginStat}"/>
	<div class="container py-5">
		<div class="row">
			<div class="col-lg-2">
				<a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/post/postAll.do?postCategory=0">모아보기</a>
				<a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/post/postReview.do?postCategory=1"> 여행후기</a>
				<a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/post/postFree.do?postCategory=2"> 자유게시판</a>
				<a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/post/postQna.do?postCategory=3"> Q&A</a>
			</div>
			<div class="col-lg-10">
			<h3>모아보기</h3>
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd;">
					<thead style="background-color: #28A745; color: #ffffff;">
						<tr>
							<td width="10%">글번호</td>
							<td width="50%">제목</td>
							<td width="10%">직성자</td>
							<td width="30%">작성일</td>
						</tr>
					</thead>
					<c:choose>
						<c:when test="${postList != null and fn:length(postList) > 0 }">
							<c:forEach var="post" items="${postList }">
								<tr>
									<td>
										${post.postId }
									</td>
									<td >
										<a href="${pageContext.request.contextPath }/post/post_view.do?postId=${post.postId}">${post.postTitle }</a>
									</td0>
									<td>
										${post.user_name }
									</td>
									<td>
										<fmt:formatDate value="${post.postDate}" pattern="yyyy-MM-dd HH:mm"/>
									</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4">게시글이 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</table>
			</div>
			<div class="row">
				<div class="text-center">
					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-center">
							<c:if test="${nowPage > 1 }">
								<li class="page-item">
									<a class="page-link" href="${pageContext.request.contextPath }/post/post.do?page=${nowPage-1}" aria-label="Previous">
		                            	<span aria-hidden="true">&laquo;</span>
		                            </a>
	                            </li>
							</c:if>
							<c:forEach var="i" begin="${startPage }" end="${endPage }">
								<c:choose>
									<c:when test="${i == nowPage }">
										<li class="page-item ">${i }</li>
									</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/post/post.do?page=${i }">${i }</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
							<c:if test="${nowPage <totalPage }">
								<li class="page-item">
									<a class="page-link" href="${pageContext.request.contextPath }/post/post.do?page=${nowPage+1}" aria-label="Next">
	                                	<span aria-hidden="true">&raquo;</span>
	                            	</a>
	                        	</li>
							</c:if>
						</ul>
					</nav>
				</div>
				<div class="text-end mt-2">
					<c:choose>
						<c:when test="${loginStat == 1 }">
                        	<a type="button" class="btn btn-success btn-lg px-3" href="${pageContext.request.contextPath }/post/postEdit.do">글쓰기</a>
<%-- 							<a class="btn btn-success btn-lg px-3" href="${pageContext.request.contextPath }/post/postEdit.do">글쓰기</a> --%>
						</c:when>
						<c:otherwise>
							<p></p>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/footer.jsp"/>
	    <!-- Start Script -->
    <script src="/assets/js/jquery-1.11.0.min.js"></script>
    <script src="/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <script src="/assets/js/templatemo.js"></script>
    <script src="/assets/js/custom.js"></script>
    <!-- End Script -->
</body>
</html>