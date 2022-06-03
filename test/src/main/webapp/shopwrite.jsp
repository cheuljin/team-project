<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시로이네코 - 피규어샵</title>
<meta charset="UTF-8">
<meta name="description" content="Anime Template">
<meta name="keywords" content="Anime, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<script src="http://code.jquery.com/jquery-latest.js"></script>

<link rel="shortcut icon" href="./favicon.ico"/>
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
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

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=913fc15a7c45f3c536f4330bfbbafbaf&libraries=services"></script>



<style type="text/css">
#acea {
	margin: 0 auto;
	height: 300px;
	width: 1200px;
}

#row {
	width: 1200px;
}

img {
	max-width: 100%;
	margin: auto;
}

#sh1 {
	
	width: 33%;
}
#sh5{

	
}

</style>
<script type="text/javascript">

function check() {
	alert("사이트를 업로드 하시겠습니까?")
	var name = document.getElementById("name");
	if (name.value.length < 1) {
		name.focus();
		return false;
	}

}

$(function() {

    $("image_file").on('change', function(){

    readURL(this);

    });

});

function readURL(input) {

    if (input.files && input.files[0]) {

        var reader = new FileReader();

        reader.onload = function (e) {

        $('#View').attr('src', e.target.result);

        }

        reader.readAsDataURL(input.files[0]);

    }

}
</script>

</head>
<body>

	<jsp:include page="./header.jsp" />

	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__links">
						<a href="./index.jsp"><i class="fa fa-home"
							style="align-content:"></i> Home</a> <span>figure shop</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End  -->


	<!-- 피규어샵 테이블-->
	<div id="anirecom-container">
		<div id="acea">
			<img alt="" src="./img/mas.gif" style="display: block; margin: auto;">
		</div>
	</div>

	<!-- Product Section Begin -->
	<section class="product-page spad"
		style="padding-top: 0; height: 100px;">
		<div class="container" style="width: 100%;">
			<div class="row">
				<div class="col-lg-8">
					<div class="product__page__content">
						<div class="product__page__title" style="width: 100%;">
							<div class="row">

								<div class="section-title">
									<h4>FIGURE SHOP WRITE</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<form action="./shopwrite" method="post" enctype="multipart/form-data" >
		<div class= "shop_write_section" style="margin: 0 auto; width: 1200px; height: 500px;">
		
		<table style="margin: 0 auto;">
			<tr>
				<th id="sh1" style="color: white;">
				<input type="file" id="file" name="file" style="color: white;" onchange="readURL(this);">
				<img id="View" src="#" alt="이미지 미리보기" />			
				</th>
				
				<th id="sh2" style="color: white;">
				<input type="text" id="name" name="name" placeholder="사이트 명"><br>
				<input type="text" id="site" name="site" placeholder="사이트 주소">
				</th>
				
			
				<th id="sh1" style="color: white;">			
				<input type="text" id="sample4_postcode" placeholder="우편번호">
				<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
	<br>
	<input type="text" id="sample4_roadAddress" name="roadAddr" placeholder="도로명주소" style="width: 250px;">
	<input type="text" id="sample4_jibunAddress" placeholder="지번주소"  style="width: 250px;">	
	<span id="guide" style="color: #999; display: none"></span>
	<input type="text" id="sample4_detailAddress" placeholder="상세주소"  style="width: 250px;">
	<input type="text" id="sample4_extraAddress" placeholder="참고항목"  style="width: 250px;">

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		 function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
</th>
</tr>
</table>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			
			<button type="submit"
			style="position: absolute; margin: 0 auto; font-size: 13px; color: #ffffff; font-weight: 700; letter-spacing: 2px; text-transform: uppercase; background: #e53637; border: none; padding: 10px 15px; border-radius: 2px;">
			<i class="fa fa-location-arrow">등록하기</i>
			</button>
	</div>
	</form>
	
	<br>








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