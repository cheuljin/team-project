<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시로이네코 - 피규어샵</title>
<meta charset="UTF-8">
<meta name="description" content="Anime Template">
<meta name="keywords" content="Anime, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">


<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">
	<link rel="shortcut icon" href="./favicon.ico"/>

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/plyr.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=913fc15a7c45f3c536f4330bfbbafbaf&libraries=services"></script>

<style type="text/css">
#acea {
	margin: 0 auto;
	height: 300px;
	width: 1200px;
}


#row {
	width: 1200px;
}

img {
	max-width: 100%;
	margin: auto;
}
#sh1{
	width: 33%;
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
							style="align-content:"></i> Home</a> <span>figure shop</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End  -->


	<!-- 피규어샵 테이블-->
	<div id="anirecom-container">
		<div id="acea">
			<img alt="" src="./img/mas.gif" style="display: block; margin: auto;">
		</div>
	</div>

	<!-- Product Section Begin -->
	<section class="product-page spad" style="padding-top: 0; height: 100px;">
		<div class="container" style="width: 100%;">
			<div class="row">
				<div class="col-lg-8">
					<div class="product__page__content">
						<div class="product__page__title" style="width: 100%;">
							<div class="row">

								<div class="section-title">
									<h4>FIGURE SHOP</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	
	<div id="shop" style="margin: 0 auto; width: 1200px; height: 500px;">
		<hr align="center" style="border: solid 1px yellow; width: 50%;">
		<table style="margin: 0 auto;">
			<tr>
				<th id="sh1" style="color: white;"><a href=""><img src="/img/like.png"></a></th>
				<th id="sh1" style="color: white;">www.naver.com</th>
				<th id="sh1" style="color: white;">
				<div id="map" style="width: 300px; height: 200px;"></div>
			<script>
				var container = document.getElementById('map');
				var options = {
					center : new kakao.maps.LatLng(37.485623, 126.812174),
					level : 3
				};
				var map = new kakao.maps.Map(container, options);
			</script>
				</th>
			</tr>
		</table>	
		<hr align="center" style="border: solid 1px yellow; width: 50%;">
		
	</div>
	

	


	<!-- <div id="map" style="width: 300px; height: 200px;"></div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=913fc15a7c45f3c536f4330bfbbafbaf"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center : new kakao.maps.LatLng(33.450701, 126.570667),
			level : 3
		};

		var map = new kakao.maps.Map(container, options);
	</script> -->
	
	<!-- <script type="text/javascript">
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
</script> -->
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
