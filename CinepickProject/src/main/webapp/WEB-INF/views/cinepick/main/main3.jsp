<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> <!-- jquery -->
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> 
<script>
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
<style type="text/css">

	.mainList .title {
    display: block;
    width: 85px;
    height: 37px;
    margin: 33px auto 39px auto;
    /* text-align: center; */
    font-size: 28px;
    color: #666;
    font-weight: normal;
    line-height: 19px;
    border-bottom: solid 2px #979797;
}
	
	
	.mainList {
		height: 500px;
		
	}
	
	.bx-wrapper,
	.bx-viewport {
    	height:400px !important;
	} 
	
	.boardWrap {
		position: relative;
		height: 500px;
		display: flex;
		align-items:center; /* 위아래 기준 중앙정렬 */
		justify-content:center; /* 좌우 기준 중앙정렬 */
	}
	
	
	.boardWrap li img {
		border-radius: 10px;
 		width: 170px; 
		
	}
	
	.mvdesc {
		item-align: center;
	}
	
	.mv-desc .rate-all {
		background: url("../img/age/all.png") center center no-repeat;
	}
	
	.mv-desc .rate-12 {
		background: url("../img/age/12.png") center center no-repeat;
	}
	
	.mv-desc .rate-15 {
		background: url("../img/age/15.png") center center no-repeat;
	}
	
	.mv-desc .rate-18 {
		background: url("../img/age/18.png") center center no-repeat;
	}
	
	.mv-desc .rate-all, .mv-desc .rate-12, .mv-desc .rate-15, .mv-desc .rate-18 {
    background-size: 23px 23px !important;
    font-weight: bold;
    color: #fff;
    width: 20px;
    height: 20px;
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

 	.boardWrap .bx-prev, .boardWrap .bx-next{ 
 		position: absolute; 
 		top: 50%; 
 		trasform: translateY(-50%);
 		font-size: 1em;
 	} 
	
  	.boardWrap .bx-prev {  
  		left: 20%;  
  	}  
	
  	.boardWrap .bx-next {  
  		right: 20%;  
  	}  
	
</style>
</head>
<body>
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
</body>
</html>