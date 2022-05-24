<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        <!-- 애니 추천 게시판 테이블-->
		<div id="anirecom-container">
			<div id="recom-main">
				<img alt="" src="./img/recom-main.png">
			
			</div>
		
			<div id="recom-board" style="margin: 0 auto; margin-top: 30px; width: 1200px; height: 500px;">
				<table class="table table-striped">
				
					<tr>
						<th id="th1">번호</th>
						<th id="th2">제목</th>
						<th id="th3">글쓴이</th>
						<th id="th4">날짜</th>
						<th id="th5">조회수</th>
					</tr>
					<c:forEach items="${list }" var="i">
					<tr>
						<td id="td1">${i.a_no }</td>
						<td id="td2"><a href="./aniDetail?a_no=${i.a_no }">${i.a_title }</a></td>
						<td id="td3">${i.u_nickname }</td>
						<td id="td4">${i.a_date }</td>
						<td id="td5">${i.a_count }</td>
					</tr>
					</c:forEach>
			</table>
		
		</div></div>
</body>
</html>