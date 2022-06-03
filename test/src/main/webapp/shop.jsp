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
<link rel="shortcut icon" href="./favicon.ico" />

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

#sh1 {
	padding: 30px;
	width: 33%;	
}
#sh2{
	padding:30px;
	padding-bottom:0;
	width: 33%
	
}
tr{
	border-bottom: 1px solid white;
}
a:visited, a:link {
   color: white;
   text-decoration: none;
}

</style>
<script type="text/javascript">
	$(function() {

		$("image_file").on('change', function() {

			readURL(this);

		});

	});

	function readURL(input) {

		if (input.files && input.files[0]) {

			var reader = new FileReader();

			reader.onload = function(e) {

				$('#View').attr('src', e.target.result);

			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
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
				<c:if test="${sessionScope.u_email eq 'admin@a.com' }">
					<button type="button" onclick="location.href='./shopwrite'"
						style="position: absolute; left: 1800px; font-size: 11px; color: #ffffff; font-weight: 700; letter-spacing: 2px; text-transform: uppercase; background: #e53637; border: none; padding: 10px 15px; border-radius: 2px;">
						<i class="fa fa-location-arrow">Write</i>
					</button>
				</c:if>

	<!-- Product Section Begin -->
	<section class="product-page spad"
		style="padding-top: 0; padding-bottom:0; height: 50px;">
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
	
	<div id="shoptop" style="text-align: center;">
		<img alt="" src="./img/bandai.jpg" style="width: 50px; height: 50px;" >&nbsp;
		<img alt="" src="./img/banpresto.png" style="width: 100px; height: 50px;" >&nbsp;
		<img alt="" src="./img/flare.jpg" style="width: 100px; height: 50px;" >&nbsp;
		<img alt="" src="./img/hottoys.png" style="width: 100px; height: 50px;" >&nbsp;
		<img alt="" src="./img/union.png" style="width: 300px; height: 50px;" >&nbsp;
		<img alt="" src="./img/sega.png" style="width: 100px; height: 50px;" >&nbsp;	
		<img alt="" src="./img/kaiyodo.jpg" style="width: 150px; height: 50px;" >&nbsp;
		<img alt="" src="./img/kotobukiya.png" style="width: 150px; height: 50px;" >&nbsp;
		<img alt="" src="./img/alter2.png" style="width: 130px; height: 50px;" >&nbsp;
		<img alt="" src="./img/maxfac.jpg" style="width: 130px; height: 50px;" >&nbsp;
		<img alt="" src="./img/emontoys.png" style="width: 150px; height: 50px;" >&nbsp;
		<img alt="" src="./img/amiami.png" style="width: 180px; height: 50px;" >&nbsp;
		<img alt="" src="./img/hobbyjapan.jpg" style="width: 130px; height: 50px;" >&nbsp;
	</div>
	
	<section class="product-page spad" style="padding-top: 3;">
		<div class="container">

			<div id="shop" style="width: 1000px; height:100%;">

				<table style="margin: 0 auto;">
						<tr style="border: none; padding-bottom: 0;" >
							<th id="sh2" style="color:white;"></th>
							<th id="sh2" style="color:white;"></th>
							<th id="sh2" style="color:yellow; font-size: 30px;">↓오프라인 매장↓ <br> <a style="font-size: 15px; padding-top: 0; text-align: center;">&nbsp;주소를 클릭하면 지도가 보여집니다.</a></th>						
						</tr>
					<c:forEach items="${list }" var="i" varStatus="num">
						<tr>
							<th id="sh1" style="color: white;"><a href="http://${i.as_site }" target='_blank'><img src="./img/upload/${i.as_orifile }" style="width:300px; height: 100px"></a></th>
							<th id="sh1" style="color: white;"><a href="http://${i.as_site }" target='_blank'>${i.as_name }</a> <br> 
															   <a href="http://${i.as_site }" target='_blank'>${i.as_site }</a></th>
							<th id="sh1" style="color: white;"><a href="./mapdetail?as_no=${i.as_no }">${i.as_roadAddr }<br>${i.as_detailAddr }</a></th>
						</tr>
						
					</c:forEach>
				</table>


				<c:if test="${sessionScope.u_email eq 'admin@a.com' }">
					<button type="button" onclick="location.href='./shopwrite'"
						style="position: absolute; left: 1200px; font-size: 11px; color: #ffffff; font-weight: 700; letter-spacing: 2px; text-transform: uppercase; background: #e53637; border: none; padding: 10px 15px; border-radius: 2px;">
						<i class="fa fa-location-arrow">Write</i>
					</button>
				</c:if>
			</div>
		</div>

	</section>



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





<%-- <div id="${i.as_no }" style="width: 300px; height: 200px;">
						</div>
						${i.as_roadAddr }
						
						<script>
							var mapContainer = document.getElementById('${i.as_no }'), // 지도를 표시할 div 
							mapOption = {center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
							level : 3
							// 지도의 확대 레벨
							};

							// 지도를 생성합니다    
							var map = new kakao.maps.Map(mapContainer, mapOption);

							// 주소-좌표 변환 객체를 생성합니다
							var geocoder = new kakao.maps.services.Geocoder();
							
							var addr = '${i.as_roadAddr}';
							
							// 주소로 좌표를 검색합니다
							geocoder.addressSearch(addr, function(result,
									status) {

								// 정상적으로 검색이 완료됐으면 
								if (status === kakao.maps.services.Status.OK) {

								console.log(addr);
									var coords = new kakao.maps.LatLng(
											result[0].y, result[0].x);
									
									/* var message = 'latlng: new kakao.maps.LatLng(' + result[0].y + ', ';
									message += result[0].x + ')';
									
									var resultDiv = document.getElementById('clickLatlng'); 
									resultDiv.innerHTML = message; */
									
									console.log(result[0].y, result[0].x);
									// 결과값으로 받은 위치를 마커로 표시합니다
									var marker = new kakao.maps.Marker({
										map : map,
										position : coords
									});
									console.log(coords);
									// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
									map.setCenter(coords);
								}
							});
						</script> --%>