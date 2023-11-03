<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	                        <h5>자주묻는질문</h5>
	                    </div>
	                    <div class="test" id="order_comment">
	                        <h5>
	                            <a href="qna" style="color: #503396;">자주묻는질문</a>
	                             &nbsp;&nbsp;
	                            <a href="notice">공지사항</a>
	                             &nbsp;&nbsp;
	                            <a href="oneToOneQna">1:1문의</a>
	                        </h5>
	                    </div>
						<div class="row">
						<c:forEach var="qnaCate" items="${qnaCateList }">
							<div class="col">
								<div class="customer_category" name="${qnaCate.qnaCateSubject}" 
								<c:if test="${qnaCate.qnaCateIdx eq param.qnaCateIdx}">style="background: #503396" 
								</c:if> onclick="location.href='qna?qnaCateIdx=${qnaCate.qnaCateIdx}'" >
									<h6 <c:if test="${qnaCate.qnaCateIdx eq param.qnaCateIdx}"> style="color: #ffffff" </c:if>>${qnaCate.qnaCateSubject }</h6>
								</div>
							</div>
						</c:forEach>
						</div>
						<div class="row">
							<div class="col-3">
								<div class="qna_table_head">
									<h6>
		                                카테고리
		                            </h6>
		                        </div>
						    </div>
						    <div class="col-9">
								<div class="qna_table_head">
		                            <h6>
		                                제목
		                            </h6>
								</div>
							</div>
						</div>
						<c:forEach var="qna" items="${qnaList }">
							<div class="row">
								<div class="col-3">
									<div class="qna_table_body">
										<h6>${qna.qnaCateSubject }</h6>
			                        </div>
							    </div>
							    <div class="col-9">
							    	<a href="qnaDetail?qnaIdx=${qna.qnaIdx} ">
										<div class="qna_table_body">
				                            <h6>
												${qna.qnaTitle }
				                            </h6>
										</div>
									</a>
								</div>
							</div>
						</c:forEach>
						<div class="product__pagination" id="pageList">
							<c:if test="${pageNum > 1 }">
								<a href="qna?qnaCateIdx=${param.qnaCateIdx }&pageNum=${pageNum - 1 }"><i class="fa fa-angle-double-left"></i></a>					
							</c:if>
							<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
								<c:choose>
									<c:when test="${pageNum eq i }">
										<a class="current-page" href="qna?qnaCateIdx=${param.qnaCateIdx }&pageNum=${i }">${i }</a>
									</c:when>
									<c:otherwise>
		<!-- 									<a class="#"> -->
										<a href="qna?qnaCateIdx=${param.qnaCateIdx }&pageNum=${i }">${i }</a> 
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${pageNum < pageInfo.maxPage }">
								<a href="qna?qnaCateIdx=${param.qnaCateIdx }&pageNum=${pageNum + 1 }"><i class="fa fa-angle-double-right"></i></a>					
							</c:if>
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
