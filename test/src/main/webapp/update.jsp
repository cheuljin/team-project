<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정하기</title>
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
	<link rel="shortcut icon" href="./favicon.ico"/>
	
<!-- include libraries(jQuery, bootstrap) -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
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
	padding-bottom: 0;
}

#row {
	width: 1200px;
}
</style>

<script type="text/javascript">
	//$(선택자).명령();
	$(document).ready(function() {
	  $('#summernote').summernote({
		  height : 500
		 
	  });
	 
	
	  var toolbar = [
		    // 글꼴 설정
		    ['fontname', ['fontname']],
		    // 글자 크기 설정
		    ['fontsize', ['fontsize']],
		    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		    // 글자색
		    ['color', ['white']],
		    // 표만들기
		    ['table', ['table']],
		    // 글머리 기호, 번호매기기, 문단정렬
		    ['para', ['ul', 'ol', 'paragraph']],
		    // 줄간격
		    ['height', ['height']],
		    // 그림첨부, 링크만들기, 동영상첨부
		    ['insert',['picture','link','video']],		    
		  ];
      $('#summernote').summernote(setting);
	});
</script>


<script type="text/javascript">
	fuction check(){
		alert('글을 수정했습니다')
		var title = document.getElementById("title");
		if (title.value.length < 5) {
			alert("제목은 다섯글자 이상이어야 합니다");
			title.focus();
			return false;
		}
	}
	
</script>



</head>
<body>
	<jsp:include page="./header.jsp" />

	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-option" style="padding-top: 0;">
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

	<div id="anirecom-container">
		<div id="recom-main">
			<img alt="" src="./img/recom-main.png">
		</div>
	</div>

	<div class="product__page__title"
		style="width: 1200px; margin: 0 auto;">
		<div class="row1" style="width: 100%;">

			<div class="section-title">
				<h4>UPDATE</h4>
			</div>
		</div>
	</div>

	<form action="./update" method="post" onsubmit="return check()"  style="margin: 0 auto; width: 1000px; height: 150px;">
	
		<input type="text" id="title" name="title" value="${dto.b_title }"
			placeholder="제목을 입력하세요"
			style="margin: 0 auto; width: 1000px; height: 50px; margin-top: 20px; font-size: 13px;"
			required="required">
			
		<textarea id="summernote" name="content"
			style="margin: 0 auto"
			required="required">${dto.b_content}</textarea>
			
		<input type="hidden" name="b_no" value="${dto.b_no }">
		
		<button type="submit"
			style="position: absolute; right : 150px; font-size: 13px; color: #ffffff; font-weight: 700; letter-spacing: 2px; text-transform: uppercase;
			 background: #e53637; border: none; padding: 10px 15px; border-radius: 2px;">
			<i class="fa fa-location-arrow">수정</i>
			
		</button>
	</form>

</body>
</html>