<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
	<!-- Header -->
		
    <nav class="navbar navbar-expand-lg navbar-light shadow">
    
    	<c:set var="loginStat" value="${sessionScope.loginStat}"/>
    
        <div class="container d-flex justify-content-between align-items-center">
			<!--  로고 클릭시 index 이동 -->
            <a class="navbar-brand text-success logo h1 align-self-center" href="/">
               	행여나
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                        	<!-- location 페이지 이동 -->
                            <a class="nav-link" href="/app/category/location.jsp">지역별 여행</a>
                        </li>
                        <li class="nav-item">
                        	<!-- post 페이지 이동 -->
                            <a class="nav-link" href="/post/postAll.do?postCategory=0">게시글</a>
                        </li>
                        <li class="nav-item">
                        	<!-- post 페이지 이동 -->
                            <a class="nav-link" href="/Choice/ChoiceList.no">찜목록</a>
                        </li>
                         <li class="nav-item">
                       	<!-- 내 여행 스케줄 만들기-->
<%-- 							<a href="${pageContext.request.contextPath }/testChoice/testInformation.jsp">찜하기</a> --%>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <!--div class="d-lg-none flex-sm-fill mt-3 mb-4 col-12 pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div-->
   					<c:choose>
                    <c:when test="${loginStat == 1 }">
                    <a class ="nav-icon position-relative text-decoration-none" href="/app/userinfo/mypage_user.jsp">
                    		<i class="fa fa-fw fa-user text-dark mr-3"></i>
                    		마이페이지
                    	</a>
                    	<a class ="nav-icon position-relative text-decoration-none" href="/user/UserLogOut.us">
                    		<i class="fa fa-fw fa-sign-out-alt text-dark mr-3"></i>
                    		로그아웃
                    	</a>
                    </c:when>
                    <c:otherwise>
                    	<a class="nav-icon position-relative text-decoration-none" href="/app/userinfo/login.jsp">
                        	<i class="fa fa-fw fa-user text-dark mr-3"></i>
                    	</a>
                    </c:otherwise>
                    </c:choose>

                    
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->
