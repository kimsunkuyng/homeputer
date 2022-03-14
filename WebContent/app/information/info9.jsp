<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
    <title>카페공작소</title>
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
                    	<img class="img-fluid" src="/assets/img/information/infoCafegongzak/infoCafegongzak01.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/information/infoCafegongzak/infoCafegongzak02.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                	<div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/information/infoCafegongzak/infoCafegongzak03.jpg" alt="">
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
                <h2 class="h2">제주도 감성을 느낄 수 있는 곳<br></h2><h1 class="h1">카페공작소☕</h1> 
                <p>
                    <br>바다를 보며 카페 공작소와 함께 <br>
                   	 제주도의 감성을 깊이 느껴보세요!<br>
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoCafegongzak/infoCafegongzak04.jpg" class="rounded-circle img-fluid border">
                <h5 class="text-center mt-3 mb-3">다양한 메뉴 📋</h5>
                <p class="text-center">다양한 메뉴들이 준비되어 있어요!<br> 🧁음료, 케이크, 쿠기 등 취향에 맞게 골라보세요!  </p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoCafegongzak/infoCafegongzak05.jpg" class="rounded-circle img-fluid border">
                <h2 class="h5 text-center mt-3 mb-3">확 트인 뷰 👀 </h2>
                <p class="text-center">커피향과 어우러진 바다의 뷰<br> 거기에 더해진 바다의 시원함까지🌊! </p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoCafegongzak/infoCafegongzak06.jpg" class="rounded-circle img-fluid border">
                <h2 class="h5 text-center mt-3 mb-3">제주도의 감성 🪔</h2>
                <p class="text-center">엽서, 캔들 등 다양한 기념품과  <br>인테리어로 제주도의 감성을 느낄 수 있어요!</p>
            </div>
        </div>
       
    </section>
    <!-- End Categories of The Month -->


    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1"><br>카페공작소 <br>다양하게 즐기기</h1>
                    <p>
                        <br>바다의 싱그러움, 제주도의 감성, 커피가 주는 여유로움 <br> 이 모든 걸 카페 공작소와 함께!<br>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                            <img src="/assets/img/information/infoCafegongzak/infoCafegongzak07.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">맛 보장 메뉴</h2>
                            <p class="card-text">
                                <br>맛 보장! 퀄리티 보장!
                                <br>마음 놓고 먹고 싶은거 시키기! 
                                <br>ps.당근 케이크는 꼭 드셔보세요 
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                            <img src="/assets/img/information/infoCafegongzak/infoCafegongzak08.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">감성가득 기념품</h2>
                            <p class="card-text">
                                <br>여행오면 기념품 필수! <br> 카페공작소에서만 구매할 수 있는 기념품 겟해가세요!
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                            <img src="/assets/img/information/infoCafegongzak/infoCafegongzak09.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">각양각색 포토존</h2>
                            <p class="card-text">
                                <br>창문외에 엽서로도, 소품으로도 <br> 다양하고 특이한 인생샷들 건져가세요!
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
    		<p>관광지명: 카페공장소 </p>
    		<p>전화번호: <a href='tel: 070-1234-0752'> 070-1234-0752</a></p>
    		<p>홈페이지 주소 : <a href = "https://www.naver.com/">www.gongjakso.com </a></p>
    		<p>주소: 제주특별자치도 제주시 구좌읍 해맞이해안로 1446</p>
   			<c:choose>
				<c:when test="${loginStat == 1}">
					<a class="btn btn-success btn-lg px-3"href="/Choice/ChoiceAdd.no?informationid=9">찜하기</a>
				</c:when>
				<c:otherwise>
					<p></p>
				</c:otherwise>
			</c:choose>
    	</div>
    	<!-- 지도 넣기 -->
    	<div class="col-5">
    	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3326.1046459260924!2d126.8577419149551!3d33.52466478075272!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350d16718261dbff%3A0x8e45593c2e8c1b35!2z7Lm07Y6Y6rO17J6R7IaM!5e0!3m2!1sko!2skr!4v1647244225915!5m2!1sko!2skr" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
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