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
    <title>이벤트 메인(목록) 페이지</title>

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
    
    <style type="text/css">
	.plus {
		text-align: right;
	}
	</style>
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
										<h4>이벤트</h4>
									</div>
								</div>
							</div>
						</div>
                        
						<!-- 영화 1 -->
					<div class="lst_wrap">
							<p>
								<font face="맑은 고딕" color="#ffffff">
									<h3>영화</h3>
								</font>
								<div class="plus">		
									<a href="movieEventList"> 더보기 &nbsp; </a>
								</div>	
							</p>
							<div class="section-title">
							</div>
					
	                        <div class="row">
	                            <div class="col-lg-4 col-md-6 col-sm-6">
	                                <div class="product__item">
										<a href="eventDetail">
											<img src="${pageContext.request.contextPath }/resources/cinepick/img/event/movie-1.jpg">
											<div class="itm_tit">
											</div>
											<br>
											<div class="itm_date">2023.10.14 ~ 2023.10.20</div>
										</a>
	                                </div>
	                            </div>
                            
	                        	<!-- 영화 2 -->
	                            
								<h3 class="tit"></h3>
	                            <div class="col-lg-4 col-md-6 col-sm-6">
	                                <div class="product__item">
										<a href="############################">
											<img src="${pageContext.request.contextPath }/resources/cinepick/img/event/movie-2.jpg">
											<div class="itm_tit">
											</div>
											<br>
											<div class="itm_date">2023.10.12 ~ 2023.10.22</div>
										</a>
	                                </div>
	                            </div>
                            
                        		<!-- 영화 3 -->
                             
								<h3 class="tit"></h3>
	                            <div class="col-lg-4 col-md-6 col-sm-6">
	                                <div class="product__item">
										<a href="############################">
											<img src="${pageContext.request.contextPath }/resources/cinepick/img/event/movie-3.jpg">
											<div class="itm_tit">
											</div>
											<br>
											<div class="itm_date">2023.10.11 ~ 2023.10.17</div>
										</a>
	                                </div>
	                            </div>
							</div>
							<!-- row 끝 -->
						</div>
						<!-- lst_wrap 끝 -->
                            
		                <!-- 시사회/무대인사 1 -->
		                <div class="lst_wrap">	 
		                    <p>
								<font face="맑은 고딕" color="#ffffff">
									<h3>시사회/무대인사</h3>
								</font>
								<div class="plus">		
									<a href="previewEventList"> 더보기 &nbsp; </a>
								</div>	
							</p>
						
		                    <div class="section-title">
							</div>
					
	                        <div class="row">
	                            <div class="col-lg-4 col-md-6 col-sm-6">
	                                <div class="product__item">
										<a href="############################">	
											<img src="${pageContext.request.contextPath }/resources/cinepick/img/event/preview-1.jpg">
											<div class="itm_tit">
											</div>
											<br>
											<div class="itm_date">2023.10.14 ~ 2023.10.15</div>
										</a>
	                                </div>
	                            </div>
                            
                        		<!-- 시사회/무대인사 2 -->
                            
								<h3 class="tit"></h3>
	                            <div class="col-lg-4 col-md-6 col-sm-6">
	                                <div class="product__item">
										<a href="############################">	
											<img src="${pageContext.request.contextPath }/resources/cinepick/img/event/preview-2.jpg">
											<div class="itm_tit">
											</div>
											<br>
											<div class="itm_date">2023.10.14 ~ 2023.10.15</div>
										</a>
	                                </div>
	                            </div>
                            
                        		<!-- 시사회/무대인사 3 -->
                             
								<h3 class="tit"></h3>
	                            <div class="col-lg-4 col-md-6 col-sm-6">
	                                <div class="product__item">
										<a href="############################">	
											<img src="${pageContext.request.contextPath }/resources/cinepick/img/event/preview-3.jpg">
											<div class="itm_tit">
											</div>
											<br>
											<div class="itm_date">2023.10.14 ~ 2023.10.15</div>
										</a>
	                                </div>
	                            </div>
                        	</div>
                        </div>
                        <!-- lst_wrap 끝 -->
                        
		                <!-- 극장별 1 --> 
		                <div class="lst_wrap">	    
		               		<p>
								<font face="맑은 고딕" color="#ffffff">
									<h3>극장별</h3>
								</font>
								<div class="plus">		
									<a href="theaterEventList"> 더보기 &nbsp; </a>
								</div>	
							</p>	
					
							<div class="section-title">
							</div>
	                        <div class="row">
	                            <div class="col-lg-4 col-md-6 col-sm-6">
	                                <div class="product__item">
										<a href="############################">
											<img src="${pageContext.request.contextPath }/resources/cinepick/img/event/theater-1.jpg">
											<div class="itm_tit">
											</div>
											<br>
											<div class="itm_date">2023.10.04 ~ 2023.12.03</div>
										</a>
	                                </div>
	                            </div>
                            
                        		<!-- 극장별 2 -->
                            
								<h3 class="tit"></h3>
	                            <div class="col-lg-4 col-md-6 col-sm-6">
	                                <div class="product__item">
										<a href="############################">	
											<img src="${pageContext.request.contextPath }/resources/cinepick/img/event/theater-2.jpg">
											<div class="itm_tit">
											</div>
											<br>
											<div class="itm_date">2023.10.01 ~ 2023.11.30</div>
										</a>
	                                </div>
	                            </div>
                            
                       			<!-- 극장별 3 -->
                             
								<h3 class="tit"></h3>
	                            <div class="col-lg-4 col-md-6 col-sm-6">
	                                <div class="product__item">
										<a href="############################">
											<img src="${pageContext.request.contextPath }/resources/cinepick/img/event/theater-3.jpg">
											<div class="itm_tit">
											</div>
											<br>
											<div class="itm_date">2023.09.21 ~ 2023.12.31</div>
										</a>
									</div>
								</div>
							</div>
							<!-- row 끝 -->    
						</div>
						<!-- lst_wrap 끝 -->
	                </div>
	                <!-- product__page__content 끝 -->
				</div>
				<!-- col 끝 -->
			</div>
			<!-- row 끝 -->
		</div>
		<!-- div 컨테이너 끝 -->
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