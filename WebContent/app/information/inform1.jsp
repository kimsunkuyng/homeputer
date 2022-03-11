<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
    <title>에버랜드</title>
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
                    	<img class="img-fluid" src="/assets/img/informationEverland/information_everland2.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/informationEverland/information_everland1.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                	<div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/informationEverland/information_everland4.jpg" alt="">
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
                <h1 class="h1">환상의 나라 <br> EVERLAND🎡</h1>
                <p>
                    <br>재밌는 놀이기구와 다양한 체험관이 준비되어 있어요 <br>
                    할로윈 , 크리스마스 , 봄축제까지🌺 <br>
                    날마다 새로운 놀이동산으로 놀러오세요!
                </p>
            </div>
        </div>
        <div>
        	<a href="/Choice/ChoiceAdd.no?informationid=1">찜하기</a>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="../../assets/img/informationEverland/information_everland6.jpg" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">다양한 놀이기구🎠</h5>
                <p class="text-center"><a>화려하게 빛나는 회전목마와 스릴 넘치는 놀이기구들! <br> 자유이용권으로 이 모든 것을 공짜로 즐겨요  </a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="../../assets/img/informationEverland/information_everland7.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">인생샷 포토존📸</h2>
                <p class="text-center"><a>인스타 인생샷을 위한 다양한 포토존들~ <br> 시즌마다 바뀌는 컨셉들 속에 빠져봐요</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="../../assets/img/informationEverland/information_everland8.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">시즌별 축제🎪</h2>
                <p class="text-center"><a>다양한 퍼레이드와 함께하는 각종 축제들! <br> 공주님과 왕자님을 만날 준비가 되었나요?</a></p>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->


    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1"><br>에버랜드 <br>다양하게 즐기기</h1>
                    <p>
                        <br>수 많은 혜택과 함께하는 에버랜드! <br> 다양한 이용권과 함께 즐겨보아요<br>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="../../assets/img/informationEverland/information_everland9.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <br>
                                </li>
                                <li class="text-muted text-right">별도 결제 요망</li>
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">자유이용권</a>
                            <p class="card-text">
                                <br>오전, 오후 구분 없이 하루종일 이용이 가능한 티켓입니다 
                                <br>📢 개장 시간부터 이용하면 폐장시간까지 하루종일 에버랜드에 있을 수 있어요!
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="../../assets/img/informationEverland/information_everland10.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <br>
                                </li>
                                <li class="text-muted text-right">별도 결제 요망</li>
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">연간 이용권</a>
                            <p class="card-text">
                                <br>에버랜드를 자주 이용하시는 분이라면 주목! <br> 무려 한번의 결제로 365일 이용이 가능한 이용권이랍니다 
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="../../assets/img/informationEverland/information_everland11.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <br>
                                </li>
                                <li class="text-muted text-right">별도 결제 요망</li>
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">캐리비안베이</a>
                            <p class="card-text">
                                <br>여름엔 수영이 빠질 수 없죠! <br> 다양한 워터풀장과 워터슬라이드까지 알차게 놀 수 있어요
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
    		<p>관광지명: 에버랜드 </p>
    		<p>전화번호: <a href='tel:031-320-5000'>031-320-5000</a></p>
    		<p>홈페이지 주소 : <a href = "https://www.everland.com/">www.everland.com </a></p>
    		<p>주소: 경기 용인시 처인구 포곡읍 에버랜드로 199</p>
    	</div>
    	<!-- 지도 넣기 -->
    	<div class="col-5">
    		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d35913.02517970028!2d127.194931500579!3d37.28819016340244!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b5403ce34d773%3A0x1fa18ab619238098!2z7JeQ67KE656c65Oc!5e0!3m2!1sko!2skr!4v1641283138335!5m2!1sko!2skr" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
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