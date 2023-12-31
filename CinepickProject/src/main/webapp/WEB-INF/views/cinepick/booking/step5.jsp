<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CINEPICK</title>
<%--     <link href="${pageContext.request.contextPath }/resources/cinepick/css/sb-admin-2.css" rel="stylesheet"> --%>
<%--     <link href="${pageContext.request.contextPath }/resources/cinepick/css/styles.css" rel="stylesheet"> --%>
    
    
    <!-- 예매 완료 css -->
    <link href="${pageContext.request.contextPath }/resources/cinepick/css/step5.css" rel="stylesheet">
    <!-- payComplete css -->
    <link href="${pageContext.request.contextPath }/resources/cinepick/css/payComplete.css" rel="stylesheet">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer_sy.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/styles.css" type="text/css">
    
    <script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/player.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/mixitup.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.slicknav.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/main.js"></script>
	
	<style>
	.cinepickP {
		 margin-left: 450px;
   		 margin-top: 10px;
	}
	
	.movie-info-bottom strong {
	    font-size: 1.2em;
	    color: #59bec9;
	}
	
	.movie-info-bottom strong.white {
	    font-size: 1.2em;
	    color: #c4c4c4;
	}
	</style>
    
    <script>
    
    $(function() {
    	
    	$(".btn").click(function() {
    		
		    $.ajax({
		        url: "bookingStepTwo",  // 서버의 URL로 변경
		        type: "GET",
		        data: { seats: selectedSeats },
		        dataType: "json",
		        success: function(response) {
					console.log("서버로부터의 응답 : " + response);
					$('#output').html(response);
		        },
		        error: function() {
					alert("요청 실패!" + response);
				}
		    });
    	});
    	
    });
    
	$(function() {
		dday();
	});

	function dday() {
		$(".dday").each(function() {
			let dday = new Date($(this).data("sche_date"));
			let now = new Date();
			console.log(now);
			let distance = dday - now;
			let d = Math.floor(distance / (1000 * 60 * 60 * 24)) + 1;
//				$(this).html('D-' + d);
			$(this).html(d + '일');
			
		});
		
	}
    
    
    </script>

</head>
<body>
	
<%-- 	<jsp:include page="../include/main_top.jsp"></jsp:include> --%>
	<jsp:include page="../include/headerTest.jsp"></jsp:include>

<!-- 	<button class="btn">예매 좌석</button> -->
	<div id="result">

	
	</div>

	
	<div id="contents" class="">
	<!-- inner-wrap -->
		<div class="inner-wrap">
			<!-- quick-reserve -->
			<div class="quick-reserve">
				<h2 class="tit purple">예매완료 <!-- 예매완료 --></h2>
	
				<!-- reserve-finish -->
				<div class="reserve-finish">
					<!-- reserve-ininfomation-box -->
					<div class="reserve-ininfomation-box">
						<div class="movie-poster-area">
							<p>
								티켓 예매번호 <!-- 티켓 예매번호 -->
<!-- 								<span class="roboto">9132-389-47509</span> -->
								<span class="roboto">${book.book_id}</span>
							</p>
							<img src="${book.movie_poster }" alt="${book.movie_nameK}" onerror="noImg(this)">
<!-- 							<img src="https://img.megabox.co.kr/SharedImg/2023/10/25/FXFCIlhJ6JEcTfk8BpVkSWvmf84sSpe9_316.jpg" alt="(자막) 그대들은 어떻게 살 것인가" onerror="noImg(this)"> -->
						</div>
	
						<!-- movie-infomation-area -->
						<div class="movie-infomation-area">
							<div class="movie-info-top">
								<p class="tit">
									<strong>예매가 완료되었습니다 <!-- 예매가 완료되었습니다 --><i>!</i></strong>
									
<!-- 										<span class="righten"> <i class="iconset ico-circle-point"></i> 고객님의 상영익일 적립예정 포인트는 고객님의 상영익일 적립예정 포인트는 <em>550P</em>입니다. 입니다.</span> -->
									
								</p>
							</div>
	
							<div class="movie-info-middle">
								<ul class="dot-list gray">
									<li><span>예매영화 <!-- 예매영화 --></span> ${book.movie_nameK}</li>
									<li><span>관람극장/상영관 <!-- 관람극장/상영관 --></span> ${book.theater_name} / ${book.screen_name}</li>
									<li><span>관람일시 <!-- 관람일시 --></span> &nbsp;${book.sche_date} ${book.sche_start_time }</li>
									<li><span>관람인원 <!-- 관람인원 --></span> &nbsp;${book.ticket_type}</li>
									<li><span>좌석번호 <!-- 좌석번호 --></span> &nbsp;${book.seat_list}</li>
