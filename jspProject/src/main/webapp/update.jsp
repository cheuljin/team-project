<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글수정</title>
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<link href="./assets/css/menu.css" rel="stylesheet">
<style type="text/css">
#main{
	margin: 0 auto;
	width: 800px;
	height: 100%;
}
#main input, #main textarea, #btn{
	border: 0;
	background-color: #c1c1c1;
	margin-bottom: 10px;
	width: 100%;
	width: 100%;
	padding: 10px;
	box-sizing: border-box;
}
#main input {
	height: 50px;
}
#main textarea {
	height: 500px;
}
#btn {
	height: 50px;
	width: 150px;
	background-color: skyblue;
}
</style>

<script type="text/javascript">
function check() {
	var title = document.getElementById("title");
	if(title.value.length <5){
		alert("제목은 5글자 이상");
		title.focus();
		return false;
	}
	
	var textarea = document.getElementByID("summernote");
	if(textarea.value.length < 15){
		alert("내용은 10글자 이상");
		textarea.focus();
		return false;
	}
	return false;
}
</script>

</head>
<body>
	<%@include file="./menu.jsp"%>
	<div id="main">
		<h1>글수정</h1>
		<form action="./update" method="post" onsubmit="return check()">
			<input type="text" id="title" name="title" value="${dto.b_title }">
			<textarea id="summernote" name="content" >${dto.b_content }</textarea>
			<input type="hidden" name="b_no" value="${dto.b_no }">
			<button id="btn" type="submit">수정</button>
		</form>
	</div>
<script type="text/javascript">
	//$(선택자).명령();
	$(document).ready(function() {
	  $('#summernote').summernote({
		  height : 400
	  });
	});
</script>
</body>
</html>



