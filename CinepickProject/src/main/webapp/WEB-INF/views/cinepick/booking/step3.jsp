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
    <title>영화예매</title>

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
    

</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	<header>
		<jsp:include page="../include/main_top.jsp"></jsp:include>
	</header>
	
<!-- 	<input type="hidden" id="allTickets" name="allTickets"> -->
<!-- 	<input type="hidden" id="seats" name="seats"> -->
	
	<div id="test">
		하하
<%-- 		a: ${allTickets } // --%>
<%-- 		a: ${seats } //  --%>
		p: ${param.allTickets } //
		p: ${param.seats } //
<%-- 		r: ${response.allTickets }  // --%>
<%-- 		r: ${response.seats } // --%>
	</div>

    
	<div class="container">
		<div class="row">
		
             <div class="col-lg-11 col-md-8" style="float: none; margin: 0 auto;">
             
                 <div class="anime__details__review">
                     <div class="section-title">
                         <h5>영화예매</h5>
                     </div>
                 </div>   
                 
                 <div class="row">
					<div class="col">
						<div class="step3_head">
							<h6>
                                결제
                            </h6>
                        </div>
                        <div class="step3_body">
							<div class="movie_payment">
								
								<div class="pay_step">
									<h5>STEP1. 포인트</h5>
									<div>
										<b>CINEPICK 포인트</b><br>
										보유 포인트&emsp;7400원&emsp;&emsp;&emsp;
										사용할 포인트&emsp;<input type="text" id="point_text"> 원
										<input type="checkbox" > 모두사용
									</div>
								</div>
							</div>
							<div class="movie_payment">
								<div class="pay_step">
									<h5>STEP2. 관람권</h5>
									<div>
										사용할 관람권이 없습니다.
									</div>
								</div>
							</div>
							<div class="movie_payment">
								<div class="pay_step">
									<h5>STEP.3 최종 결제수단</h5>
									<div class="pay_step3">
										<input type="radio" name="pay_radio" id="pay_radio0"  value="0">
										<label for="pay_radio0">신용카드</label>
										<input type="radio" name="pay_radio" id="pay_radio1" value="1">
										<label for="pay_radio1">카카오페이</label>
										<input type="radio" name="pay_radio" id="pay_radio2" value="2">
										<label for="pay_radio2">토스페이</label>
										<input type="radio" name="pay_radio" id="pay_radio3" value="3">
										<label for="pay_radio3">네이버페이</label>
									</div>
								</div>
								<hr>
								<div class="pay_step3">
									<div class="transfer_wrap">
										<div id="pay_card" style="display: none;">
											<select class="form-select">
												<option selected>카드를 선택하세요.</option>
												<option value="1">신한카드</option>
												<option value="2">국민카드</option>
												<option value="3">삼성카드</option>
												<option value="3">현대카드</option>
												<option value="3">우리카드</option>
												<option value="3">BC카드</option>
											</select>
										</div>
										<div id="pay_k" style="display: none;">
											<h6>카카오페이 결제 순서</h6>
											1. 우측 하단에 있는 "결제하기"버튼을 클릭해주세요.<br>
											2. 예매내역 확인 후 결제하기 버튼 클릭 시 '카카오페이' 결제 인증창이 뜹니다.<br>
											3. '카카오페이'결제 인증창에서 정보를 입력하신 후 결제해주세요.<br>
										</div>
										<div id="pay_t" style="display: none;">
											<h6>토스 결제 순서</h6>
											1. 우측 하단에 있는 "결제하기"버튼을 클릭해주세요.<br>
											2. 예매내역 확인 후 결제하기 버튼 클릭 시 '토스' 결제 인증창이 뜹니다.<br>
											3. '토스'결제 인증창에서 정보를 입력하신 후 결제해주세요.<br>
										</div>
										<div id="pay_n" style="display: none;">
											<h6>네이버페이 결제 순서</h6>
											1. 우측 하단에 있는 "결제하기"버튼을 클릭해주세요.<br>
											2. 예매내역 확인 후 결제하기 버튼 클릭 시 '네이버페이' 결제 인증창이 뜹니다.<br>
											3. '네이버페이'결제 인증창에서 정보를 입력하신 후 결제해주세요.<br>
										</div>
									</div>
								</div>
							</div>
                        </div>
				    </div>
				    
				<!-- res_pay 영역 -->					    
				    <div class="col-2">
						<div class="step3_head">
							<h6>
                               	결제 금액
                            </h6>
                        </div>
                        <div class="step3_body" >
							<div class="res_pay">
								<h6>결제하실 금액</h6>
								<h6>20,000원</h6>
							</div>
							<div class="res_pay">
								<h6>포인트 사용</h6>
								<h6>5,000원</h6>
							</div>
							<div class="res_pay">
								<h6>남은 결제금액</h6>
								<h6>15,000원</h6>
							</div>
							

							
                       	</div>
				    </div>
				    
				</div>
				
				<!-- step3_result 영역 -->				
				<div class="row">
					<div class="col">
						<div class="step3_result">
							<div class="res_result">
								<input type="button" value="좌석선택" class="pre_btn" onclick="location.href='bookingStepTwo'">
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
								<h6>인원&emsp;&emsp;1명</h6>
							</div>
							<div class="res_result">
								<h6>좌석번호&emsp;F10</h6>
										${param.allTickets }
										${param.seats }
							</div>
							
							<div id="testDiv">
								테스트 디브!
							</div>
							
							<div class="res_result">
								<input type="button" value="결제하기" class="res_btn" onclick="location.href='bookingStepFour'">
								<!-- 엄성윤 test 추가 -->
								<input type="button" value="Test2" class="test" id="testBtn" onclick="#">
								<input type="button" value="결제Test_엄성윤" class="btn_booking_pay" onclick="location.href='reserve'">
							</div>
                        </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	




   	<footer>
		<jsp:include page="../include/main_footer.jsp"></jsp:include>
	</footer>

	<!-- Js Plugins -->
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
<%-- 	<script src="${pageContext.request.contextPath }/cinepick/js/jquery-3.3.1.min.js"></script> --%>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/player.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/mixitup.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.slicknav.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/main.js"></script>
	<script type="text/javascript">
		$(function() {
			
			let allTickets = "${param.allTickets}";
			let seats = "${param.seats}";
			
// 			$("input[type=radio][name=pay_radio]").on("click", function(){})
// 			$("input[type=radio][name=pay_radio]").on("click", () => {})
			
			
			$("input[type=radio][name=pay_radio]").on("click", function() {
				
				let ckv = $(this).val();
				$.each($('.transfer_wrap').children(), function (index, el) {
					debugger;
					var attr = ckv == index ? 'block' : 'none';
					$(el).css('display', attr);
					
					
				});
				
			});
			
			// sy
			
			$(".res_result").text($("#seats").val());
			
			$(".btn_booking_pay").click(function() {
				
// 				allTickets = ${param.allTickets};
// 				seats = ${param.seats};
				console.log(allTickets + seats);
				
			});
			
			$(".test").click(function() {
				
// 				allTickets = "${param.allTickets}";
// 				seats = "${param.seats}";
				
				console.log(allTickets + seats);
				
				
				$("#testDiv").text(allTickets + seats);
				
			});
			
			
			$("#testBtn").click(function() {
				
				
				console.log(allTickets + seats);
				
				$("#testDiv").text(allTickets + seats);
				
			});
			
			$.ajax({
			    type: "GET",
			    url: "reserve",
// 			    data: { dataToSend : "데이터" },
			    data: { allTickets : allTickets,
				    	seats : seats },
			    dataType: "text",
			    success: function(response) {
			        // 서버에서 반환된 응답을 처리
// 			        console.log(response);
// 			        $("#output").html(seats);
			    },
			    error: function() {
					alert("실패!");
				}
			});
			
		});
		
	
	</script>

</body>

</html>