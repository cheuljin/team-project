<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>공지사항 보기</title>

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
	margin:0 auto;
	width: 50%;
	min-height: 300px;
	border-collapse: collapse;
	background-color: white;
	
}
th{
	border: 3px solid black;
	width: 100px;
}
tr{
	min-height: 50px;
	width: 1200px;
	border-bottom: 1px white solid;
}
button{
	
}
</style>

<c:if test="${noticedetail.u_eamil eq sessionScope.u_eamil}">
<script type="text/javascript">
$(document).ready(function(){
	var an_no = ${noticedetail.an_no};
	$("#nup").click(function(){
		if(conform("수정 하시겠습니까?"))
			location.replace("./nup?an_no="+an_no);
		}
	
	$("#ndel").click(function(){
		if(confirm("삭제 하시겠습니까?")){
			var an_no2 = $("#an_no").text();
			location.replace("./ndel?an_no="+an_no2);
		}
	});
});
</script>
</c:if>
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


	<!-- 공지사항 디테일 -->
	<div id="anirecom-container">
		<div id="recom-main">
			<img alt="" src="./img/notice-detail.jpg">
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
	
	<!--  공지사항 게시글 -->

	<div id="main">
		<table border="1">
			<tr>
				<th colspan="2" style="text-align:left; height: 80px;">공지사항 :  ${detail.an_title }</th>
			</tr>
			<tr>
				<th style="text-align: center; height: 40px;">작성자 : 관리자</th>
				<th style="text-align: center;"> ${detail.an_date }</th>
			</tr>
			<tr style="height: 800px;">
				<td colspan="3" style="text-align: center">${detail.an_content }<br></td>
			</tr>		
			<tr>			
				<td>
					<div id="an_no">${noticedetail.an_no }</div>
						<c:if test="${noticedetail.u_email eq sessionScope.u_email }">
							<img id="nup" alt="" src="img/cristal.png" title="수정">
							<img id="ndel" alt="" src="img/remove.png" title="삭제">
						</c:if>
				</td>			
			</tr>
			
		</table>
	</div>
	
	<button onclick="location.href='./notice'">목록</button>
	<br>
	<br>
	<br>


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

















