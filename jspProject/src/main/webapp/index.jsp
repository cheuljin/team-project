<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="./assets/css/menu.css" rel="stylesheet">
<style type="text/css">
#main{
	margin: 0 auto;
	width: 800px;
	height: 100%;
}
#loginform{
	margin:0 auto;
	margin-top:150px;
	height: 450px;
	width: 300px;
	background-color: gray;
	padding: 10px;
}
#loginform input, button{
	margin: 0;
	padding: 0;
	background-color: white;
	border: 0;
	height: 40px;
	width: 100%;
}
#loginform input{
	margin-bottom: 10px;
}
#loginform input:hover, button:hover{
	background-color: green;
}
</style>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<%@include file="./menu.jsp"%>
	<div id="main">
		<div id="loginform">
			<form action="./login" method="post">
				<img alt="" src="./assets/img/dolche.jpg" height="300px;">
				<input type="text" name="id" required="required">
				<input type="password" name="pw" required="required">
				<button>LOGIN</button>
			</form>
			<a href="join.jsp">회원가입</a>
		</div>
		<%-- 에러 ${error } --%>
		<br>
		<%-- 파람.에러 ${param.error } --%>
		<!-- http://localhost:8080/jspProject/index.jsp?error=1024 -->
		<%
		String error = request.getParameter("error");
		if (error != null) {
		%>
		<script type="text/javascript">
			alert("아이디와 비밀번호가 일치하지 않습니다.\n다시 입력해주세요.");
		</script>
		<%
		}
		%>
	</div>
</body>
</html>



