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

</head>
<body class="body-iframe">
	<h1>hiddenTest1</h1>
	<form action="hiddenTest2" method="post">
		<input type="hidden" id="number" name="number" value="1">
		<input type="hidden" id="string" name="string" value="가나다">
		<input type="submit" value="전송">
	</form>
	
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
	
</body>
</html>