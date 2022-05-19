<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link href="./assets/css/menu.css" rel="stylesheet">
<style type="text/css">
#main{
	margin: 0 auto;
	width: 800px;
	height: 100%;
}

#noticeWriteForm{
	margin: 0 auto;
	margin-top: 100px;
	padding: 10px;
	height: 500px;
	width: 500px;
	background-color: #AD9AEE;
}

#noticeWriteForm input{
	margin: 0;
	padding: 0;
	line-height: 30px; /*위아래 중앙정렬 높이만큼 줌 */
	width: 100%;
	height: 30px;
	margin-bottom: 5px;
	box-sizing: border-box;
	padding: 5px;
}

#noticeWriteForm textarea{
	margin: 0;
	padding: 5px;
	width: 100%;
	height: 350px;
	margin-bottom: 5px;
	box-sizing: border-box;
}
#noticeWriteForm button{
	text-align: center;
}
</style>
</head>
<body>
	<%@include file="./menu.jsp"%>
	<div id="main">
		<h1>공지사항 쓰기</h1>
		<div id = "noticeWriteForm">
			<form action="./noticeWrite" method="post" enctype="multipart/form-data">
				<input type="text" name="title" required="required">
				<textarea name="content"></textarea>
				<input type="file" name="file">
				<button type="submit"  class="btn btn-info">공지등록</button>
			</form>
		</div>
	</div>

</body>
</html>