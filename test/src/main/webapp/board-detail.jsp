<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>씹덕양산소 - 게시판</title>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<title>게시글</title>
<style type="text/css">
#main {
	color: white;
	margin: 0 auto;
	width: 1000px;
	height: 100%;
}

#recom-main {
	margin: 0 auto;
	height: 450px;
	width: 1200px;
}

table {
	width: 100%;
	min-height: 300px;
	border-collapse: collapse;
}

th{
	
	width: 100px;
	
}

tr{
	min-height: 50px;
	width : 1200px;
	border-bottom: 1px white solid;
}
</style>

<c:if test="${detail.u_id eq sessionScope.u_email}">
<script type="text/javascript">
$(document).ready(function(){
	var b_no = ${detail.b_no };
	$("#up").click(function(){
		//alert(ckeck);
		if(confirm("수정하시겠습니까?")){
			location.replace("./update?b_no="+b_no);
		}
	});
	
	$("#del").click(function(){
		if(confirm("해당 글을 삭제하시겠습니까?")){
			var b_no2 = $("#b_no").text();
			//alert(b_no2 + "번글을 삭제합니다.");
			location.replace("./delete?b_no="+b_no2);
		}
	});
	
	
});
</script>
</c:if>


</head>
<body>
	<jsp:include page="./header.jsp" />


	<!-- 경로 -->
	<div class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__links">
						<a href="./index.jsp"><i class="fa fa-home"></i> Home</a> <a
							href="./aniboard">게시판</a> <span>게시글</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 경로 -->

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
									<h4>게시글</h4>
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
				<th colspan="2" style="text-align: center; ">글 제목 : ${detail.b_title }
				<c:if test="${detail.u_id eq sessionScope.u_email }">
					<img id="up" src="./img/fix.png" title="수정" style="width: 15px; height: 15;" >
					<img id="del" src="./img/delete.png" title="삭제" style="width: 15px; height: 15;">
				</c:if>
				</th>
			</tr>
			<tr>
				<th style="text-align: center; height: 20px;">작성자 : ${detail.u_nickname }</th>
				<th style="text-align: center;">${detail.b_date }</th>
			</tr>
			<tr>
				<td colspan="2" style="text-align: left">첨부파일 : </td>
			</tr>
			
			<tr style="height: 500px;">
				<td colspan="3" style="text-align: center">${detail.b_content }<br>
				</td>
			</tr>
			<tr>				
				<td colspan="3" style="text-align: right"><small>좋아요 ${detail.b_like }</small></td>
			</tr>
		</table>
		<br>
	<!-- 댓글 -->
                   <div class="anime__details__form" style="margin: 0 auto;">
                            <div class="section-title">
                                <h5>Your Comment</h5>
                            </div>
                            <form action="./anicommentwrite">
                            	<input type="hidden" name="a_no" value="${dto.a_no }">
                                <textarea placeholder="댓글을 작성하려면 로그인을 해주세요." name="comment"></textarea>
                                <button type="submit"><i class="fa fa-location-arrow"></i> Review</button>
                            </form>
                   </div>
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