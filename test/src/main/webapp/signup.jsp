<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
   <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
<!--     <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/plyr.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css"> -->
    <link rel="stylesheet" type="text/css" href="css/signup.css"> 
</head>
<body>
   <jsp:include page="./header.jsp"/>
       <div id="preloder">
        <div class="loader"></div>
    </div>

<div class="page-container">
            
            <form action="./signup" method="POST">
         <h1 style="color: white;">Sign Up</h1>
                <input type="text" name="name" class="Name" placeholder="Name" required="required"style="margin-top: 10px;">
                <input type="text" name="nickname" class="Nickname" placeholder="Nickname" required="required" style="margin-top: 10px;">
                <input type="text" name="tele" class="Tele" placeholder="Number Phone" required="required" style="margin-top: 10px;">
            <input type="text" name="email" class="Email" placeholder="Email" required="required" style="margin-top: 10px;">
            <input type="password" name="password" class="Address" placeholder="password" required="required" style="margin-top: 10px;">
            <input type="password" name="password2" class="Address" placeholder="password" required="required" style="margin-top: 10px; margin-bottom: 10px;">            
                <button type="submit" value="Add" name="submit" style="margin-bottom: 40px;">Submit </button>
            </form>
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

</body>
</html>