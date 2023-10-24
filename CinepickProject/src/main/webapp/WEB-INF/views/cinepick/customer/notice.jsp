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

    
	<div class="container">
		<div class="row">
            <div class="col-lg-10 col-md-8" style="float: none; margin: 0 auto;">
                <div class="anime__details__review">
                    <div class="section-title">
                        <h5>고객센터</h5>
                    </div>
                    <div class="test" id="order_comment">
                        <h5>
                            <a href="qna">자주묻는질문</a>
                             &nbsp;&nbsp;
                            <a style="color: red;">공지사항</a>
                             &nbsp;&nbsp;
                            <a href="oneToOneQna">1:1문의</a>
                        </h5>
                    </div>
					<div class="row">
						<div class="col-3">
							<div class="qna_table_head">
								<h6>
	                                작성일자
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
					<c:forEach var="notice" items="${noticeList }">
						<div class="row">
							<div class="col-3">
								<div class="qna_table_body">
									<h6>
										<fmt:formatDate value="${notice.noticeWriteDate }" pattern="yyyy-MM-dd"/>
		                            </h6>
		                        </div>
						    </div>
						    <div class="col-9">
						    	<a href="noticeDetail?noticeIdx=${notice.noticeIdx} ">
									<div class="qna_table_body">
			                            <h6>
											${notice.noticeTitle }
			                            </h6>
									</div>
								</a>
							</div>
						</div>
						</c:forEach>
<!-- 						<section id="pageList"> -->
<%-- 								[이전] 버튼 표시하여 클릭 시 현재페이지-1 페이지 목록으로 이동 --%>
<%-- 								단, 현재 페이지번호(pageNum)가 1보다 클 경우에만 [이전] 버튼 동작 --%>
<%-- 								<c:choose> --%>
<%-- 									<c:when test="${pageNum > 1 }"> 현재 페이지가 1보다 클 경우(버튼 동작) --%>
<%-- 										<input type="button" value="이전" onclick="location.href='notice?pageNum=${pageNum - 1 }'"> --%>
<%-- 									</c:when> --%>
<%-- 									<c:otherwise> 현재 페이지 1 페이지보다 크지 않을 경우(버튼 비활성화) --%>
<!-- 										<input type="button" value="이전" disabled> -->
<%-- 									</c:otherwise> --%>
<%-- 								</c:choose> --%>
<%-- 								============================================================================ --%>
<%-- 								페이지 번호 목록은 시작페이지부터 끝페이지까지 1씩 증가(차례대로) 표시 --%>
<%-- 								번호 클릭 시 pageNum 파라미터(현재 페이지번호)를 전달하여 BoardList.bo 서블릿 요청 --%>
<%-- 								단, 현재 페이지 번호는 하이퍼링크 제거 및 굵게 표시 --%>
<%-- 								<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }"> --%>
<%-- 									<c:choose> --%>
<%-- 										<c:when test="${pageNum eq i }"> <!-- 현재 페이지일 경우(하이퍼링크 미표시 및 굵게) --> --%>
<%-- 											<b>${i }</b> --%>
<%-- 										</c:when> --%>
<%-- 										<c:otherwise> <!-- 현재 페이지가 아닐 경우(하이퍼링크 표시) --> --%>
<%-- 											<a href="notice?pageNum=${i }">${i }</a>  --%>
<%-- 										</c:otherwise> --%>
<%-- 									</c:choose> --%>
<%-- 								</c:forEach> --%>
<%-- 								============================================================================ --%>
<%-- 								[다음] 버튼 표시하여 클릭 시 현재페이지+1 페이지 목록으로 이동 --%>
<%-- 								단, 현재 페이지번호(pageNum)가 전체 페이지번호보다 작을 경우에만 [다음] 버튼 동작 --%>
<%-- 								<c:choose> --%>
<%-- 									<c:when test="${pageNum < pageInfo.maxPage }"> 현재 페이지가 1보다 클 경우(버튼 동작) --%>
<%-- 										<input type="button" value="다음" onclick="location.href='notice?pageNum=${pageNum + 1 }'"> --%>
<%-- 									</c:when> --%>
<%-- 									<c:otherwise> 현재 페이지 1 페이지보다 크지 않을 경우(버튼 비활성화) --%>
<!-- 										<input type="button" value="다음" disabled> -->
<%-- 									</c:otherwise> --%>
<%-- 								</c:choose> --%>
<!-- 							</section> -->
					
<!-- 					페이징 처리 -->
					<div class="product__pagination" id="pageList">
						<!-- 
						<c:choose>
							<c:when test="${pageNum > 1 }"> 
									<a href="notice?pageNum=${pageNum - 1 }"><i class="fa fa-angle-double-left"></i></a>
							</c:when>
							<c:otherwise>
									<a href="#"><i class="fa fa-angle-double-left"></i></a>
							</c:otherwise>
						</c:choose>
						 -->
						 
						<c:if test="${pageNum > 1 }">
							<a href="notice?pageNum=${pageNum - 1 }"><i class="fa fa-angle-double-left"></i></a>					
						</c:if>
						
						<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
							
						<c:choose>
							<c:when test="${pageNum eq i }">
								<a class="current-page" href="notice?pageNum=${i }">${i }</a>
							</c:when>
							<c:otherwise>
<!-- 									<a class="#"> -->
								<a href="notice?pageNum=${i }">${i }</a> 
							</c:otherwise>
						</c:choose>
							
							
							
							
						</c:forEach>
						
						<c:if test="${pageNum < pageInfo.maxPage }">
							<a href="notice?pageNum=${pageNum + 1 }"><i class="fa fa-angle-double-right"></i></a>					
						</c:if>
						<!--  
						<c:choose>
							<c:when test="${pageNum < pageInfo.maxPage }">
									<a href="notice?pageNum=${pageNum + 1 }"><i class="fa fa-angle-double-right"></i></a>
							</c:when>
							<c:otherwise>
									<a href="#"><i class="fa fa-angle-double-right"></i></a>
							</c:otherwise>
						</c:choose>
						-->
					</div>
				</div>
			</div>
		</div>
	</div>

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