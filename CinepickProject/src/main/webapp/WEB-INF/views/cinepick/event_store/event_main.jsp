<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
<script type="text/javascript">

</script>


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
	            <div class="col-lg-10 col-md-8" style="float: none; margin: 0 auto;">
	                <div class="anime__details__review">
	                    <div class="section-title">
	                        <h5>이벤트 메인페이지</h5>
	                    </div>
						<div class="row">
						<c:forEach var="eventCate" items="${eventCateList }">
							<div class="col-lg-2">
								<div class="customer_category" name="${eventCate.eventCate_Subject}" <c:if test="${eventCate.eventCate_Idx eq param.eventCate_Idx}">style="background: red" </c:if> onclick="location.href='eventList?eventCate_Idx=${eventCate.eventCate_Idx}'" >
									<h6>${eventCate.eventCate_Subject }</h6>
								</div>
							</div>
						</c:forEach>
						</div>
						<div class="row">
						    <div class="col-lg-12">
							<c:forEach var="eventCate" items="${eventCateList }">
			                    <div class="section-title">
			                        <h5>${eventCate.eventCate_Subject }</h5>
			                    </div>
								<div class="row">
									<c:forEach var="event" items="${eventList }">
										<section>
											<c:if test="${event.event_category eq eventCate.eventCate_Idx }">
										    	&nbsp;&nbsp;<a href="eventDetail?event_idx=${event.event_idx} ">
												<img src ="${pageContext.request.contextPath }/resources/upload/${event.event_thumbnail }" width="200" height="100"></a>&nbsp;&nbsp;
												<h6>${event.event_startDt } ~ ${event.event_endDt }</h6>
											</c:if>
										</section>
									</c:forEach>
								</div>
							</c:forEach>
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
<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.3.1.min.js"></script> --%>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/player.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/mixitup.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.slicknav.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/main.js"></script>

</body>

</html>
