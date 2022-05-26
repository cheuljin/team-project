<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ani-Notice-detail</title>
<meta charset="UTF-8">
<meta name="description" content="Anime Template">
<meta name="keywords" content="Anime, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>씹덕 | 양산소</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/plyr.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">

<style type="text/css">
#recom-main {
	color:white;
	margin: 0 auto;
	height: 450px;
	width: 1200px;
}

#row {
	width: 1200px;
}
table{
	width: 100%;
	min-height: 300px;
	border-collapse: collapse;
}
th{
	width: 100px;
}
tr{
	min-height: 50px;
	width: 1200px;
	border-bottom: 1px white solid;
}
</style>
</head>
<body>
	<jsp:include page="./header.jsp" />

	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__links">
						<a href="./index.jsp"><i class="fa fa-home"
							style="align-content:"></i> Home</a> <span>Notice</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End  -->


	<!-- 애니 추천 게시판 테이블-->
	<div id="anirecom-container">
		<div id="recom-main">
			<img alt="" src="./img/recom-main.png">
		</div>
	</div>

	<!-- Product Section Begin -->
	<section class="product-page spad"
		style="padding-top: 0; height: 100px;">
		<div class="container" style="width: 100%;">
			<div class="row">
				<div class="col-lg-8">
					<div class="product__page__content">
						<div class="product__page__title" style="width: 100%;">
							<div class="row">

								<div class="section-title">
									<h4>Notice</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--  게시글 -->

	<div id="main">
		<table border="1">
			<tr>
				<th colspan="2" style="text-align: center;">글 제목 :	${detail.b_title }</th>
			</tr>
			<tr>
				<th style="text-align: center; height: 20px;">작성자 : ${detail.u_nickname }</th>
				<th style="text-align: center;">${detail.b_date }</th>
			</tr>
			
			<tr>
				<td colspan="2" style="text-align: left">첨부파일 :</td>
			</tr>

			<tr style="height: 800px;">
				<td colspan="3" style="text-align: center">${detail.b_content }<br></td>
			</tr>
			
		</table>
	</div>


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

</body>
</html>

















