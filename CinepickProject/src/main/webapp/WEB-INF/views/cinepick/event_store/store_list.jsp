<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="zxx">

<head> 
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>패키지 스토어 페이지</title>

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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/style.css" type="text/css">
    
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



    <!-- Product Section Begin -->
    <section class="product-page spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product__page__content">
                        <div class="product__page__title">
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="section-title">
                                        <h4>스토어</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
				<!-- 패키지 -->
				
				<div class="lst_wrap">	
					<div class="section-title">
						<p>
							<font face="맑은 고딕" color="#ffffff">
								<c:choose>
                                	<c:when test="${category eq 'package' }">
                                		<h3>패키지</h3>
                                	</c:when>
                                	<c:when test="${category eq 'snack' }">
                                		<h3>스낵</h3>
                                	</c:when>
									<c:otherwise>
										<h3>관람권/포토카드</h3>
									</c:otherwise>
                                </c:choose>
							</font>
						</p>
					</div>
					
						<!-- 패키지 1 -->
						
                        <div class="row">
                            <div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<a href="storeDetail">
										<div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/package-1.jpg">
											<div class="ep">마감 임박</div>
										</div>
									</a>
									<div class="product__item__text">
										<ul>
											<li>2D일반관람권1매+오리지널팝콘M1매</li>
										</ul>
										<h5>
											<a href="storeDetail">fall movie 패키지</a>
										</h5>
										<h5>
											<strong>14,500원</strong>
										</h5>
									</div>
									
								</div>
							</div>
                            
                        <!-- 패키지 2 -->
                            
						<h3 class="tit"></h3>
                            <div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg"
										data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/package-2.jpg">
										<div class="ep">마감 임박</div>
									</div>
									<div class="product__item__text">
										<ul>
											<li>2D영화관람권2매+스위트콤보1매</li>
											<!--                                            <li>Movie</li>-->
										</ul>
										<h5>
											<a href="#">forever movie 패키지</a>
										</h5>
										<h5>
											<a href="#"><strong>28,000원</strong></a>
										</h5>
									</div>
								</div>
							</div>
                            
                        <!-- 패키지 3 -->
                             
						<h3 class="tit"></h3>
                            <div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg"
										data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/package-3.jpg">
										<div class="ep">마감 임박</div>
									</div>
									<div class="product__item__text">
										<ul>
											<li>아시아 로맨스 기획전X3 2D영화관람권 각 1매씩 총 3매</li>
										</ul>
										<h5>
											<a href="#">2023 아시아 로맨스 기획전 관람권 패키지</a>
										</h5>
										<h5>
											<a href="#"><strong>21,000원</strong></a>
										</h5>
									</div>
								</div>
							</div>
						</div> <!-- 패키지 1 끝-->
                      
                         
               		 	<!-- 패키지 4 -->
					
                        <div class="row">
                            <div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg"
										data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/package-4.jpg">
									</div>
									<div class="product__item__text">
										<ul>
											<li>[1947보스톤]전용 2D영화관람권 1매</li>
										</ul>
										<h5>
											<a href="#">[1947보스톤]전용 1인 패키지</a>
										</h5>
										<h5>
											<a href="#"><strong>8,000원</strong></a>
										</h5>
									</div>
								</div>
							</div>
                            
                        <!-- 패키지 5 -->
                            
						<h3 class="tit"></h3>
                            <div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg"
										data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/package-5.jpg">
									</div>
									<div class="product__item__text">
										<ul>
											<li>[미스터리가면]전용 2D영화관람권 2매</li>
										</ul>
										<h5>
											<a href="#">[미스터리가면]전용 2인 패키지</a>
										</h5>
										<h5>
											<a href="#"><strong>22,000원</strong></a>
										</h5>
									</div>
								</div>
							</div>
                            
                        <!-- 패키지 6 -->
                             
						<h3 class="tit"></h3>
                           <div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg"
										data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/package-6.jpg">
									</div>
									<div class="product__item__text">
										<ul>
											<li>[미스터리가면]전용 2D영화관람권 2매+2D영화관람권2매+스위트콤보1매</li>
											<!--                                            <li>Movie</li>-->
										</ul>
										<h5>
											<a href="#">[미스터리가면]전용 2인 콤보 패키지</a>
										</h5>
										<h5>
											<a href="#"><strong>30,000원</strong></a>
										</h5>
									</div>
								</div>
							</div>
                        </div> <!-- 패키지 4 끝-->  
                   	</div>	<!-- 패키지 끝-->  
                     
                </div>
			</div>
		</div>
	</div>
</section>
<!-- Product Section End -->

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