<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시로이네코 - 게시판</title>
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


<style type="text/css">
#recom-main {
	margin: 0 auto;
	height: 450px;
	width: 1200px;
}

#row {
	width: 1200px;
}



</style>


</head>
<body>
<jsp:include page="./header.jsp"/>

<!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="./index.jsp"><i class="fa fa-home" style="align-content: "></i> Home</a>
                       	 <span>Board</span>
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
    <section class="product-page spad" style="padding-top: 0; padding-bottom: 0;">
        <div class="container" style="width: 100%;">
            <div class="row">
                <div class="col-lg-8">
                    <div class="product__page__content">
                        <div class="product__page__title" style="width: 1100px; border-bottom: 2px solid rgba(255, 255, 255, 0.2);">
                            <div class="row">
                                
                                    <div class="section-title">
                                        <h4>Board</h4>		
                                    </div>
                             </div>
                     	</div>
                     </div>
                 </div>
            </div>
        </div>
	</section>

<section class="product-page spad">	
	<div class = container>
		<div id="recom-board">
			<table class="table table-striped">

				<tr style="text-align: center;">
					<th id="th1" style="color: white;">번호</th>
					<th id="th2" style="color: white;">제목</th>
					<th id="th3" style="color: white;">글쓴이</th>
					<th id="th4" style="color: white;">날짜</th>
					<th id="th5" style="color: white;">조회수</th>
					<th id="th5" style="color: white;">좋아요</th>
				</tr>
				<c:forEach items="${list }" var="i">
					<tr style="text-align: center;">
						<td id="td1" style="color: white;">${i.b_no }</td>
						<td id="td2" style="color: white;"><a href="./boardDetail?b_no=${i.b_no }">${i.b_title }</a></td>
						<td id="td3" style="color: white;">${i.u_nickname }</td>
						<td id="td4" style="color: white;">${i.b_date }</td>
						<td id="td5" style="color: white;">${i.b_count }</td>
						<td id="td5" style="color: white;">${i.b_like }</td>
					</tr>
				</c:forEach>
			</table>
			<button type="button" onclick="location.href='./boardwrite'" style="margin-right : 0 auto; font-size: 11px; color: #ffffff;font-weight: 700;letter-spacing: 2px;text-transform: uppercase;background: #e53637; border: none; padding: 10px 15px; border-radius: 2px;"><i class="fa fa-location-arrow">Write</i></button>
		</div>
	</div>
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
		
</body>
</html>