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
       #recom-main{
    	margin: 0 auto;
    	height: 450px;
    	width: 1200px;
   	 }
   	 #row{
   	 	width: 1200px;
   	 }
   	 
   
   </style>
   
   
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
                       	 <span>애니리뷰</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
     
       <!-- Product Section Begin -->
    <section class="product-page spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="product__page__content">
                        <div class="product__page__title">
                            <div class="row">
                                
                                    <div class="section-title">
                                        <h4>Review</h4>
                                    </div>
                     <!--       <c:if test="${sessionScope.u_id ne null }">
								<button onclick="location.href='./write'">글쓰기</button>
							 </c:if> --> 
							 		 <div class="product__page__filter">
							 			<h4> 글쓰기 </h4>
									 </div>
                            </div>
                        </div>
                        
                         <div class="row">
                         <c:forEach items="${list }" var="i">
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/review/1.jpg">
                             
                                        <div class="ep">${i.a_epi }</div>
                                        <div class="comment"><i class="fa fa-comments"></i><!-- 댓글 카운트 --></div>
                                        <div class="view"><i class="fa fa-eye"></i>${i.a_count }</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>${i.a_category }</li>
                                        </ul>
                                        <h5><a href="./anidetail?a_no=${i.a_no }">${i.a_title }</a></h5>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                          </div>
                     </div>
                  </div>
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