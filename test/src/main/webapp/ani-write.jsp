<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    	height: 450px;
    	width: 1200px;
   	 }
   
   </style>
   <script type="text/javascript">
   
   
	function fn_checkByte(obj){
	    const maxByte = 100; //최대 100바이트
	    const text_val = obj.value; //입력한 문자
	    const text_len = text_val.length; //입력한 문자수
	    
	    let totalByte=0;
	    
	    for(let i=0; i<text_len; i++){
	    	const each_char = text_val.charAt(i);
	        const uni_char = escape(each_char); //유니코드 형식으로 변환
	        if(uni_char.length>4){
	        	// 한글 : 2Byte
	            totalByte += 2;
	        }else{
	        	// 영문,숫자,특수문자 : 1Byte
	            totalByte += 1;
	        }
	    }
	    
	    if(totalByte>maxByte){
	    	alert('최대 100Byte까지만 입력가능합니다.');
	        	document.getElementById("nowByte").innerText = totalByte;
	            document.getElementById("nowByte").style.color = "red";
	        }else{
	        	document.getElementById("nowByte").innerText = totalByte;
	            document.getElementById("nowByte").style.color = "green";
	        }
	    }
	}
	
   </script>
   
</head>
<body>
	<jsp:include page="./header.jsp"/>
	
	<!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="./index.jsp"><i class="fa fa-home"></i> Home</a>
                        <a href="./anireview">목록</a>
                       	 <span>애니리뷰</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
     
     <!-- 본문 Section Begin -->
     <div id="write-board" style="margin: 0 auto; margin-top: 30px; width: 500px; height: 500px;">
     	<form action="./aniwrite" method="post" enctype="multipart/form-data">
     	<div>
     		<input type="text" name="a_title" placeholder="애니메이션 제목" required="required">
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