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
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li><a href="./notice"><font size="5px;">Notice</font></a></li>
                                <li><a href="./aniboard"><font size="5px;">Board</font></a></li>
                                <li><a href="./anireview?pageNo=1"><font size="5px;">review</font></a></li>
                                <li><a href=""><font size="5px;">figure shop</font></a></li>
                               
                                <c:if test="${sessionScope.u_email eq 'admin@a.com' }">
                                	<li><a href="./admin"><font size="5px;">관리자페이지</font></a></li>
                            	</c:if>
                            	
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-2">
                <% if(session.getAttribute("u_email") == null){ %>
                    <div class="header__right">	
                        <a href="./login.jsp"><img alt="" src="./img/login.png" style="width: 40px;height: 30px;"></a>
                    </div>
                <% } else { %>
                    <div class="header__right">	
	            		<a href="./mypage"><img alt="gg" src="./img/option.png" style="width: 40px;height: 30px;"></a>
                        <a href="./logout"><img alt="" src="./img/logout.png" style="width: 40px;height: 30px;"></a>
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