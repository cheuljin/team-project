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
    	height: 450px;
    	width: 1200px;
   	 }
   
   </style>

</head>
<body>
	<jsp:include page="./adminheader.jsp"/>
     
     <!-- 본문 Section Begin -->
     <div id="write-board" style="margin: 0 auto; margin-top: 30px; width: 500px; height: 500px;">
     	<form action="./aniwrite" method="post" enctype="multipart/form-data">
     	<div>
     		<input type="text" name="a_title" placeholder="애니메이션 제목" value="" required="required">
     		<input type="text" name="a_writer" placeholder="작가" required="required">
     		
     		<input type="number" name="a_epi" required="required" placeholder="회부 수">
     		<input type="text" name="a_type" required="required" placeholder="TV or Cinema">
     	</div>
     	<br>
     	<div>
     		<label for="start" style="color: white;">출시일: </label>
			<input type="date" id="a_aired" name="a_aired">
			<input type="text" name="a_studio" required="required" placeholder="제작사">
  			<select name="a_category" id="a_category">
  				<option value="none" selected="selected">===장르===</option>
  				<option value="소년">소년</option>
    			<option value="comic">Comic</option>
    			<option value="Action">Action</option>
    			<option value="drama">Drama</option>
    			<option value="fantasy">Fantasy</option>
  			</select>
  			<br>
     	</div>
     	<br>
     	<textarea class="form-control" name="a_content" id="textArea_byteLimit"  onkeyup="fn_checkByte(this)" rows="10" required="required" placeholder="줄거리내용입력해주세요."></textarea>
			<input type="file" name="file" style="color:white;">
			<br>
			<button type="submit"  class="btn btn-info">등록</button>
		</form>
	 </div>
	 <!-- Anime Section End -->		 
			  
			  
  			
	<jsp:include page="footer.jsp"/>
	    <!-- Js Plugins -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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