<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<!-- header -->
	<jsp:include page="/header.jsp"/>
	
	<!-- post.jsp에서 선택한 해당 게시물 선언 -->
	<c:set var="post" value="${requestScope.post }"/>
    <!-- Start Contact -->
    <div class="container py-5">
    	<form class="col-md-9 m-auto" method="post" role="form" name="postForm" action="${pageContext.request.contextPath }/post/postEditOk.do">
        	<div class="row py-5">
	    		<div class="dropdown">
					<select class="btn btn-success btn-sm dropdown-toggle" name="postCategory" id="postCategory">
						<option value="1">여행후기</option>
						<option value="2">자유게시판</option>
						<option value="3">Q&A</option>
					</select>
	    		</div>
           		<!-- 게시글 제목 입력 -->
               	<div class="mb-3">
                	<input type="text" class="form-control mt-1" id="subject" name="postTitle" value="${post.postTitle}" placeholder="제목을 입력하세요">
               	</div>
               	<!-- 게시글 내용 출력 -->
               	<div class="mb-3">
                   <textarea class="form-control mt-1" id="message" name="postContent" rows="20" placeholder="내용을 입력하세요">${post.postContent }</textarea>
               	</div>
               	<div class="row">
                   <div class="col text-end mt-2">
                       <input type="submit" class="btn btn-success btn-lg px-3" value="글쓰기">
                       <a type="button" class="btn btn-success btn-lg px-3" href="/post/post.do">목록</a>
                   </div>
               	</div>
      		</div>
    	</form>
    </div>
    <jsp:include page="/footer.jsp"/>
</body>
</html>