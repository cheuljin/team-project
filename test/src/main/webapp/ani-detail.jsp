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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style type="text/css">
#main {
	margin: 0 auto;
	height: 450px;
	width: 1200px;
}

a:visited, a:link {
	color: white;
	text-decoration: none;
}

/* component */
.star-rating {
  display:flex;
  flex-direction: row-reverse;
  font-size:1.5em;
  justify-content:space-around;
  padding:0 .2em;
  text-align:center;
  width:5em;
}

.star-rating input {
  display:none;
}

.star-rating label {
  color:#ccc;
  cursor:pointer;
}

.star-rating :checked ~ label {
  color:#f90;
}

.star-rating label:hover,
.star-rating label:hover ~ label {
  color:#fc0;
}

</style>
<script type="text/javascript">
   function like(){
	   let a_no = ${dto.a_no};
		$.ajax({
			url : "./anilike",
			type : "GET",
			dataType : "html",
			data : {"a_no" : a_no}, 
			success : function(data){
				if(data == 1){
					$("#like").attr('src','./img/like2.png');
					 $('#likecount').load(location.href+' #likecount');
				}else{
					
				}
			} ,
			error : function(data){
				alert(data);
			}
		});
	}
   
   function cup(num){
	   if (confirm("해당 댓글을 수정하시겠습니까?")) {
	      location.href="./aniupdatecomment?a_no=${dto.a_no }&ac_no=" + num;
	   }
	}
   function cdel(num){
	   if (confirm("해당 댓글을 수정하시겠습니까?")) {
	      location.href="./anideletecomment?a_no=${dto.a_no }&ac_no=" + num;
	   }
	}
   
   </script>
   <script type="text/javascript">
   
   function commentwrite(u_email){
	   if(u_email == null){
		   alert("로그인한 사용자만 댓글을 달 수 있습니다.");
		   return false;
	   }else{
		   location.href="./anicommentwrite";  
	   }
   }
   
   function rating(){
	   let a_no = ${dto.a_no};
	   var listVar = $('input[name=rating]:checked').val();
	    $.ajax({
			url : "./rating",
			type : "GET",
			dataType : "html",
			data : {"rating" : listVar , "a_no" : a_no}, 
			success : function(data){
				if(data == 1){
					$("#1-star").prop("checked",true);
					alert("평점입력이 되었습니다. 총 평점" + data +"점입니다.");
					$('#anime__details__rating').load();
				}else if(data == 2){
					$("#2-stars").prop("checked",true);	
					alert("평점입력이 되었습니다. 총 평점" + data +"점입니다.");
					$('#anime__details__rating').load();
				}else if(data == 3){
					$("#3-stars").prop("checked",true);
					$('#anime__details__rating').load();
					alert("평점입력이 되었습니다. 총 평점" + data +"점입니다.");
				}else if(data == 4){
					$("#4-stars").prop("checked",true);
					$('#anime__details__rating').load();
					alert("평점입력이 되었습니다. 총 평점" + data +"점입니다.");
				}else if(data == 5){
					$("#5-stars").prop("checked",true);
					$('#anime__details__rating').load();
					alert("평점입력이 되었습니다. 총 평점" + data +"점입니다.");
				}
			} ,
			error : function(data){
				alert(data);
			}
		});
   }
   
   $(document).ready(function(){
	   let a_no = ${dto.a_no};
	    $.ajax({
			url : "./rating",
			type : "post",
			dataType : "html",
			data : {"a_no" : a_no}, 
			success : function(data){
				if(data == 1){
					$("#1-star").prop("checked",true);
					$('#anime__details__rating').load();
				}else if(data == 2){
					$("#2-stars").prop("checked",true);	
					$('#anime__details__rating').load();
				}else if(data == 3){
					$("#3-stars").prop("checked",true);
					
				}else if(data == 4){
					$("#4-stars").prop("checked",true);
					
				}else if(data == 5){
					$("#5-stars").prop("checked",true);
				}
			} ,
			error : function(data){
				alert(data);
			}
	 });
   });
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
     
     <!-- Anime Section Begin -->
    <section class="anime-details spad">
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="anime__details__pic set-bg" data-setbg="./img/upload/${dto.a_file }">
                            <div class="comment"><i class="fa fa-comments"></i> </div>
                            <div class="view"><i class="fa fa-eye"></i> ${dto.a_count }</div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="anime__details__text">
							<div class="anime__details__title">
								<h3>${dto.a_title }</h3>
							</div>
							 <div class="anime__details__rating">
							
							<div class="star-rating space-x-4 mx-auto" >								
							
									<input type="radio" id="5-stars" name="rating" value="5" onclick="rating()"/> 
									<label for="5-stars" class="star pr-4" >★</label>	
									
									<input type="radio" id="4-stars" name="rating" value="4" onclick="rating()"/> 
									<label for="4-stars" class="star" >★</label>						
								
									<input type="radio" id="3-stars" name="rating" value="3" onclick="rating()"/> 
									<label for="3-stars" class="star" >★</label>					
								
									<input type="radio" id="2-stars" name="rating" value="2" onclick="rating()"/> 
									<label for="2-stars" class="star" >★</label>			
								
									<input type="radio" id="1-star" name="rating" value="1" onclick="rating()"/> 
									<label for="1-star" class="star" >★</label>
							
							</div>

							</div>
                            <p>${dto.a_content }</p>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>Type:</span> ${dto.a_type }</li>
                                            <li><span>Studios:</span> ${dto.a_studio }</li>
                                            <li><span>Date aired:</span> ${dto.a_aired }</li>
                                            <li><span>Views:</span> ${dto.a_count }</li>
                             
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                             				<li><span>Writer:</span> 작가이름.</li>
                        					<li><span>Like:</span><a href="#" id="likecount" style="text-decoration: none;">${dto.a_like }</a></li>
                                          	<li><span>Duration:</span> ${dto.a_epi }&nbsp;부작</li>
                                            <li><span>Genre:</span> ${dto.a_category }</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="anime__details__btn">
                            <c:if test="${sessionScope.u_email ne null }">
                                <img alt="" src="./img/like.png" id="like" onclick="like()">
                            </c:if>
                            </div>
                          </div>
                        </div>
                    </div>
                </div> 
      <iframe width="560" height="315" src="https://www.youtube.com/embed/Z3QlWFKfRhA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
             <div class="row">
                    <div class="col-lg-8 col-md-8">
                        <div class="anime__details__review">
                            <div class="section-title">
                            <br>
                            <br>

                      		<!-- 댓글 -->
                                <h5>Reviews</h5>
                            </div>
                            <div class="anime__review__item">
                 			<c:forEach items="${list }" var="i">
                 			&nbsp; &nbsp; 
                                <div class="anime__review__item__pic">
                                    <img src="img/anime/review-1.jpg" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                	<input type="hidden" name="ac_no" value="${i.ac_no }">
                                    <h6>${i.u_nickname } <small style="color:white"><span>${i.ac_date }</span></small>
										<img id="recom" src="./img/recom.png" title="대댓글" width="20px" height="20px" align="right"> &nbsp; &nbsp; &nbsp; 
										<img id="commentlike"alt="" src="./img/commentlike.png" width="20px" height="20px" align="right">
                                    <c:if test="${sessionScope.u_email eq i.u_id }">
										<img id="del" src="./img/delete.png" title="삭제" width="20px" height="20px" align="right" onclick="cdel(${i.ac_no})">
										<img id="up" src="./img/fix.png" title="수정" width="20px" height="20px" align="right" onclick="cup(${i.ac_no})" >&nbsp; &nbsp; &nbsp;  &nbsp; 
									</c:if>
                                    </h6>
                                    <p>${i.ac_comment }</p>
                                </div>
                 			</c:forEach>     
                            </div>
                         </div>
                      </div>
                 </div>  
                   <div class="anime__details__form">
                            <div class="section-title">
                                <h5>Your Comment</h5>
                            </div>
                            <form action="./anicommentwrite">
                            	<input type="hidden" name="a_no" value="${dto.a_no }">
                                <textarea placeholder="댓글을 작성하려면 로그인을 해주세요." id="comment" name="comment" required="required" onclick="commentwrite(${sessionScope.u_email })"></textarea>
                                <button type="submit">
                                	<i class="fa fa-location-arrow"></i> Review</button>
                            </form>
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