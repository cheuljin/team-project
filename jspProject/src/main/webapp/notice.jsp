<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="./assets/css/menu.css" rel="stylesheet">
<style type="text/css">
#main{
	margin: 0 auto;
	width: 800px;
	height: 100%;
}
table {
	width: 100%;
	min-height: 200px;
	border-collapse: collapse;
}
th{
	background-color: gray;
}
td{
	border-bottom: 1px solid red;
	text-align: center;
}
tr:hover{
	background-color: #c1c1c1;
}
#col1{
	width: 10%;
}
#col2{
	width: 20%;
}
#col3{
	width: 40%;
}
#tleft{
	text-align: left;
}

a:visited, a:link {
	color: gray;
	text-decoration: none;
}

small{
	color: red;
	font-weight: bold;
}
</style>
</head>
<body>
	<%@include file="./menu.jsp"%>
	<div id="main">
		<!-- 이제 JSTL을 씁니다. -->
		<h1>Notice</h1>
		<table>
			<tr>
				<th id="col1">번호</th>
				<th id="col3">제목</th>
				<th id="col1">쓴사람</th>
				<th id="col2">쓴날짜</th>
			</tr>
			<c:forEach items="${list }" var="i">
			<tr>
				<td>${i.n_no }</td>
				<td id="tleft">
				
				<a href="./noticeDetail?n_no=${i.n_no }">
				<c:if test="${i.n_orifilename ne null }">
				<img src="./assets/img/upload.png" width="20px" height="20px">
				</c:if>
				${i.n_title  }</a></td>
				
				<td>${i.m_name }</td>
				<td>${i.n_date }</td>
			</tr>
			</c:forEach>
		</table>
		
		<c:if test="${sessionScope.m_id ne null }">
			<button onclick="location.href='./noticewrite.jsp'">공지사항쓰기</button>
		</c:if>
<!--			<c:choose>
			<c:when test="${sessionScope.m_id ne null }">
				<button onclick="location.href='./write'">글쓰기</button>
			</c:when>
			<c:otherwise>
				<button onclick="location.href='./index.jsp'">글을 쓰러면 로그인하세요</button>
			</c:otherwise>
		</c:choose>
		 -->
		<hr>
		
	</div>
</body>
</html>



