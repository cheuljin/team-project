<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호</title>
<meta charset="UTF-8">
<meta name="description" content="Anime Template">
<meta name="keywords" content="Anime, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>시로이네코 - 비밀번호 찾기</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">
	<link rel="shortcut icon" href="./favicon.ico"/>

<!-- Css Styles -->
<!--     <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/plyr.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">-->
<link rel="stylesheet" type="text/css" href="css/login.css">

<style type="text/css">
#main {
	margin: 0 auto;
	height: 100%;
	width: 900px;
}
</style>
</head>
<body>

	<jsp:include page="./header.jsp" />

	<!-- 비밀번호 찾기 -->
	<section calss="login- form">
		<h1 style="color: white; text-align: center">비밀번호를 잊으셨나요?</h1>
		<div class="wrapper fadeInDown">
			<div id="formContent">
				<!-- Tabs Titles -->

				<!-- remind password Form -->	
				<div class="fadeIn first">
				<img src="data:image/jpeg;base64,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"
						style="width: 400px; margin-top: 25px;">
					<div style="font-size: 30px; text-align: center; color: #fff">${dto.password }</div>
				<input type="button" class="fadeIn fourth" onclick="location.href='./login.jsp'" value="login">		
						
				</div>

				<form action="./findpassword" method="post">
				</form>

	</section>


	<jsp:include page="footer.jsp" />

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/player.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	<script src="jquery-3.4.1.js"></script>
</body>
</html>