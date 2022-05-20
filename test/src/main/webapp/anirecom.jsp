<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>씹덕양산소</title>
   <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>씹덕 | 양산소</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
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
    #main{
    	margin: 0 auto;
    	height: 100%;
    	width: 900px;
    }
    th, td{
    	color: white;
    }
    #recom-main{
    	margin: 0 auto;
    	height: 450px;
    	width: 1200px;
    }
    
    </style>
</head>
<body>
	<jsp:include page="./header.jsp"/>
	    <div id="preloder">
        	<div class="loader"></div>
    	</div>
    
        <!-- 애니 추천 게시판 테이블-->
		<div id="anirecom-container">
			<div id="recom-main">
				<img alt="" src="./img/recom-main.png">
			
			</div>
		
			<div id="recom-board" style="margin: 0 auto; margin-top: 30px; width: 1200px; height: 500px;">
				<table class="table table-striped" border="1">
				
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>날짜</th>
						<th>조회수</th>
					</tr>
				
					<tr>
						<td>번호~</td>
						<td>제목~</td>
						<td>글쓴이~</td>
						<td>날짜~~</td>
						<td>조회수~~~</td>
					</tr>
				
			</table>
		</div>
	</div>
			  
			  
			  
			  
  			
	<jsp:include page="footer.jsp"/>


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