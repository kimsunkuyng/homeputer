<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<!DOCTYPE html>
<!-- EVERLAND_VIEW -->
<html>
<meta charset="UTF-8">
<head>
    <title>자라섬재즈페스티벌</title>
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
                    	<img class="img-fluid" src="/assets/img/information/infoJarafestival/infoJarafestival01.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/information/infoJarafestival/infoJarafestival02.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                	<div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/information/infoJarafestival/infoJarafestival03.jpg" alt="">
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
                <h1 class="h1">THE JJF <br> 자라섬재즈페스티벌🎺</h1>
                <p>
                    <br>자라가 바라보는 섬🐢
                    <br>세계 지도 위에 한국의 재즈를 그리다 
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoJarafestival/infoJarafestival04.jpg" class="rounded-circle img-fluid border">
                <h5 class="text-center mt-3 mb-3">ARTIST</h5>
                <p class="text-center">국내 유명 가수들 총집합🎙 <br>좋아하는 가수의 공연을 볼 수 있어요</p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoJarafestival/infoJarafestival05.jpg" class="rounded-circle img-fluid border">
                <h2 class="h5 text-center mt-3 mb-3">다양한 프로그램들🎬</h2>
                <p class="text-center">가수의 공연 이외에도 <br>재밌는 활동들이 준비되어 있답니다</p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoJarafestival/infoJarafestival06.jpg" class="rounded-circle img-fluid border">
                <h2 class="h5 text-center mt-3 mb-3">아름다운 환경숲🍃</h2>
                <p class="text-center">아름다운 호수를 둘러싸고 있는<br>소나무, 단풍나무, 왕벚나무 숲을 구경해보아요</p>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->


    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1"><br>자라섬재즈페스티벌<br>꿀팁</h1>
                    <p>
                        <br>공연만으론 만족할 수 없죠<br>페스티벌을 제대로 즐겨볼까요?<br>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <img src="/assets/img/information/infoJarafestival/infoJarafestival07.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">간식거리</h2>
                            <p class="card-text">
                                <br>먹는것에 진심인 
                                <br>한국인들의 축제인 만큼
                                <br>심심함을 채워주는 간식거리가 잔뜩!
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <img src="/assets/img/information/infoJarafestival/infoJarafestival08.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">무드있는 야경</h2>
                            <p class="card-text">
                                <br>밤하늘과 어우러지는 무대조명,
                                <br>사람들의 함성소리가 심장을 두근거리게 해요
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <img src="/assets/img/information/infoJarafestival/infoJarafestival09.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">캠핑</h2>
                            <p class="card-text">
                                <br>공간의 제약없이
                                <br>캠핑도 가능하답니다!
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
    		<p>관광지명: 자라섬재즈페스벌 </p>
    		<p>전화번호: <a href='tel:031-320-5000'>031-320-5000</a></p>
    		<p>홈페이지 주소 : <a href = "http://www.jarasumjazz.com/the18th/home">www.jarasumjazz.com</a></p>
    		<p>주소: 경기도 가평군 가평읍 달전리</p>
    		<c:choose>
				<c:when test="${loginStat == 1}">
					<a class="btn btn-success btn-lg px-3"href="/Choice/ChoiceAdd.no?informationid=3">찜하기</a>
				</c:when>
				<c:otherwise>
					<p></p>
				</c:otherwise>
			</c:choose>
    	</div>
    	<!-- 지도 넣기 -->
    	<div class="col-5">
    		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12606.98103900064!2d127.51987604002973!3d37.819435376019904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356327cb34157d7b%3A0xdae3784ae41cbe46!2z7J6Q65287ISsIOyerOymiOq0keyepSBKYXJhc2VvbSBKYXp6IEZlc3RpdmFs!5e0!3m2!1sko!2skr!4v1649390792154!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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