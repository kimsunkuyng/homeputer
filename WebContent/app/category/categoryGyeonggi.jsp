<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<head>
<title>Zay Shop - About Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="/assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/templatemo.css">
    <link rel="stylesheet" href="/assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/assets/css/fontawesome.min.css">
    
    <style>
    	a {
    		text-decoration: none;
    	}
    </style>
</head>
<body>
	<jsp:include page="/header.jsp"/>
	<c:set var="caList1" value="${requestScope.caList1 }"/>
	<c:set var="caList2" value="${requestScope.caList2 }"/>
	<c:set var="caList3" value="${requestScope.caList3 }"/>
	<section class="bg-success py-5">
        <div class="container">
            <div class="row align-items-center py-5">
                <div class="col-md-8 text-white">
                    <h1>경기도</h1>
                </div>
	        </div>
        </div>
    </section>
	<!-- Start Section -->
    <div style="color: #59ab6e">
	    <section class="container py-5">
	        <div class="row text-center pt-5 pb-3">
	            <div class="col-lg-6 m-auto">
	                <h1 class="h1">관광지</h1>
	            </div>
	        </div>
	        <div class="row">
	        	<c:forEach var="information" items="${caList1 }">
			        <div class="col-md-6 col-lg-3 pb-5">
		        		<a href="/app/information/info${information.informationid }.jsp">
			                <div class="h-100 py-5 services-icon-wap shadow">
				                <div class="${information.informationImg }">
				                	<img width="100%" height="70%" src="${information.informationImg }">
				                    <h2 class="h5 mt-4 text-center">${information.informationname }</h2>
				                </div>
				            </div>    
		        		</a>
		            </div>
	        	</c:forEach>
	        </div>
	    </section>
    </div>
    <!-- End Section -->
    <!-- Start Section -->
    <div style="background-color: #deffd7; color: #46a55e;">
	    <section class="container py-5">
	        <div class="row text-center pt-5 pb-3">
	            <div class="col-lg-6 m-auto">
	                <h1 class="h1">축제</h1>
	            </div>
	        </div>
	        <div class="row">
	        	<c:forEach var="information" items="${caList2 }">
			        <div class="col-md-6 col-lg-3 pb-5">
		        		<a href="/app/information/info1.jsp">
			                <div class="h-100 py-5 services-icon-wap shadow">
				                <div class="${information.informationImg }">
				                	<img width="100%" height="70%" src="${information.informationImg }">
				                    <h2 class="h5 mt-4 text-center">${information.informationname }</h2>
				                </div>
				            </div>    
		        		</a>
		            </div>
	        	</c:forEach>
	        </div>
	    </section>
    </div>
    <!-- End Section -->
    <!-- Start Section -->
    <div style="color: #59ab6e">
	    <section class="container py-5">
	        <div class="row text-center pt-5 pb-3">
	            <div class="col-lg-6 m-auto">
	                <h1 class="h1">맛집</h1>
	            </div>
	        </div>
	        <div class="row">
	            <c:forEach var="information" items="${caList3 }">
			        <div class="col-md-6 col-lg-3 pb-5">
		        		<a href="/app/information/info1.jsp">
			                <div class="h-100 py-5 services-icon-wap shadow">
				                <div class="${information.informationImg }">
				                	<img width="100%" height="70%" src="${information.informationImg }">
				                    <h2 class="h5 mt-4 text-center">${information.informationname }</h2>
				                </div>
				            </div>    
		        		</a>
		            </div>
	        	</c:forEach>
	        </div>
	    </section>
    </div>
    <!-- End Section -->
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