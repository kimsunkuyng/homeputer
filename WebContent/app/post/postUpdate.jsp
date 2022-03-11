<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>행여나-게시글</title>
    <link rel="apple-touch-icon" href="/assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="/assets/img/favicon.ico">

    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/templatemo.css">
    <link rel="stylesheet" href="/assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/assets/css/fontawesome.min.css">

    <!-- Load map styles -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A==" crossorigin="" />
</head>
<body>
	<jsp:include page="/header.jsp"/>
	
	<c:set var="post" value="${requestScope.post }"/>
	
	<div class="container py-5">
		<div class="row py-5">
			<form class="col-md-9 m-auto" action="${pageContext.request.contextPath }/post/postUpdateOk.do?postId=${post.postId}" method="post">
				<div class="mb-3">
					<input class="form-control mt-1" type="text" name="postTitle" value="${post.postTitle }"> 	
				</div>
				<div class="mb-3">
					<textarea class="form-control mt-1" rows="20" name="postContent">${post.postContent }</textarea>
				</div>
				<div class="row">
					<div class="col text-end mt-2">
						<button type="submit" class="btn btn-success btn-lg px-3" style="font-size: 18px">수정</button>
						<a class="btn btn-success btn-lg px-3" href="${pageContext.request.contextPath }/post/postDeleteOk.do?postId=${post.postId}">삭제</a>
					</div>
				</div>
			</form>	
		</div>
	</div>
    
    <jsp:include page="/footer.jsp"/>
</body>
</html>