<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>행여나 메인</title>
<style>
	
</style>
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
    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                	<div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/main/Everland.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/main/Haeundae.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                	<div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/main/GangwonDo.jpg" alt="">
                	</div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->
    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1" style="color: #69bb7e">인기순 여행지</h1>
                    <!-- !!!사진 크기 통일!!! -->
                    <!-- !!!좌우 슬라이드 버튼으로 넘기기!!!(보류) -->
                    <p>
                       	 지금 가장 인기있는 여행지로 떠나보세요 !
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="/assets/img/main/Everland.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <!-- 조회수 순으로 표시-->
                            <!-- DB information_name -->
                            <a href="informEverland.html" class="h2 text-decoration-none text-dark">에버랜드</a>
                            <p class="card-text">
                                	환상의 나라 에버랜드
                            </p>
                            <!-- DB information_views -->
                            <p class="text-muted">조회수 (9999)</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="/assets/img/main/Daegwallyeong.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <!-- 조회수 순으로 표시-->
                            <!-- DB information_name -->
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">대관령 양떼목장</a>
                            <p class="card-text">
                                 	 겨울에 가장 인기있는 여행지
                            </p>
                            <!-- DB information_views -->
                            <p class="text-muted">조회수 (8888)</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="/assets/img/main/SkiResort.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <!-- 조회수 순으로 표시-->
                            <!-- DB information_name -->
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">하이원 리조트</a>
                            <p class="card-text">
                                	국내 최대 규모의 스키장
                            </p>
                            <!-- DB information_views -->
                            <p class="text-muted">조회수 (7777)</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Featured Product -->
	<jsp:include page="footer.jsp"/>

    <!-- Start Script -->
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
    <!-- End Script -->
</body>
</html>