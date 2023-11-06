<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CINEPICK</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/main.css" type="text/css">  
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">  
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src= "${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> 
<script>
// slider
   $(function() {
        $(".slider").bxSlider({
        	nextText:'<i class="bi bi-chevron-compact-right" style="color: #ffffff"></i>',
//         	nextText:'<i class="fa-light fa-chevron-right" style="color: #a6abaa;"></i>',
        	prevText:'<i class="bi bi-chevron-compact-left" style="color: #ffffff"></i>',
//         	prevText:'<i class="fa-light fa-chevron-left" style="color: #a6abaa;"></i>'
			autohover: true,
			auto: true,
			autoControls: true,
			stopAutoOnClick: true,
			pager: true,
			startText: '<i class="bi bi-play-fill" style="color: #ffffff"></i>',
			stopText: '<i class="bi bi-pause-fill" style="color: #ffffff"></i>'
        	
        });
	});

//board
	$(function() {
		$(".slider-bo").bxSlider({
			minSlides: 2,
			maxSlides: 5,
			slideWidth:200,
			slideMargin: 20,
			pager:false,
			controls: true,
			auto: false,
			autohover: true,
			moveSlides:5,
			speed:500,
			nextText:'<i class="bi bi-chevron-right" style="color: #1c1c1c"></i>',
        	prevText:'<i class="bi bi-chevron-left" style="color: #1c1c1c"></i>'
			
		});
		
		$(".bx-viewport").on("mouseenter", " ul > li > span.over > a", function() {
			$(this).parent().addClass("on");
			if ($(this).hasClass("info")) {
				$(this).parent().removeClass("down");
				$(this).parent().addClass("up");
			}
			if ($(this).hasClass("rsv")) {
				$(this).parent().removeClass("up");
				$(this).parent().addClass("down");
			}
		});
	
		$(".bx-viewport").on("mouseleave", " ul > li > span.over", function() {
			$(this).removeClass("on");
		});
		
	});
	
	
	

</script>
</head>
<body>
	<header>
	<jsp:include page="../include/main_top.jsp"></jsp:include>
	</header>
<!-- --------------------------slider-----------------------------	 -->

	<div class="slideWrap" id="slider">
		<ul class="slider" id="slide">
			<li><img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_slider/mv1.jpg"></li>
			<li><img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_slider/mv2.jpg"></li>
			<li><img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_slider/mv3.jpg"></li>
			<li><img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_slider/mv4.jpg"></li>
		</ul>
	</div>
	
<!-- --------------------------board-----------------------------	 -->

	<div class="mainList">
		<div class="title">MOVIE</div>
		<div class="main-movie-list">
<!-- 			<ul class="selector"> -->
<!-- 				<li class="">박스오피스</li> -->
<!-- 				<li class="">상영예정작</li> -->
<!-- 			</ul> -->
			<div class="boardWrap">
				<ul class="slider-bo">
					<c:forEach var="movie" items="${movieList }">
						<li data-movie_code="${movie.movie_code }">
<!-- 							<div class="slider-over"> -->
								<span class="over">
<!-- 								<span class="over-like"><a href="#"><i class="bi bi-heart"></i></a></span> -->
									<a href="bookingStepOne?movie_code=${movie.movie_code }" class="rsv"><span class="over-rsv">예매하기</span></a>
									<a href="movieDetail?movie_code= ${movie.movie_code }&pageNum=1" class="info"><span class="over-info">상세보기</span></a>
								</span>
								<img alt="" src="${movie.movie_poster }">
<!-- 							</div> -->
							<div class="mv-desc">
								<c:choose>
 									<c:when test="${movie.movie_rated eq '전체관람가'}">
                               			<span class = "rate-all"></span>
                               		</c:when>
                               		<c:when test="${movie.movie_rated eq '12세이상관람가'}">
                               			<span class = "rate-12"></span>
                               		</c:when>
                               		<c:when test="${movie.movie_rated eq '15세이상관람가'}">
                               			<span class = "rate-15"></span>
                               		</c:when>
                               		<c:when test="${movie.movie_rated eq '18세이상관람가'}">
                               			<span class = "rate-18"></span>
                               		</c:when>
                               </c:choose>
<!-- 								<span class="rate-12">12세관람가</span> -->
								<span title="${movie.movie_nameK }">${movie.movie_nameK }</span>

							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>



<!-- -------------------------------------------------------	 -->
	<footer>
		<jsp:include page="../include/main_footer.jsp"></jsp:include>
	</footer>	
	
	
</body>
</html>