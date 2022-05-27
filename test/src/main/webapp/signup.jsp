<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<meta name="description" content="Anime Template">
<meta name="keywords" content="Anime, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
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

<script type="text/javascript">
function idCheck() {
	var email = $("#email").val();
	if(email == "" || email.length < 4){
		$("#checkResult").css("color","red");
		$("#checkResult").text("4글자 이상이어야 합니다.");
	}else{
		$.ajax({
			url : "./emailcheck",
			type : "POST",
			dataType : "html",
			data : {"email" : email},
			success : function(data){
				if (data == 0) {
					$("#checkResult").css("color", "green");
					$("#checkResult").text(email + "는 가입할 수 있습니다.");
					$("#checkResult").attr("disabled", false);
				} else {
					$("#checkResult").css("color", "red");
					$("#checkResult").text(email + "는 이미 등록된 email입니다.");
					$("#checkResult").attr("disabled", true);
					$("#email").focus();
				}
			}
		});
	}
}
function nicknameCheck() {
	var nickname = $("#nickname").val();
	if(nickname == "" || nickname.length < 1){
		$("#checkResult").css("color","red");
	}else{
		$.ajax({
			url : "./nicknamecheck",
			type : "POST",
			dataType : "html",
			data : {"nickname" : nickname},
			success : function(data){
				if (data == 0) {
					$("#checkResult").css("color", "green");
					$("#checkResult").text(nickname + "은(는) 가입할 수 있습니다.");
					$("#checkResult").attr("disabled", false);
				} else {
					$("#checkResult").css("color", "red");
					$("#checkResult").text(nickname + "은(는) 이미 등록된 닉네임입니다.");
					$("#checkResult").attr("disabled", true);
					$("#nickname").focus();
				}
			},	
			error : function(){
				alert("서버가 동작하지 않습니다.");
			}
		
		});
	}
}

		function passwordCheck() {
				var password1 = $("#password1").val();
				var password2 = $("#password2").val();
				
				if(password1 != "" && password2 != "" ){
					if (password1 == password2) {
						$("#checkResult").html("일치");
						$("#checkResult").attr("color", "green");
					//	$("#checkResult").attr('disabled',false);
					}else{
						$("#checkResult").html("불일치");
						$("#checkResult").attr("color", "red");
					//	$("#checkResult").attr('disabled',true);
					}
				}
				
				/*else{
					$.ajax({
						url : "./passwordcheck",
						type : "POST",
						dataType : "html",
						data : {"password" : password},
						success : function(data){
							if (data == 0) {
								$("#checkResult").css("color", "green");
								$("#checkResult").text("가입할 수 있습니다.");
								$("#checkResult").attr("disabled", false);
							} else {
								$("#checkResult").css("color", "red");
								$("#checkResult").text("password가 일치하지 않습니다.");
								$("#checkResult").attr("disabled", true);
								$("#password").focus();
							}
						} 
					});
				}*/
			}

 /*   var name = form.name;
   if(name.value.length == 0){
      alert("이름을 입력하세요");
      name.focus();
      return false;
   }
   var name = form. nickname;
   if(name.value.length == 0){
      alert("닉네임을 입력하세요");
      name.focus();
      return false;
   }
   if(email.value.length == 0){
      alert("이메일을 입력하세요");
      email.focus();
      return false;
   }
   var tel = form.tel;
   if(tel.value.length == 0){
      alert("전화번호를 입력하세요");
      tel.focus();
      return false;
   }
   var passwd = form.passwd;
   if(passwd.value.length == 0){
      alert("비밀번호를 입력하세요");
      passwd.focus();
      return false;
   }
   var email = form.email; */
   //return false;
</script>

</head>
<body>
	<jsp:include page="./header.jsp" />
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<div class="page-container">
		<div class="signup_form">
			<form action="./signup" method="POST">
				<h1 style="color: white;">Sign Up</h1>
				<input type="text" autocomplete="off" id="email" name="email" class="Email" placeholder="Email" required="required" style="margin-top: 10px;" onchange="idCheck()"> 
					<input type="text" autocomplete="off" name="name" class="Name" placeholder="Name" required="required" style="margin-top: 10px;">
				<input type="text" autocomplete="off" id="nickname" name="nickname"
					class="Nickname" placeholder="Nickname" required="required"
					style="margin-top: 10px;" onchange="nicknameCheck()"> 
				<input type="text" autocomplete="off" name="tele" class="Tele"
					placeholder="Number Phone" required="required"
					style="margin-top: 10px;"> 
				<input type="password" autocomplete="off" id="password1" name="password" class="Address" placeholder="password" required="required" style="margin-top: 10px;" onchange="passwordCheck()"> 
				<input type="password" autocomplete="off" id="password2" name="password2"
					class="Address" placeholder="password" required="required"
					style="margin-top: 10px; margin-bottom: 10px;"
					onchange="passwordCheck()">
				<button type="submit" value="Add" id="submit" name="submit"
					style="margin-bottom: 40px;">Submit</button>
				<div id="checkResult">email체크를 완료해야합니다.</div>
			</form>


		</div>

	</div>

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

</body>
</html>

</body>
</html>