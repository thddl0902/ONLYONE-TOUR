<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../resources/css/adminCss/content.css">
<style type="text/css">

	.member_list{
		position: absolute;
		left: 55%;
		top: 60%;
		transform:translate(-50%,-50%);
		text-align: center;
		padding: 10px;
	}
	
	.member_paging{
		display:flex;
		justify-content: center;
		align-items: center;
		position: absolute;
		left: 55%;
		top: 90%;
		transform:translate(-50%,-50%);
	}
	
	.member_paging a{
		margin-left: 10px;
		text-decoration: none;
		color: white;
		background: #1895A3;
		border-radius: 3px;
		padding: 9px;
		
	}
	
	.member_list button{
		background: none;
		border: 1px solid gray;
		padding: 5px;
		border-radius: 3px;
		cursor: pointer;
	}
	
	.first_tr{
		background: #839ACC;
	}
	
	.table_main td{
		border-bottom: 1px solid black;
	}
	
	.total_member{
		margin-bottom: 40px;
		padding: 20px;
		background: #EBE9F3;
		border-radius: 5px;
		color: #807C7C;
		font-weight: bold;
		font-size: 25px;
	}
	
</style>
</head>
<body>
	<%@include file="adminInclude/admin_top.jsp" %>
	<%@include file="adminInclude/admin_aside.jsp" %>
	
	<div id="content_box">
			
		<div class="member_list">
				<c:set var="list" value="${List}"/>
				<c:set var="paging" value="${Paging}"/>
				<c:set var="total" value="${total}"/>
				
				<div class="total_member">
					<span>온리원투어 전체 가입자수는 ${total}명 입니다</span>
				</div>
				
				<table cellspacing="0" cellpadding="15" width="1000" class="table_main">
				<tr class="first_tr">
					<th>아이디</th> <th>이름</th>
					<th>성별</th> <th>이메일</th> <th>가입일</th>
					<th>회원탈퇴</th>
				</tr>
				
				
				<c:if test="${!empty list}">
					<c:forEach items="${list }" var="u">
						<tr class="second_tr">
							<td>${u.member_id }</td>
							<td>${u.member_name }</td>
							<td>${u.member_gender }</td>
							<td>${u.member_email }</td>
							<td>${u.member_reg.substring(0,10) }</td>
						
							<td><button type="button" 
								onclick="if(confirm('정말로 삭제하시겠습니까?')){
									location.href='member_delete.do?id=${u.member_id}&page=${paging.getPage()}'
								}else{return;}"><i class="fa-solid fa-trash-can fa-lg"></i></button>
							</td>
						
						</tr>
					</c:forEach>
				</c:if>
				
				<c:if test="${empty list }">
					<tr> 
						<td colspan="5" align="center">
							<h3>전체 게시물 목록이 없습니다......</h3>
						</td>
					</tr>
				</c:if>			
				
			</table>
		</div>
			
			<br>
			
			<!-- 페이징 처리 부분 -->
			<div class="member_paging">
				<c:if test="${paging.getPage() > paging.getBlock()}">
					<a href="admin_memberlist.do?page=1">처음으로</a>
					<a href="admin_memberlist.do?page=${paging.getStartBlock() - 1}">◀</a>
				</c:if>
				
				<c:forEach begin="${paging.getStartBlock() }"
					end="${paging.getEndBlock() }" var="i">
					
					<c:if test="${i == paging.getPage() }">
						<b><a href="admin_memberlist.do?page=${i}">${i}</a></b>
					</c:if>
					
					<c:if test="${i != paging.getPage() }">
						<a href="admin_memberlist.do?page=${i}">${i}</a>
					</c:if>
				</c:forEach>
				
				<c:if test="${paging.getEndBlock() < paging.getAllPage()}">
					<a href="admin_memberlist.do?page=${paging.getEndBlock() + 1}">▶</a>
					<a href="admin_memberlist.do?page=${paging.getAllPage()}">마지막으로</a>
				</c:if>
			</div>
			
		
	</div>
</body>
</html>