<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>   
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
    <title>조천 스위스 마을</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="../..assets/img/favicon.ico">

    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/templatemo.css">
    <link rel="stylesheet" href="/assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/assets/css/fontawesome.min.css">
</head>

<jsp:include page="/header.jsp"/>
<c:set var="loginStat" value="${sessionScope.loginStat}"/>
<body>
    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>
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
                    	<img class="img-fluid" src="/assets/img/information/infoJochenswiss/infoJochenswiss01.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/information/infoJochenswiss/infoJochenswiss02.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                	<div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/information/infoJochenswiss/infoJochenswiss03.jpg" alt="">
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
    <!-- 상세정보 창으로 이동 -->
    <a class="row text-center h1" style="text-decoration:none;color:gray" href="#detail">
    	<i class="fas fa-chevron-down"></i>
    </a>


    <!-- Start Categories of The Month -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h2 class="h2">제주도에서 이국적인 분위기를 느낄 수 있는 곳<br></h2><h1 class="h1">조천 스위스 마을 🌂</h1> 
                <p>
                    <br>'동행'이라는 주제로 일군, 자연 그대로를 나타내는 색이 있는 공간이자,<br>
            	풍경이 있는 건축 단지 조천 스위스 마을에 오신걸 환영합니다!   
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoJochenswiss/infoJochenswiss04.jpg" class="rounded-circle img-fluid border">
                <h5 class="text-center mt-3 mb-3">이국적인 건물 🏰</h5>
                <p class="text-center">제주도에서 느낄 수 있는 이국적인 분위기! <br> 빨강, 노랑으로 이루어진 건물들과 시계탑이 있는 르카르노 광장의 조화</p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoJochenswiss/infoJochenswiss05.jpg" class="rounded-circle img-fluid border">
                <h2 class="h5 text-center mt-3 mb-3">예쁜 소품샵들 💎</h2>
                <p class="text-center">조천 스위스 마을만의 예쁜 기념품들과 소품들!<br>아기자기한 소품들이 보는 것만으로도 당신을 힐링 시켜줄거에요</p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoJochenswiss/infoJochenswiss06.jpg" class="rounded-circle img-fluid border">
                <h2 class="h5 text-center mt-3 mb-3">아기자기한 카페들 ☕</h2>
                <p class="text-center">구경하다가 허기가 질 때, <br>들어가면 후회하지 않을 카페들이 주르륵! </p>
            </div>
        </div>
       
    </section>
    <!-- End Categories of The Month -->


    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1"><br>조천 스위스 마을 <br>다양하게 즐기기</h1>
                    <p>
                        <br>알록달록 아기자기 조천 스위스 마을! <br> 더 즐길 수 있는 방법은 없을까요?<br>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                            <img src="/assets/img/information/infoJochenswiss/infoJochenswiss07.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">객실 이용 가능</h2>
                            <p class="card-text">
                                <br> 구경하다가 지칠 때 언제든 쉴 수 있도록
                                <br>객실 이용 가능하게 되어 있답니다 🛌
                                <br> 
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <img src="/assets/img/information/infoJochenswiss/infoJochenswiss08.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">감성 가득 벽화</h2>
                            <p class="card-text">
                                <br> 걷다가 숨어있는 그림을 찾는 재미! 🎨 <br> 한번 찾아보실래요?
                                
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                            <img src="/assets/img/information/infoJochenswiss/infoJochenswiss09.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">다양한 주변 관광지</h2>
                            <p class="card-text">
                                <br>주변에 관광지가 많아서 여행하기 딱 좋은 루트! <br> 그 중에서도 에코랜드는 꼭 들리시길 바랍니다!
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Featured Product -->
    
    <!-- 상세정보 -->
    <section id="detail" class="row p-5">
        <div class="row p-5 text-center">
    		<h1> 상세정보  </h1>
    	</div>
    	<div class="col-2">
    	</div>
    	<!-- 관광지 소개 -->
    	<div class="col-5">
    		<p>관광지명: 조천 스위스 마을 </p>
    		<p>전화번호: <a href='tel: 064-744-6060'> 064-744-6060</a></p>
    		<p>홈페이지 주소 : <a href = "www.jejuswiss.com/">www.jejuswiss.com</a></p>
    		<p>주소: 제주특별자치도 제주시 조천읍 함와로 566-27</p>
   			<c:choose>
				<c:when test="${loginStat == 1}">
					<a class="btn btn-success btn-lg px-3"href="/Choice/ChoiceAdd.no?informationid=8">찜하기</a>
				</c:when>
				<c:otherwise>
					<p></p>
				</c:otherwise>
			</c:choose>
    	</div>
    	<!-- 지도 넣기 -->
    	<div class="col-5">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3327.2744304668977!2d126.67456721515643!3d33.49423648076145!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350d1c8af8223def%3A0x2413c8d4aa85f221!2z7KCc7KO87KGw7LKcIOyKpOychOyKpOuniOydhA!5e0!3m2!1sko!2skr!4v1647186362496!5m2!1sko!2skr" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>		
		</div>
    </section>

    <jsp:include page="/footer.jsp"/>
    
    <!-- Start Script -->
    <script src="../../assets/js/jquery-1.11.0.min.js"></script>
    <script src="../../assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="../../assets/js/bootstrap.bundle.min.js"></script>
    <script src="../../assets/js/templatemo.js"></script>
    <script src="../../assets/js/custom.js"></script>
    <!-- End Script -->
</body>

</html>