<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8"%>


<html>
<head>
	<c:set var="path" value="${pageContext.request.contextPath}"/>
	
	<title>온리원투어</title>
	<link rel="stylesheet" type="text/css" 
	href="${path}/resources/css/style.css">
	<script src="https://kit.fontawesome.com/27a0dd965d.js" crossorigin="anonymous"></script>

</head>
<body>
	
	<jsp:include page="include/top.jsp" />
	
	<div class="container">

	<a href="<%=request.getContextPath()%>/reserve.do?no=1">예약하기</a>
	</div>
	


<script type="text/javascript" src="${path}/resources/js/script.js"></script>
</body>
</html>
