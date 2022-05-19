<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
<link href="./assets/css/menu.css" rel="stylesheet">
<link href="./assets/css/comment.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">

#main {
   margin: 0 auto;
   width: 800px;
   height: 100%;
}
table{
   width: 100%;
   min-height: 300px;
   border-collapse:collapse;
}
th{
   width: 100px;
   background-color: teal;
}
tr{
   min-height: 50px;
   border-bottom: 1px red solid;
}

</style>

</head>
<body>
	<%@include file="./menu.jsp"%>
	<div id="main">
	<h1>본문</h1>
		<table border="1">
			<tr>
				<th>번호</th>
				<td>
					<div id="n_no">${detail.n_no }</div>
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${detail.n_title }</td>
			</tr>
			<tr>
				<th>글쓴이</th>
				<td>${detail.m_name }</td>
			</tr>
			<tr>
				<th>본문</th>
				<td>${detail.n_content }
				<c:if test="${detail.n_filename ne null }">
					<img src="./upload/${detail.n_filename }" width="300px" height="300px">
				</c:if>
				</td>
				
			</tr>
			<tr>
				<th>날짜</th>
				<td>${detail.n_date }</td>
			</tr>
			
		</table>
		
	<button onclick="location.href='./notice'">공지사항 리스트</button>
		
	</div>
</body>
</html>



