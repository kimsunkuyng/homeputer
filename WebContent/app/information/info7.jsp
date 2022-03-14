<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>   
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
    <title>휴애리 자연생활공원</title>
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
                    	<img class="img-fluid" src="/assets/img/information/infoHueree/infoHueree01.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/information/infoHueree/infoHueree02.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                	<div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/information/infoHueree/infoHueree03.jpg" alt="">
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
                <h2 class="h2">자연 생활 체험 공원 <br></h2><h1 class="h1">휴애리💐</h1> 
                <p>
                    <br>활작 핀 꽃들과 다양한 체험관이 당신을 기다리고 있어요 <br>
                   	 벚꽃축제🌺 , 감귤체험, 곤충테마관까지🦗<br>
                   	 달마다 새로운 휴애리로 놀러오세요 !
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoHueree/infoHueree04.jpg" class="rounded-circle img-fluid border">
                <h5 class="text-center mt-3 mb-3">다양한 체험 🤸</h5>
                <p class="text-center">자연과 어울릴 수 있는 체험이 당신을 기다리고 있어요  !<br> 직접 딴 감귤🍊로 청도 만들고 동물들에게 먹이를 주며 자연과 하나되는 싱그러운 경험을 해보세요🌱  </p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoHueree/infoHueree05.jpg" class="rounded-circle img-fluid border">
                <h2 class="h5 text-center mt-3 mb-3">인생샷 포토존 📸</h2>
                <p class="text-center">인스타 인생샷을 위한 다양한 포토존들이 준비되어있어요~<br> 시즌마다 바뀌는 꽃들 속에 풍덩 빠져봐요 </p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoHueree/infoHueree06.jpg" class="rounded-circle img-fluid border">
                <h2 class="h5 text-center mt-3 mb-3">시즌별 축제와 공연 🎪</h2>
                <p class="text-center">시즌별 바뀌는 축제와 공연들🌸 ! <br> 수국 축제, 벚꽃 축제, 거위공연 🦢, 흑돼지 공연 등 다양한 축제화 공연을 즐겨보세요 ! </p>
            </div>
        </div>
       
    </section>
    <!-- End Categories of The Month -->


    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1"><br>휴애리 <br>다양하게 즐기기</h1>
                    <p>
                        <br>다양한 체험을 할 수 있는 휴애리! <br> 휴애리에서만 즐길 수 있는 싱그러운 체험들을 하루 빨리 체험해보세요!<br>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                            <img src="/assets/img/information/infoHueree/infoHueree07.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">수국 축제</h2>
                            <p class="card-text">
                                <br>3월 25일부터 5월 31일까지 진행하는 수국축제
                                <br>예쁜 수국들을 볼 수 있는 기회 놓치지 마세요!
                                <br>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                            <img src="/assets/img/information/infoHueree/infoHueree08.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">동물교감체험</h2>
                            <p class="card-text">
                                <br>동물을 좋아시는 분이라면 주목! <br> 흑돼지, 토끼, 제주마, 송아지, 염소 등 다양한 동물들에게 직접 먹이를 주며 가까이서 관찰할 수 있는 체험을 해보세요!
                                
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                            <img src="/assets/img/information/infoHueree/infoHueree09.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">동물쇼</h2>
                            <p class="card-text">
                                <br>흑돼지 쇼와 거위쇼 궁금하지 않으세요? <br> 지금 휴애리에서 만나보실 수 있습니다!
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
    		<p>관광지명: 휴애리 자연생활공원 </p>
    		<p>전화번호: <a href='tel: 064-732-2114'> 064-732-2114</a></p>
    		<p>홈페이지 주소 : <a href = "www.hueree.com/">www.hueree.com </a></p>
    		<p>주소: 제주특별자치도 서귀포시 남원읍 신례동로 256</p>
    		<c:choose>
				<c:when test="${loginStat == 1}">
					<a class="btn btn-success btn-lg px-3"href="/Choice/ChoiceAdd.no?informationid=7">찜하기</a>
				</c:when>
				<c:otherwise>
					<p></p>
				</c:otherwise>
			</c:choose>
    	</div>
    	<!-- 지도 넣기 -->
    	<div class="col-5">
    		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3334.3847106766193!2d126.63160511494895!3d33.30875648081479!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350daa99baa39eb5%3A0xa514f1b70f3094a6!2z7Zy07JWg66asIOyekOyXsOyDne2ZnOqzteybkA!5e0!3m2!1sko!2skr!4v1647167944336!5m2!1sko!2skr" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
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