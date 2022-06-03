<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시로이네코 - 개인정보</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
	<link rel="shortcut icon" href="./favicon.ico"/>

<!-- Css Styles -->
<!--     <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/plyr.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css"> -->
	<link rel="stylesheet" type="text/css" href="css/mypage.css">



<script type="text/javascript">
function nicknameCheck1(){
	var nickname = $("#nickname").val();
	if(nickname == "" || nickname.length == 1){
		$("#checkResult").css("color","red");
		$("#checkResult").text("2자이상 입력해주세요.");
		$("#nickname").focus();
	}else{
		$.ajax({
			url : "./nicknamecheck",
			type : "POST",
			dataType : "html",
			data : {"nickname" : nickname},
			success : function(data){
				if (data == 0) {
					$("#checkResult").css("color", "green");
					$("#checkResult").text(nickname + "은(는) 수정할 수 있습니다.");
					$("#checkResult").attr("disabled", false);
				} else {
					$("#checkResult").css("color", "red");
					$("#checkResult").text(nickname + "중복된 nickname입니다.");
					$("#checkResult").attr("disabled", true);
					$("#nickname").focus();
				}
			}
		});
	}
}

function telCheck(){
	var tel = $("#tel").val();
	if(tel == "" || tel.length == 12){
		$("#checkResult").css("color","red");
		$("#checkResult").text("12자이어야 합니다."); 
		$("#tel").focus();
	}else{
		alert(tel);
		$.ajax({
			url : "./telcheck",
			type : "POST",
			dataType : "html",
			data : {"tel" : tel},
			success : function(data){
				if (data == 0) {
					$("#checkResult").css("color", "green");
					$("#checkResult").text(tel + "는 가입할 수 있습니다.");
					$("#checkResult").attr("disabled", false);
				} else {
					$("#checkResult").css("color", "red");
					$("#checkResult").attr("disabled", true);
					$("#checkResult").text(tel + "가입할 수 없는 tel입니다.");
					$("#tel").focus();
				}
			}
		});
	}
}

function passwordCheck1() {
	var password1 = $("#password1").val();
	var password2 = $("#password2").val();
	
	if(password1 != "" && password2 != "" ){
		if (password1 == password2) {
			$("#checkResult").html("일치");
			$("#checkResult").attr("color", "green");
		}else{
			$("#checkResult").html("불일치");
			$("#checkResult").attr("color", "red");
			$("#password").focus();
		}
	}
	
}

function signout(){
	if(confirm("정말로 탈퇴하시겠습니까?")){
		location.href="./signout";
	}
	
}

</script>

</head>
<body>
	<jsp:include page="./header.jsp" />

	<div class="container">
		<div class="row main">
				
			
			
				<form class="form-horizontal" method="post" action="./mypage">
					<h1 class="title" align="center" style="color: white;">개인정보</h1>

					<div class="form-group" style="font-size: 30px; color: #fff;">
						<label for="name" class="cols-sm-2 control-label" style="margin-top: 40px;">Name</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user fa"
									aria-hidden="true"></i></span>
								<div>${dto.name }</div>
							</div>
						</div>
					</div>

					<div class="form-group" style="font-size: 30px; color: #fff;">
						<label for="email" class="cols-sm-2 control-label">Email</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-envelope fa" aria-hidden="true"></i></span>
								<div>${dto.email }</div>
							</div>
						</div>
					</div>

					<div class="form-group" style="font-size: 30px; color: #fff;">
						<label for="username" class="cols-sm-2 control-label">nickname</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-users fa"
									aria-hidden="true"></i></span> 
									<input type="text" class="form-control" style="margin-left: 10px;"
									name="nickname" id="nickname" onchange="nicknameCheck1()" value="${dto.nickname }"autocomplete="off" required="required"
									placeholder="${dto.nickname }" />
									
							</div>
						</div>
					</div>

					<div class="form-group" style="font-size: 30px; color: #fff;">
						<label for="tel" class="cols-sm-2 control-label">tel</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-users fa"
									aria-hidden="true"></i></span> 
									<input type="text" class="form-control" style="margin-left: 10px;"
									name="tele" value="${dto.tele }" id="tel" autocomplete="off" onchange="telCheck()" required="required"
									placeholder="${dto.tele }" />
							</div>
						</div>
					</div>

					<div class="form-group" style="font-size: 30px; color: #fff;">
						<label for="password" class="cols-sm-2 control-label">Password</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
									type="password" class="form-control" style="margin-left: 10px;" name="password" onchange="passwordCheck1()" autocomplete="off"
									id="password1" required="required" placeholder="Password" />
							</div>
						</div>
					</div>

					<div class="form-group"
						style="font-size: 30px; color: #fff; margin-bottom: 30px;">
						<label for="confirm" class="cols-sm-2 control-label">Confirm
							Password</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
									type="password" class="form-control" style="margin-left: 10px;" name="password2" onchange="passwordCheck1()" required="required"
									id="password2" placeholder="Password" autocomplete="off" />
							</div>
						</div>
					</div>
					<div id="checkResult">중복체크</div>
						<div class="form-group ">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button">modify</button>
							<button type="submit" class="btn btn-danger btn-lg btn-block login-button" onclick="signout()">회원탈퇴</button>
						</div>
					
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
