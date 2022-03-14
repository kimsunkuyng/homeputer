<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>   
<!DOCTYPE html>
<!--Yeonnamdong_VIEW -->
<html>
<meta charset="UTF-8">
<head>
    <title>연남동 맛집투어</title>
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
                    	<img class="img-fluid" src="/assets/img/information/infoYeonnamdong/infoYeonnamdong01.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/information/infoYeonnamdong/infoYeonnamdong02.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                	<div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/information/infoYeonnamdong/infoYeonnamdong03.jpg" alt="">
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
                <h2>인스타 갬성 가득💗</h2>
                <h1 class="h1">연남동 맛집 거리</h1>
                <p>
                    <br>데이트 명소로 유명한 연남동!
                    <br>눈과 입이 모두 즐거운 
                    <br>다양한 맛집이 즐비해있어요
                    
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoYeonnamdong/infoYeonnamdong04.jpg" class="rounded-circle img-fluid border">
                <h5 class="text-center mt-3 mb-3">외관부터 완벽한 연남동 거리✨</h5>
                <p class="text-center">
                	밥 먹으러 왔다가 인생샷 건져가는<br>
                	일석이득의 공간!<br>
                	사진 찍는 줄이 더 많다는 소문까지 들린답니다..🎀
                </p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoYeonnamdong/infoYeonnamdong05.jpg" class="rounded-circle img-fluid border">
                <h2 class="h5 text-center mt-3 mb-3">카페 거리🧁</h2>
                <p class="text-center">
               		 식사 후 즐기는 예쁘고 달달한 간식이라면
               		 <br>싸운 커플도 화해시킬 수 있죠!
               		 <br>담백한 디저트까지 완비되어 있답니다🥐
                </p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoYeonnamdong/infoYeonnamdong06.jpg" class="rounded-circle img-fluid border">
                <h2 class="h5 text-center mt-3 mb-3">교통수단🚅</h2>
                <p class="text-center">
                	답답하고 오지 않는 버스는 그만!
                	<br>지하철로 금방 이동할 수 있는
                	<br>교통최적의 지역이랍니다👊
                </p>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->


    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h2>연남 맛집 거리의</h2>
                    <h1 class="h1">명예식당🏅</h1>
                    <p>
                        <br>수많은 맛집들중<br>가장 맛있는 맛집에 대해 알아보아요<br>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                            <img src="/assets/img/information/infoYeonnamdong/infoYeonnamdong07.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">영어롭다</h2>
                            <p class="card-text">
                                <br>신선한 연어회와
                                <br>해산물 파스타로 유명한 이곳!
                                <br>대기줄 전용 의자까지 마련되어 있는
                                <br>유명한 맛집이에요
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                            <img src="/assets/img/information/infoYeonnamdong/infoYeonnamdong08.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">연남귀향</h2>
                            <p class="card-text">
                                <br>감성돋는 건물 디자인,
                                <br>고급진 파스타의 조합이라니
                                <br>새인연을 만나기에도 좋겠죠?
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                            <img src="/assets/img/information/infoYeonnamdong/infoYeonnamdong09.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">대중곱창</h2>
                            <p class="card-text">
                                <br>고즈넉한 저녁밤과 잘 어울리는
                                <br>싱싱한 곱창과 소주 한 잔🍾
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
    		<p>관광지명: 연남동 맛집 거리 </p>
    		<p>전화번호: x
    		<p>홈페이지 주소 : x</p>
    		<p>주소: 서울특별시 마포구</p>
    		<c:choose>
				<c:when test="${loginStat == 1}">
					<a class="btn btn-success btn-lg px-3"href="/Choice/ChoiceAdd.no?informationid=6">찜하기</a>
				</c:when>
				<c:otherwise>
					<p></p>
				</c:otherwise>
			</c:choose>
    	</div>
    	<!-- 지도 넣기 -->
    	<div class="col-5">
    	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6325.357748862643!2d126.91781792742505!3d37.56262891919436!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c98e8a188c921%3A0x2867c048a51f364b!2z7ISc7Jq47Yq567OE7IucIOuniO2PrOq1rCDsl7Drgqjrj5k!5e0!3m2!1sko!2skr!4v1647156286940!5m2!1sko!2skr" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
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