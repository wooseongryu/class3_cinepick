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
						<div class="step4_head">
							<h6>
                                예매완료
                            </h6>
                        </div>
                        <div class="step4_body">
							<div class="res_final">
								<div>
									<h2>예매가 완료되었습니다 !</h2>
								</div>
								<div class="step4_result">
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
									</div>
								</div>
								<div class="res_result">
									<input type="button" value="예매확인 / 취소" class="fin_btn">
								</div>
							</div>
                        </div>
				    </div>
				</div>
				
				<!-- step4_result 영역 -->				
				<div class="row">
					<div class="col">
						<div class="step4_result">
							<div class="res_final">
								<h6>예매 유의사항</h6>
								CINEPICK 포인트는 상영일 익일 적립됩니다.<br>
								영화 상영 스케쥴은 영화관사정에 의해 변경될 수 있습니다.
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
		
		
	
	</script>

</body>

</html>