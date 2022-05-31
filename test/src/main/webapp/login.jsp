<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

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

<!-- Css Styles -->
<!-- <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/plyr.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css"> -->
<link rel="stylesheet" type="text/css" href="css/login.css"> 

<style type="text/css">
#main {
   margin: 0 auto;
   height: 100%;
   width: 900px;
}
</style>
</head>
<body>

   <jsp:include page="./header.jsp" />

   <!-- 로그인 -->
   <section class="login- form">
      <h1 style="color: white; text-align: center">Login</h1>
      
         <div class="wrapper fadeInDown">
            <div id="formContent">
               <!-- Tabs Titles -->

               <!-- Icon -->
               <div class="fadeIn first">
                  <img src="https://t1.daumcdn.net/cfile/tistory/99ECF73D5E6CFA1815" style="width: 380px;">
               </div>

               <!-- Login Form -->
               <form action="./login" method="POST">
                  <input type="text" autocomplete="off" id="login" class="fadeIn second" name="email" placeholder="email"> 
                  <input type="password" style="background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px; 
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px; 
  width: 85%; 
  border: 2px solid #f6f6f6;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out; 
  -ms-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
" autocomplete="off" id="password" class="fadeIn third" name="pw" placeholder="password"> 
                  <input type="submit" class="fadeIn fourth" value="Login">
               </form>

               <!-- Remind Passowrd -->
               <div id="formFooter">
                  <a class="underlineHover" href="./findpassword.jsp">Forgot
                     Password?</a>
               </div>

               <!-- Sign Up -->
               <div id="formFooter">
                  <a class="underlineHover" href="./signup.jsp">Sign Up</a>
               </div>

            </div>
         </div>
   
   </section>
	

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
   <script src="jquery-3.4.1.js"></script>
</body>
</html>