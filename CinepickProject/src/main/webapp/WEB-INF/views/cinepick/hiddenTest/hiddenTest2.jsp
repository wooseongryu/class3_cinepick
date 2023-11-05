<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CINEPICK</title>
    <link href="${pageContext.request.contextPath }/resources/cinepick/css/sb-admin-2.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/cinepick/css/styles.css" rel="stylesheet">
    
<!--     개인 css 엄성윤 -->
    <link href="${pageContext.request.contextPath }/resources/cinepick/css/seat.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/cinepick/css/book.css" rel="stylesheet">
    
    <!-- 좌석 바깥 부분 css -->
    <link href="${pageContext.request.contextPath }/resources/cinepick/css/book_iframe.css" rel="stylesheet">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">
    
    <script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>

</head>
<body class="body-iframe">
	<h1>hiddenTest2</h1>
	파람 넘버 ${param.number}
	파람 스트링 ${param.string}
	${number }
	${string }
	
	<button id="test">테스트</button>
	
	<script>
		$(function() {
			
			$("#test").click(function() {
				
				console.log("나오라고: " + ${param.sche_idx});
			});
			
		});
	</script>
	
</body>
</html>