<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시로이네코</title> 
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
    #main{
    	margin: 0 auto;
    	height: 100%;
    	width: 900px;
    }
    
    
    </style>

<script type="text/javascript">
function del(num){
	   if (confirm("해당 댓글을 수정하시겠습니까?")) {
	      location.href="./adminreviewdel?a_no="+num;
	   }
	}
</script>
</head>
<body>
	<jsp:include page="./adminheader.jsp"/>

    
        <!-- Hero Section Begin -->
    <section class="hero">
         	
       
    </section>
    <!-- Hero Section End -->
    <div id="anirecom-container">
		<div id="recom-main">
			<h1 style="color: white; text-align: center">Review 관리자</h1>
			<c:if test="${sessionScope.u_email eq 'admin@a.com' }">
             <button type="button" onclick="location.href='./aniwrite'" style="position: absolute;left: 1000px; width: 150px; font-size: 11px; color: #ffffff;font-weight: 700;letter-spacing: 2px;text-transform: uppercase;background: #e53637; border: none; padding: 10px 15px; border-radius: 2px;"><i class="fa fa-location-arrow">Write</i></button>
			</c:if>
		</div>
	</div>
	
    <section class="product-page spad"> 
        <div class="container">
  			<div id="recom-board" style="margin: 0 auto; margin-top: 30px; width: 1200px; height: 100%;">
			<table class="table table-striped">
				<tr>
					<th style="color: white;">번호</th>
					<th style="color: white;">제목</th>
					<th style="color: white;">날짜</th>
				</tr>
				<c:forEach items="${list }" var="i">
					<tr>
						<td id="td1" style="color: white;">${i.a_no }</td>
						<td id="td2" style="color: white;">${i.a_title }</td>
						<td id="td4" style="color: white;">${i.a_date }</td>
						<td><img alt="" src="./img/fix.png" style="width: 20px; height: 20px;" onclick="location.href='./adminreviewup?a_no=${i.a_no }'">
						<img alt="" src="./img/delete.png" style="width: 20px; height: 20px;" onclick="del(${i.a_no})">
						</td>				
					</tr>
				</c:forEach>
			</table>
		</div>
	
	</div>
	</section>
	
	
	
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