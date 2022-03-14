<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>행여나_지역별 여행</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="/assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/templatemo.css">
    <link rel="stylesheet" href="/assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/assets/css/fontawesome.min.css">
</head>
<body>
 
 	<jsp:include page="/header.jsp"/>
    <!-- Start Content -->
    <div class="container py-5">
        <div class="row">
            <div class="col-lg-9" style="margin: 0 auto;">
                <div class="row" style="text-align: center;">
                    <div class="col-md-4">
	                    <!-- 클릭시 location_seoul -->
	                    <!-- 클릭시 이벤트 지역별 영역 전부 들어가게 -->
                        <a href="/category/SeoulList.ca" class="h3 text-decoration-none">
	                        <div class="card mb-4 product-wap rounded-0">
	                            <div class="card rounded-0">
	                                <img class="card-img rounded-0 img-fluid" src="/assets/img/location/cSeoul.jpg">
	                            </div>
	                            <div class="card-body">
	                            	<div style="color: black;">서울특별시</div>
	                            </div>
	                        </div>
                        </a>
                    </div>
                    <div class="col-md-4">
		               <!-- 클릭시 location_gyeonggi 이동 -->
                       <a href="/category/GyeonggiList.ca" class="h3 text-decoration-none">
	                        <div class="card mb-4 product-wap rounded-0">
		                            <div class="card rounded-0">
		                                <img class="card-img rounded-0 img-fluid" src="/assets/img/location/cGyeonggido.jpg">
		                            </div>
		                            <div class="card-body">
			                            <div style="color: black;">경기도</div>
		                            </div>
	                        </div>
                    	</a>
                    </div>
                    <div class="col-md-4">
                      	<!-- 클릭시 location_ganawon 이동 -->
                    	<a href="category_ganawon.jsp" class="h3 text-decoration-none">
	                        <div class="card mb-4 product-wap rounded-0">
	                            <div class="card rounded-0">
	                                <img class="card-img rounded-0 img-fluid" src="/assets/img/location/cGangwondo.jpg">
	                            </div>
	                            <div class="card-body">
			                    	<div style="color: black;">강원도</div>
	                            </div>
	                        </div>
                        </a>
                    </div>
                    <div class="col-md-4">
	                    <!-- 클릭시 location_chungcheong 이동 -->
                        <a href="category_chungcheong.jsp" class="h3 text-decoration-none">
	                        <div class="card mb-4 product-wap rounded-0">
	                            <div class="card rounded-0">
	                                <img class="card-img rounded-0 img-fluid" src="/assets/img/location/cChungcheongdo.jpg">
	                            </div>
	                            <div class="card-body">
				                  	<div style="color: black;">충청도</div>
	                            </div>
	                        </div>
                        </a>
                    </div>
                    <div class="col-md-4">
	                    <!-- 클릭시 location_jeolla 이동 -->
                        <a href="category_jeolla.jsp" class="h3 text-decoration-none">
	                        <div class="card mb-4 product-wap rounded-0">
	                            <div class="card rounded-0">
	                                <img class="card-img rounded-0 img-fluid" src="/assets/img/location/cJeollado.jpg">
	                            </div>
	                            <div class="card-body">
					            	<div style="color: black;">전라도</div>
	                            </div>
	                        </div>
                        </a>
                    </div>
                    <div class="col-md-4">
                    	<!-- 클릭시 location_gyeongsang 이동 -->
                        <a href="category_gyeongsang.jsp" class="h3 text-decoration-none">
	                        <div class="card mb-4 product-wap rounded-0">
	                            <div class="card rounded-0">
	                                <img class="card-img rounded-0 img-fluid" src="/assets/img/location/cGyeongsangdo.jpg">
	                            </div>
	                            <div class="card-body">
						        	<div style="color: black;">경상도</div>
	                            </div>
	                        </div>
                        </a>
                    </div>
                    <div class="col-md-4">
                    	<!-- 클릭시 location_jeju 이동 -->
                        <a href="/category/JeollaList.ca" class="h3 text-decoration-none">
	                        <div class="card mb-4 product-wap rounded-0" style="border: 0px;">
	                        </div>
                        </a>
                    </div>
                    <div class="col-md-4">
                    	<!-- 클릭시 location_jeju 이동 -->
                        <a href="/category/JejuList.ca" class="h3 text-decoration-none">
	                        <div class="card mb-4 product-wap rounded-0">
	                            <div class="card rounded-0">
	                                <img class="card-img rounded-0 img-fluid" src="/assets/img/location/cJeju.jpg">
	                            </div>
 	                            <div class="card-body"> 
 							    	<div style="color: black;">제주도</div> 
	                            </div> 
	                        </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Content -->



    <jsp:include page="../../footer.jsp"/>

    <!-- Start Script -->
    <script src="/assets/js/jquery-1.11.0.min.js"></script>
    <script src="/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <script src="/assets/js/templatemo.js"></script>
    <script src="/assets/js/custom.js"></script>
    <!-- End Script -->
</body>
</html>