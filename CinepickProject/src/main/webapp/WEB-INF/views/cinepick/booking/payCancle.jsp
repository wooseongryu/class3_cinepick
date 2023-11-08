<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CINEPICK</title>
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
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
    
    <script>
    
//     function hello() {
//     	alert('헬로');
//     }
	  function cancelPay() {
	    jQuery.ajax({
	      // 예: http://www.myservice.com/payments/cancel
	      "url": "https://api.iamport.kr/payments/cancel", 
	      "type": "POST",
	//       "type": "GET",
	      "contentType": "application/json",
	      "data": JSON.stringify({
	        "merchant_uid": "ORD20231108110338", // 예: ORD20180131-0000011
	        "cancel_request_amount": 26000, // 환불금액
	        "reason": "테스트 결제 환불", // 환불사유
	        // [가상계좌 환불시 필수입력] 환불 수령계좌 예금주
	        "refund_holder": "홍길동", 
	        // [가상계좌 환불시 필수입력] 환불 수령계좌 은행코드(예: KG이니시스의 경우 신한은행은 88번)
	        "refund_bank": "88", 
	        // [가상계좌 환불시 필수입력] 환불 수령계좌 번호
	        "refund_account": "56211105948400" 
	      }),
	      "dataType": "json"
	    });
	  }
	</script>
    

</head>
<body class="body-iframe">

<%-- 	<jsp:include page="../include/main_top.jsp"></jsp:include> --%>
	<jsp:include page="../include/headerTest.jsp"></jsp:include>
	
	<br>
	<br>
	
	<div id="preloder">
        <div class="loader"></div>
    </div>
    
    스케줄 번호 : ${param.sche_idx }
    권종 : ${param.allTickets }
    좌석 : ${param.seats }
    매수 : ${param.total }
    총액 : ${param.moneySum }
   	영화명 : ${param.movie_nameK }
    관람가 : ${param.movie_rated }

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>





<button onclick="cancelPay()">환불하기</button>
<button onclick="hello()">헬로</button>
<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>

<%-- 	<jsp:include page="../include/main_footer.jsp"></jsp:include> --%>
	<jsp:include page="../include/footerTest.jsp"></jsp:include>
	

</body>
</html>