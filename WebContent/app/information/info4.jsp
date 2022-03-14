<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>   
<!DOCTYPE html>
<!--GYEONGBOKGUNG_VIEW -->
<html>
<meta charset="UTF-8">
<head>
    <title>경복궁</title>
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
                    	<img class="img-fluid" src="/assets/img/information/infoGyeongbokgung/infoGyeongbokgung01.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/information/infoGyeongbokgung/infoGyeongbokgung02.jpg" alt="">
                	</div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                	<div class="row p-3 col-9 align-items-center m-auto">
                    	<img class="img-fluid" src="/assets/img/information/infoGyeongbokgung/infoGyeongbokgung03.jpg" alt="">
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
                <h2>역사와 아름다움이 섞여있는<br></h2>
                <h1 class="h1">경복궁으로 놀러오세요!<br></h1>
                <p>
                    <br>사계절의 미를 모두 담아, <br>
			                    여름🌞, 가을🍁, 겨울⛄, 봄💐 <br>
			                    상관없이 가치있는 관광지랍니다 <br>
			                   그렇기에 부담없이 즐기기에 안성맞춤이에요🌟
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoGyeongbokgung/infoGyeongbokgung04.jpg" class="rounded-circle img-fluid border">
                <h5 class="text-center mt-3 mb-3">
                	밤하늘에서 더욱<br>
                	 더 빛나는 경복궁🌝
                </h5>
                <p class="text-center">
                	이런 풍경에서라면 핸드폰 카메라로도 인생사진을 남길 수 있겠죠?
                	<br>자연풍경과 아름다운 야경이 함께라면 셀카도 빛날거에요!
                </p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoGyeongbokgung/infoGyeongbokgung05.jpg" class="rounded-circle img-fluid border">
                <h2 class="h5 text-center mt-3 mb-3">왕의 길 산책⛹️‍♂️</h2>
                <p class="text-center">
					일반인은 출입조차 불가했다는 왕의 길!
					<br>귀한 공간인 만큼 산책하는 맛이 나겠죠?
				</p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <img src="/assets/img/information/infoGyeongbokgung/infoGyeongbokgung06.jpg" class="rounded-circle img-fluid border">
                <h2 class="h5 text-center mt-3 mb-3">
             		가이드와 함께라면
             		<br>역사도 어렵지 않아👩‍🏫
                </h2>
                <p class="text-center">
                	역사적인 공간에서 눈요기만 한다면
                	<br>아쉬울거에요
                	<br>전문지식을 가진 가이드선생님과 경복궁의 다양한 이야기를 들어보아요!
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
                    <h1 class="h1"><br>경복궁 <br>알차게 놀아보기</h1>
                    <p>
                        <br>모르고 가면 손해에요!<br>아는 사람만 안다는 정보에 대해 알아볼까요?<br>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <img src="/assets/img/information/infoGyeongbokgung/infoGyeongbokgung07.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">한복 대여 서비스 </h2>
                            <p class="card-text">
                                <br>단아한 한복부터,
                                <br>화려한 한복까지 준비되어 있어요!
                                <br>성별 상관 없이 남/여성용 한복을
                                <br> 착용할 수 있답니다
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <img src="/assets/img/information/infoGyeongbokgung/infoGyeongbokgung08.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">맛있는 먹거리</h2>
                            <p class="card-text">
                                <br>전통가옥에 걸맞는 건강하고 고급진 한식들이 한상 가득🍽<br>눈과 입 전부 즐거운 맛집들이 즐비해 있답니다
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <img src="/assets/img/information/infoGyeongbokgung/infoGyeongbokgung09.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="h2 text-decoration-none text-dark">전통 체험</h2>
                            <p class="card-text">
                                <br>궁중음식 체험부터 전통놀이 체험까지, <br>타임머신 없이도 과거의 일부가 되는 경험을 할 수 있어요!
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
    		<p>관광지명: 경복궁 </p>
    		<p>전화번호: <a href='tel:0237003900'>02-3700-3900</a></p>
    		<p>홈페이지 주소 : <a href = "http://www.royalpalace.go.kr/">www.royalpalace.go.kr</a></p>
    		<p>주소: 서울특별시 종로구 사직로 161</p>
    		<c:choose>
				<c:when test="${loginStat == 1}">
					<a class="btn btn-success btn-lg px-3"href="/Choice/ChoiceAdd.no?informationid=4">찜하기</a>
				</c:when>
				<c:otherwise>
					<p></p>
				</c:otherwise>
			</c:choose>
    	</div>
    	<!-- 지도 넣기 -->
    	<div class="col-5">
    		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d50625.91528521424!2d127.00798235015063!3d37.52867539878819!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca2c74aeddea1%3A0x8b3046532cc715f6!2z6rK967O16raB!5e0!3m2!1sko!2skr!4v1646989034362!5m2!1sko!2skr" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
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