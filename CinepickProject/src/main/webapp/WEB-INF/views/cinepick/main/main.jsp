<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CINEPICK</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">  
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/main.css" type="text/css">  
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src= "${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> 
<script>
// slider
   $(function() {
        $(".slider").bxSlider({
        	nextText:'<i class="fas fa-chevron-right"></i>',
//         	nextText:'<i class="fa-light fa-chevron-right" style="color: #a6abaa;"></i>',
        	prevText:'<i class="fas fa-chevron-left"></i>',
//         	prevText:'<i class="fa-light fa-chevron-left" style="color: #a6abaa;"></i>'
			autohover: true,
			auto: true,
			autoControls: true,
			stopAutoOnClick: true,
			pager: true,
			startText: '<i class="fa-solid fa-play"></i>',
			stopText: '<i class="fa-solid fa-pause"></i>'
        	
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
			controls: false
// 			nextText:'<i class="fas fa-chevron-right"></i>',
//         	prevText:'<i class="fas fa-chevron-left"></i>'
			
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
			<li><img alt="" src="${pageContext.request.contextPath }/resources/cinepick/
			img/main_slider/mv4.jpg"></li>
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
					<li>
<!-- 						<span class="over-over"> -->
<!-- 							<span class="over-like"><a href="#"><i class="bi bi-heart"></i></a></span> -->
<!-- 							<span class="over-rsv"><a href="#">예매하기</a></span> -->
<!-- 							<span class="over-info"><a href="#">상세보기</a></span> -->
<!-- 						</span> -->
						<img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_list/mb1.jpg">
						<div class="mv-desc">
							<span class="rate-12">12세관람가</span>
							30일
						</div>
					</li>
					<li>
<!-- 						<span class="over-over"> -->
<!-- 							<span class="over-like"><a href="#"><i class="bi bi-heart"></i></a></span> -->
<!-- 							<span class="over-rsv"><a href="#">예매하기</a></span> -->
<!-- 							<span class="over-info"><a href="#">상세보기</a></span> -->
<!-- 						</span> -->
						<img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_list/mb2.jpg">
						<div class="mv-desc">
							<span class="rate-12">12세관람가</span>
							천박사 퇴마연구소
						</div>
					</li>
					<li>
<!-- 						<span class="over-over"> -->
<!-- 							<span class="over-like"><a href="#"><i class="bi bi-heart"></i></a></span> -->
<!-- 							<span class="over-rsv"><a href="#">예매하기</a></span> -->
<!-- 							<span class="over-info"><a href="#">상세보기</a></span> -->
<!-- 						</span> -->
						<img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_list/mb3.jpg">
						<div class="mv-desc">
							<span class="rate-15">15세 관람가</span>
							거미집
						</div>
					</li>
					<li>
<!-- 						<span class="over-over"> -->
<!-- 							<span class="over-like"><a href="#"><i class="bi bi-heart"></i></a></span> -->
<!-- 							<span class="over-rsv"><a href="#">예매하기</a></span> -->
<!-- 							<span class="over-info"><a href="#">상세보기</a></span> -->
<!-- 						</span> -->
						<img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_list/mb4.jpg">
						<div class="mv-desc">
							<span class="rate-12">12세관람가</span>
							크리에이터
						</div>
					</li>
					<li>
<!-- 						<span class="over-over"> -->
<!-- 							<span class="over-like"><a href="#"><i class="bi bi-heart"></i></a></span> -->
<!-- 							<span class="over-rsv"><a href="#">예매하기</a></span> -->
<!-- 							<span class="over-info"><a href="#">상세보기</a></span> -->
<!-- 						</span> -->
						<img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_list/mb5.jpg">
						<div class="mv-desc">
							<span class="rate-15">15세 관람가</span>
							발레리나
						</div>
					</li>
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