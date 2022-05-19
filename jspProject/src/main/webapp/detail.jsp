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

<script type="text/javascript">
function like(){
//	let b_no = ${detail.b_no};
//	location.href="./like?b_no="+b_no;	
	location.href="./like?b_no=${detail.b_no }";
}


function cup(num){
   if (confirm("해당 글을 수정하시겠습니까?")) {
      //alert(num + "번 글을 수정합니다");
      location.href="./cup?b_no=${detail.b_no }&c_no=" + num;
   }
}

function cdel(num){
   if (confirm("해당 글을 삭제하시겠습니까?")) {
      //alert(num + "번 글을 삭제합니다");
      location.href="./cdel?b_no=${detail.b_no }&c_no=" + num;
      
   }
}
</script>

<c:if test="${sessionScope.m_id eq detail.m_id }">
<script type="text/javascript">
	

	$(document).ready(function(){ //문서가 다 읽혀지면 이거 실행..
		var b_no = ${detail.b_no };
		$("#up").click(function(){ //up 이미지 클릭시 실행
			if(confirm("해당글 수정?")){
				location.replace("./update?b_no="+b_no);
			}
		});
	
		$("#del").click(function(){
			if(confirm("해당글 삭제?")){
				var b_no2 = $("#b_no").text(); //b_no가져오는 두번쨰방법 35번줄 처번쨰방법.
			//	alert(b_no2 + "번 글 삭제");
				location.replace("./delete?b_no="+b_no2);
			}	
		});
	});
</script>
</c:if>
</head>
<body>
	<%@include file="./menu.jsp"%>
	<div id="main">
	<h1>본문</h1>
		<table border="1">
			<tr>
				<th>번호</th>
				<td>
					<div id="b_no">${detail.b_no }</div>
					<c:if test="${sessionScope.m_id eq detail.m_id }">
						<img id="up" src="./assets/img/update.png" title="수정" width="20px" height="20px" >
						<img id="del" src="./assets/img/delete.png" title="삭제" width="20px" height="20px">
					</c:if>
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${detail.b_title }</td>
			</tr>
			<tr>
				<th>글쓴이</th>
				<td>${detail.m_name }</td>
			</tr>
			<tr>
				<th>본문</th>
				<td>${detail.b_content }</td>
			</tr>
			<tr>
				<th>날짜</th>
				<td>${detail.b_date }</td>
			</tr>
			<tr>
				<th>좋아요</th>
				<td><img src = "./assets/img/like.png" width="30px" height="30px" onclick="like()">${detail.b_like }</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${detail.b_count }</td>
			</tr>
		</table>
		<div id = "comment">
			<form action="./commentWrite" method="post">
			<textarea name="comment"></textarea>
			<button type="submit">댓글쓰기</button>
			<input type="hidden" name="b_no" value="${detail.b_no }">
			</form>
		</div>		

		<c:forEach items="${list }" var="c" >
		<div id = "comment_row">
			<div id = "comment_head">
				<div id = "comment_id">
				<input type="hidden" id="c_no" name="c_no" value="${c.c_no }">
				${c.c_no} | ${c.m_no } | ${c.m_id } | ${c.m_name } 
				
				<c:if test="${sessionScope.m_id eq c.m_id }">
				<img src="./assets/img/update.png" title="수정" width="15px" height="15px" onclick="cup(${c.c_no})">
				<img src="./assets/img/delete.png" title="삭제" width="15px" height="15px" onclick="cdel(${c.c_no})">
				</c:if>
				
				</div>
				<div id = "comment_date">${c.c_date }</div>
			</div>
				<div id = "comment_body">${c.c_content }</div>
		</div>
		</c:forEach>
		
	<button onclick="location.href='./board'">Board</button>
		
	</div>
</body>
</html>



