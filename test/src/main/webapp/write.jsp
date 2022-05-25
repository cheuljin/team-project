<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/plyr.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">

<!-- include summernote css/js -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

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
<script type="text/javascript">
	//$(선택자).명령();
	$(document).ready(function() {
	  $('#summernote').summernote({
		  height : 400
	  });
	});
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
							style="align-content:"></i> Home</a> <span>Board</span>
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

						<div class="product__page__title" style="width: 1200px; margin: 0 auto;">
							<div class="row1" style="width: 100%;">

								<div class="section-title">
									<h4>Board</h4>
								</div>
							</div>
						</div>
					<form action="./write" method="post" onsubmit="return check()" style="margin: 0 auto; width: 800px;">
					
						<input type="text" id="title" name="title" placeholder="제목을 입력하세요" 
						style="margin: 0 auto; width: 800px; height: 50px; margin-top: 20px;" required="required">
						
						<textarea id="summernote" name="content" style="margin: 0 auto; width: 800px; margin-top: 20px;"
						required="required"></textarea>
						
						<button id="btn" type="submit">글쓰기</button>
					</form>


</body>
</html>