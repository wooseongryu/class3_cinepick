<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/customer-center.css" type="text/css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	<c:set var="pageNum" value="1" />
	<c:if test="${not empty param.pageNum }">
		<c:set var="pageNum" value="${param.pageNum }" />
	</c:if>


	<header>
		<jsp:include page="../include/main_top.jsp"></jsp:include>
	</header>

    <section class="product-page spad">
		<div class="container">
			<div class="row">
	            <div class="col-lg-10 col-md-8" style="float: none; margin: 0 auto;">
	                <div class="anime__details__review">
	                    <div class="section-title">
	                        <h5>고객센터</h5>
	                    </div>
	                    <div class="test" id="order_comment">
	                        <h5>
	                            <a href="movieEventList">영화</a>
	                             &nbsp;&nbsp;
	                            <a href="previewEventList">시사회/무대인사</a>
	                             &nbsp;&nbsp;
	                            <a href="theaterEventList">극장</a>
	                        </h5>
	                    </div>
						<div class="row">
						    <div class="col-lg-12">
								<div class="row">
									<c:forEach var="movieEvent" items="${movieEventList }">
										<section>
									    	&nbsp;&nbsp;<a href="eventDetail?event_idx=${movieEvent.event_idx} ">
											<img src ="${pageContext.request.contextPath }/resources/upload/${movieEvent.event_thumbnail }" width="200" height="100"></a>&nbsp;&nbsp;
											<h6>${movieEvent.event_startDt } ~ ${movieEvent.event_endDt }</h6>
										</section>
									</c:forEach>
								</div>
							</div>
						</div>
						
	<!-- 					페이징 처리 -->
						<div class="product__pagination" id="pageList">
							<c:if test="${pageNum > 1 }">
								<a href="movieEventList?pageNum=${pageNum - 1 }"><i class="fa fa-angle-double-left"></i></a>					
							</c:if>
							<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
								<c:choose>
									<c:when test="${pageNum eq i }">
										<a class="current-page" href="eventDetail?pageNum=${i }">${i }</a>
									</c:when>
									<c:otherwise>
										<a href="movieEventList?pageNum=${i }">${i }</a> 
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${pageNum < pageInfo.maxPage }">
								<a href="movieEventList?pageNum=${pageNum + 1 }"><i class="fa fa-angle-double-right"></i></a>					
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	<section>
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