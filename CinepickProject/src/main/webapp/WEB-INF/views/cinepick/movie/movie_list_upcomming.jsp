<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CINEPICK</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/style.css" type="text/css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">
<style>
	.rate-all {
		background: url("${pageContext.request.contextPath }/resources/cinepick/img/age/all.png") center center no-repeat;
	}
	
	.rate-12 {
		background: url("${pageContext.request.contextPath }/resources/cinepick/img/age/12.png") center center no-repeat;
	}
	
	.rate-15 {
		background: url("${pageContext.request.contextPath }/resources/cinepick/img/age/15.png") center center no-repeat;
	}
	
	.rate-18 {
		background: url("${pageContext.request.contextPath }/resources/cinepick/img/age/18.png") center center no-repeat;
	}
	
	.rate-all, .rate-12, .rate-15, .rate-18 {
    background-size: 30px 30px !important;
    border-radius: 5px;
    font-weight: bold;
    color: #fff;
    width: 40px;
    height: 40px;
    display: inline-block;
    text-align: center;
    margin-right: 7px;
    position: relative;
    padding: 0;
    overflow: hidden;
    text-indent: -10000em;
    position: relative;
    top: 4px;
}


</style>

</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	
	<header>
		<jsp:include page="../include/main_top.jsp"></jsp:include>
	</header>


    <!-- Product Section Begin -->
    <section class="product-page spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-11" style="float: none; margin: 0 auto;">
                    <div class="product__page__content">
                        <div class="product__page__title">
							<div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-6">
                                    <div class="section-title">
                                        <h5>
<!--                                         <h4> -->
                                        	<a href="movieList">
                                                현재 상영작
                                            </a> 
                                            &nbsp;&nbsp;&nbsp;
                                            <a style="color: #503396;">
                                                개봉 예정작
                                            </a>
                                        </h5>
<!--                                         </h4> -->
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="product__page__filter">
                                    	<form action="">
                                    		<input type="radio"  name="MvListType"  value="openDt" style="display: none;" id="open"> 
	                                    	<label for="open" style="color: white">개봉일순</label>
<!--                                     	<label></label> -->
<!--                                     	<input type="radio"> -->
                                   
<!--                                         <select> -->
<!--                                             <option value="">개봉일순</option> -->
<!--                                             <option value="">예매순</option> -->
<!--                                         </select> -->
                                    	</form>
                                    </div>
                                </div>
                            </div>
						</div>
                        <div class="row">
                        	<c:forEach var="movie" items="${movieList }">
	                            <div class="col-lg-3 col-md-6 col-sm-6">
	                                <div class="product__item">
	                                	<a href="movieDetail?movie_code= ${movie.movie_code} ">
		                                    <div class="product__item__pic set-bg" data-setbg="${movie.movie_poster }">
		                                        <div class="comment">
<%-- 			                                        <c:choose> --%>
<%-- 			                                        	<c:when test="${movie.movie_rated eq '전체관람가'}"> --%>
<!-- 			                                        		<span class = "rate-all"></span> -->
<%-- 			                                        	</c:when> --%>
<%-- 			                                        	<c:when test="${movie.movie_rated eq '12세이상관람가'}"> --%>
<!-- 			                                        		<span class = "rate-12"></span> -->
<%-- 			                                        	</c:when> --%>
<%-- 			                                        	<c:when test="${movie.movie_rated eq '15세이상관람가'}"> --%>
<!-- 			                                        		<span class = "rate-15"></span> -->
<%-- 			                                        	</c:when> --%>
<%-- 			                                        	<c:when test="${movie.movie_rated eq '18세이상관람가'}"> --%>
<!-- 			                                        		<span class = "rate-18"></span> -->
<%-- 			                                        	</c:when> --%>
<%-- 			                                        </c:choose> --%>
													<span class = "${movie.movie_rated}"></span>
		                                        </div>
		                                    </div>
	                                    </a>
	                                    <div class="product__item__text">
	                                        <ul>
	                                            <li>개봉일 ${movie.movie_openDt }</li>
	                                            <li class="dday" data-movie-opendt="${movie.movie_openDt}"></li>
	                                            <c:if test="${movie.movie_status eq '재개봉' }"><li>${movie.movie_status }</li></c:if>
	                                        </ul>
	                                        <h5><a href="movieDetail?movie_code=${movie.movie_code }">${movie.movie_nameK }</a></h5>
	                                    </div>
	                                </div>
	                            </div>
                        	</c:forEach>
						</div>
					</div>
				</div>
				<div class="product__pagination">
<!-- 					<a href="#" class="current-page">1</a> -->
<!-- 					<a href="#">2</a> -->
<!-- 					<a href="#">3</a> -->
<!-- 					<a href="#">4</a> -->
<!-- 					<a href="#">5</a> -->
<!-- 					<a href="#"><i class="fa fa-angle-double-right"></i></a> -->
				</div>
			</div>
		</div>
    </section>
	<!-- Product Section End -->

	<footer>
		<jsp:include page="../include/main_footer.jsp"></jsp:include>
	</footer>


<!-- Js Plugins -->
<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/cinepick/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/cinepick/js/player.js"></script>
<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/cinepick/js/mixitup.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.slicknav.js"></script>
<script src="${pageContext.request.contextPath }/resources/cinepick/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/cinepick/js/main.js"></script>
<script src= "${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
<script>
	$(function() {
		dday();
	});
	
	function dday() {
		$(".dday").each(function() {
			let dday = new Date($(this).data("movie-opendt"));
			let now = new Date();
			console.log(now);
			let distance = dday - now;
			let d = Math.floor(distance / (1000 * 60 * 60 * 24)) + 1;
			$(this).html('D-' + d);
			
		});
		
		
	}
	

</script>

</body>

</html>