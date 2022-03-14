<%@page import="com.travel.app.Choice.dao.ChoiceDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>     
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="../../assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../../assets/css/templatemo.css">
<link rel="stylesheet" href="../../assets/css/custom.css">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="../../assets/css/fontawesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
   <jsp:include page="/header.jsp" />
	<c:set var="getchoice" value="${requestScope.getChoice }"/>
   <div class="jumbtron" style = "margin: 100px">
      <div class="container" style = "padding: 0px 40px 40px 40px; color : #28A745">
         <h2>나의 찜 목록</h2>
      </div>
   <div class="container">
      <div class="row">
      </div>
   </div>
   <div style="padding-top: 50px">
     	<form action="">
     		 <table class="table table-hover">
         <tr>
            <th>지역명</th>
            <th>카테고리명</th>
            <th>즐길거리</th>
            <th></th>
         </tr>
         <c:choose>
	         <c:when test="${fn:length(getchoice) > 0}">
		         <c:forEach var="choice" items="${getchoice}">
		         	<tr>
		         		<td>${choice.locationname}</td>
		         		<td>${choice.categoryname}</td>
		         		<td><a href="/app/information/info${choice.informationid}.jsp">${choice.informationname}</a></td>
               			<td align="right"><a href="/Choice/ChoiceDelete.no?choiceid=${choice.choiceid}" class="btn btn-danger">삭제하기</a></td>            
		         	</tr>
		         </c:forEach>
	         </c:when>
	         <c:otherwise>
	         	<tr>
	         		<td colspan="3">찜한 목록이 없습니다.</td>
	         	</tr>
	         </c:otherwise>
         </c:choose>
      </table>
     	</form>
      <a href="/" class="btn btn-secondary"> &laquo; 뒤로가기</a> 
   </div>
   <hr>
   </div>
   <jsp:include page="/footer.jsp" />
</body>
</html>