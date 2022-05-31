<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
 
 </style>
</head>
<body>
   <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="./index.jsp">
                            <img src="img/logo1.png" alt="" style=" height: 60px;" >
                            <h1 style = "color: white; font-size: 6px; margin: 0 auto; text-align: right">관리자</h1>
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>                
                            	<li><a href="./adminuser"><font size="5px;">게시판관리</font> <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="./adminnotice">Notice</a></li>
                                        <li><a href="#">Board</a></li>
                                        <li><a href="./adminreview">Review</a></li>
                                    </ul>
                                </li>
                            	<li><a href="./adminuser"><font size="5px;">회원관리</font> <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="#">회원정보보기</a></li>
                                        <li><a href="#">회원추가하기</a></li>
                                        <li><a href="#">회원삭제하기</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-2">
                	
                <% if(session.getAttribute("u_email") == null){ %>
                    <div class="header__right">	
                        <a href="./login.jsp"><img alt="" src="./img/login.png" style="width: 50px;height: 30px;"></a>
                    </div>
                <% } else { %>
                    <div class="header__right">	
                       	<a href="./logout"><img alt="" src="./img/logout.png" style="width: 50px;height: 30px;"></a>
                    </div>
                <%} %>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header End -->
</body>
</html>