<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:set var="top" value="${pageContext.request.contextPath}"/>
<script src="https://kit.fontawesome.com/27a0dd965d.js" crossorigin="anonymous"></script>

</head>
<body>
		
	<c:set var="dto" value="${Member}"/>
	
	<div class="container">
	 <div id="top">
		<c:if test="${dto == null}">
			<ul>
				<li><a href="<%=request.getContextPath()%>/login.do">로그인</a></li>
				<li><a href="#">회원가입</a></li>
				<li><a href="#">고객센터</a></li>
			</ul>
		</c:if>
		
		<c:if test="${dto != null}">
			<ul>
				<li><a href="#">로그아웃</a></li>
				<li><a href="#">고객센터</a></li>
			</ul>
		</c:if>
		
		
	 </div>	
	 
	 <div id="middle">
	 	<div class="middle_img">
	 		<a href="#">
	 		<img src="resources/image/Free_Sample_By_Wix.jpg"></a>
	 	</div>
	 	
	 	<!-- 검색 -->
	 	<div id="top_search">
	 		<form method="post"
	 			action="<%=request.getContextPath() %>/검색">
	 			<input name="keyword">
	 			<button><i class="fa-solid fa-magnifying-glass"></i></button>
	 		</form>
	 	</div>
	 	
	 	<div>
	 		<ul>
	 			<li><a href="#"><i class="fa-solid fa-user">마이메뉴</i></a></li>
	 			<li><a href="#"><i class="fa-solid fa-clipboard-check">예약내역</i></a></li>
	 			<li><a href="#"><i class="fa-solid fa-plane">찜</i></a></li>
	 		</ul>
	 	</div>
	 	<div>
	 		<nav>
	 			<select>
	 				<option>전체메뉴</option>
	 				<option>여행</option>
	 				<option>항공</option>
	 				<option>호텔/펜션</option>
	 			</select>
	 			<a href="<%=request.getContextPath() %>/travel_list.do">여행</a>
	 			<a href="#">항공</a>
	 			<a href="<%=request.getContextPath() %>/hotel_list.do">호텔/펜션</a>
	 		</nav>
	 	</div>
	 </div>
	</div>

</body>
</html>