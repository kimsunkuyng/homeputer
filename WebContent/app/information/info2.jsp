<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>   
<!DOCTYPE html>
<!--HAWSEONG_VIEW -->
<html>
<meta charset="UTF-8">
<head>
    <title>수원 화성</title>
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/header.jsp"/>
    <c:set var="loginStat" value="${sessionScope.loginStat}"/>
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
                    	<img class="img-fluid" src="/assets/img/information/infoHawseong/infoHawseong01.jpeg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/information/infoHawseong/infoHawseong04.jpeg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                	<div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/information/infoHawseong/infoHawseong09.jpeg" alt="">
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
                <h1 class="h1">대한민국 사적 제 3호<br> 수원 화성🏰</h1>
                <p>
                    <br>유네스코 세계문화 유산으로 지정된 <br>
                    	정조의 이상이 담겨있는 수원 화성입니다 <br>
				</p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoHawseong/infoHawseong05.jpg" class="rounded-circle img-fluid border">
                <h5 class="text-center mt-3 mb-3">거중기🏗</h5>
                <p class="text-center">다산 정약용의 발명품! <br> 화성 건축의 지대한 영향을 끼쳤다  </p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoHawseong/infoHawseong10.jpg" class="rounded-circle img-fluid border">
                <h2 class="h5 text-center mt-3 mb-3">봉돈🔥</h2>
                <p class="text-center">화성의 대표적인 군사시설 <br> 평상시 남쪽 첫 번째 화두(火竇: 횃불구멍)에서 횃불이나 연기를 올려 용인 석성산과 흥천대 봉화로 신호를 보낸다 </p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoHawseong/infoHawseong11.jpg" class="rounded-circle img-fluid border">
                <h2 class="h5 text-center mt-3 mb-3">유네스코 세계문화유산🌏</h2>
                <p class="text-center">한국전쟁으로 소실된 화성을 화성성역의괘에 있는 기록으로 복원을 해서 <br> 세계문화유산으로 인정을 받았다</p>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->


    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1"><br>수원 화성<br>다양하게 즐기기</h1>
                    <p>
                        <br>가벼운 삭책부터 즐거운 역사공부까지 <br> 다양한 문화재와 야경까지 즐겨보세요<br>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <img src="/assets/img/information/infoHawseong/infoHawseong02.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="h2 text-decoration-none text-dark">안내도</p>
                            <p class="card-text">
                                <br>수원 화성의 안내도입니다 
                                <br>수원 화성과 주변 지역의 볼거리를 찾아보세요
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <img src="/assets/img/information/infoHawseong/infoHawseong08.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="h2 text-decoration-none text-dark">정조正祖</p>
                            <p class="card-text">
                                <br>정조의 이상인 담긴 꿈의 도시 화성입니다 
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <img src="/assets/img/information/infoHawseong/infoHawseong07.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="h2 text-decoration-none text-dark">화성성역의괘</p>
                            <p class="card-text">
                                <br>화성 건축의 모든 기록이 남겨져있습니다
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
    		<p>관광지명: 수원화성 </p>
    		<p>전화번호: <a href='tel:031-290-3600'>031-290-3600</a></p>
    		<p>홈페이지 주소 : <a href = "https://www.suwon.go.kr/web/visitsuwon/hs01/hs01-01/pages.do">https://www.suwon.go.kr/web/visitsuwon/hs01/hs01-01/pages.do </a></p>
    		<p>주소: 경기 수원시 장안구 영화동 320-2</p>
			<c:choose>
				<c:when test="${loginStat == 1}">
					<a class="btn btn-success btn-lg px-3"href="/Choice/ChoiceAdd.no?informationid=2">찜하기</a>
				</c:when>
				<c:otherwise>
					<p></p>
				</c:otherwise>
			</c:choose>
    	</div>
    	<!-- 지도 넣기 -->
    	<div class="col-5">
    		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6349.081791647068!2d127.00881667703285!3d37.28231255593471!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b5cca0fa82ebb%3A0x1326e46ba3ed1641!2z7IiY7JuQ7ZmU7ISx!5e0!3m2!1sko!2skr!4v1646988431239!5m2!1sko!2skr" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
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