<!-- 									<li><span>전화번호 전화번호</span> &nbsp;010-5912-9507</li> -->
									<li>
										<span>결제정보 <!-- 결제정보 --></span>
										<strong class="roboto">${book.total_cost}</strong> 원 <!-- 원 --><br>
										<em></em>
									</li>
								</ul>
							</div>

	
							<!-- movie-info-bottom -->
									<div class="movie-info-bottom">
										<div class="add-send">
		<!-- 								예매정보 추가 발송 예매정보 추가 발송 -->
		<!-- 								<p class="cinipickP">♥ 씨네픽과 함께 즐거운 관람되세요 ♥</p> -->
	<%-- 									<p class="dday" data-sche_date="${ticketBook.sche_date}"></p> --%>
										<p class="cinepickP" style="margin-left: 490px; margin-top: 10px;">씨네픽과 함께라면 누구나 씨네필!</p>
										<p style="float:right;">
											<strong class="roboto white">영화 관람까지</strong>
											<strong class="roboto dday" data-sche_date="${book.sche_date}"></strong>
											<strong class="roboto white">남았습니다.</strong>
										</p>
<!-- 									<a href="#tooltip01_01" class="tooltip hover" title="입력하신 번호로 예매정보를 추가발송합니다."> -->
<!-- 										<span> -->
<!-- 											<i class="iconset ico-question-white">&nbsp;</i> -->
<!-- 										</span> -->
<!-- 										<div class="ir" id="tooltip01_01" data-width="220"> -->
<!-- 											입력하신 번호로 예매정보를 추가발송합니다. 입력하신 번호로 예매정보를 추가발송합니다. -->
<!-- 										</div> -->
<!-- 									</a> -->
<!-- 									<input type="text" title="연락처 입력" class="input-text w150px ml10" maxlength="11" id="inp_sms_rcv_no"> -->
<!-- 									<button type="button" class="button" id="btn_re_send_sms">전송 전송</button> -->
								</div>
							</div>
<!-- 							// movie-info-bottom -->
						</div>
						<!--// movie-infomation-area -->
					</div>
					<!--// reserve-ininfomation-box -->
				</div>
				<!--// reserve-finish -->
	
				<div class="btn-group pt30">
<!-- 					<a href="#" class="button large" w-data="600" h-data="600" id="btn_ticket_print" title="교환권출력">교환권출력 교환권출력</a> -->
<!-- 					<a href="#" class="button large" id="btn_bill_print" title="영수증출력">영수증출력 영수증출력</a> -->
<!-- 					<a href="/mypage/bookinglist?tab=01" class="button purple large" title="예매내역 페이지로 이동">예매내역 예매내역</a> -->
					<a href="userMoviePurchaseList" class="button purple large" title="예매내역 페이지로 이동">예매내역 <!-- 예매내역 --></a>
				</div>
	
				<div class="box-border v1 mt10">
					<ul class="dot-list gray">
						<li>
							상영안내 <!-- 상영안내 -->
							<ul class="dash-list">
								<li>쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>
								<li>지연입장에 의한 관람불편을 최소화하고자 본 영화는 10분 후 시작됩니다.</li>
								<li>상영시간 20분전까지 취소 가능하며, 캡쳐화면으로는 입장하실 수 없습니다.</li>
							</ul>
						</li>
								
	
<!-- 						<li class="mt20"> -->
<!-- 							주차안내 주차안내 -->
<!-- 								<ul class="dash-list"> -->
<!-- 									<li>장전 지구대 옆 라퓨타 타워 주차장 이용시 당일 관람 고객에 한해 3시간 무료적용 (매표소에서 주차 확인 도장 받으세요)</li> -->
<!-- 									<li>주차장 운영시간은 23시까지로 21시 이후 주차불가(수입차,비스토,아토스,레이,승합차량 및 RV,SUV-등 대형차량 및 소형SUV  주차불가) </li> -->
<!-- 								</ul> -->
<!-- 						</li>		 -->
					</ul>
				</div>
				
		</div>
		<!--// quick-reserve -->
	</div>
	<!--// inner-wrap -->
	<br>
	<br>
	<br>
</div>
	
<%-- 	<jsp:include page="../include/main_footer.jsp"></jsp:include> --%>
	<jsp:include page="../include/footerTest.jsp"></jsp:include>

<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/seat.js"></script> --%>

</body>
</html>