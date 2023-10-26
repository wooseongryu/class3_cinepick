<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>

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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/booking.css" type="text/css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/booking_3_4.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">
    
    <style type="text/css">
    	.col {
    		padding-left: 5px;
    		padding-right: 5px;
    	}
    	.col-2 {
    		padding-left: 5px;
    		padding-right: 5px;
    	}
    	.col-4 {
    		padding-left: 5px;
    		padding-right: 5px;
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

    <section class="product-page spad">
		<div class="container">
			<div class="row">
			
	             <div class="col-lg-11 col-md-8" style="float: none; margin: 0 auto;">
	             
	                 <div class="anime__details__review">
	                     <div class="section-title">
	                         <h5>영화예매</h5>
	                     </div>
	                     
	                     <div class="row">
							<div class="col">
								<div class="step1_head">
									<h6>
		                                영화
		                            </h6>
		                        </div>
		                        <div class="step1_body">
									<div class="movie_title">
										<div class="age">
											<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" style="height: 20px">
										</div>
										<h6>오펜하이머</h6>
									</div>
									<div class="movie_title">
										<div class="age">
											<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" style="height: 20px">
										</div>
										<h6>오펜하이머</h6>
									</div>
		                        </div>
						    </div>
						    
						    <div class="col">
								<div class="step1_head">
									<h6>극장</h6>
		                        </div>
		                        <div class="step1_body">
									<div class="row">
										<div class="col">
											<h6>서울</h6>
										</div>
										<div class="col">
											<h6>강남</h6>
											<h6>서초</h6>
											<h6>용산</h6>
										</div>
									</div>
	                        	</div>
						    </div>
						    
						    <div class="col-2">
								<div class="step1_head">
									<h6>날짜</h6>
		                        </div>
		                        <div class="step1_body">
		                        	<h1>10</h1>
									<h6>월 12</h6>
									<h6>화 13</h6>
									<h6>수 14</h6>
									<h6>목 15</h6>
									<h6>금 16</h6>
									<h6>토 17</h6>
									<h6>일 18</h6>
	                        	</div>
						    </div>
						    
						    <div class="col-4">
								<div class="step1_head">
									<h6>시간</h6>
		                        </div>
		                        <div class="step1_time_body">
		                        	<h6>1관</h6>
									<div class="row">
										<div class="col-4">
											<span style="padding: 1px" class="border border-warning ">17:30</span> 172석
										</div>
										<div class="col-4">
											<span style="padding: 1px" class="border border-warning">17:30</span> 172석
										</div>
										<div class="col-4">
											<span style="padding: 1px" class="border border-warning">17:30</span> 172석
										</div>
										<div class="col-4">
											<span style="padding: 1px" class="border border-warning">17:30</span> 172석
										</div>
										<div class="col-4">
											<span style="padding: 1px" class="border border-warning">17:30</span> 172석
										</div>
										<div class="col-4">
											<span style="padding: 1px" class="border border-warning">17:30</span> 172석
										</div>
									</div>
									<hr>
	                        	</div>
						    </div>
						</div>
						
						
						<div class="row">
							<div class="col">
								<div class="step3_result">
									<div class="res_result">
										<!-- 공간 차지 div -->
									</div>
									<div class="res_result">
										<img src="${pageContext.request.contextPath }/resources/cinepick/img/main_list/mb5.jpg" class="res_img">
									</div>
									<div class="res_result">
										<h6>아이유콘서트: 더 골든아워</h6>
									</div>
									<div class="res_result">
										<h6>극장&emsp;&emsp;센텀시티</h6>
										<h6>일시&emsp;&emsp;2023.10.13</h6>
										<h6>상영관&emsp;1관</h6>
										<h6>인원&emsp;&emsp;</h6>
									</div>
									<div class="res_result">
										<h6>좌석번호&emsp;</h6>
									</div>
									<div class="res_result">
										<input type="button" value="좌석선택" class="res_btn" onclick="location.href='bookingStepTwo'">
									</div>
		                        </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
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


</body>

</html>