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
    <title>스토어 메인(목록) 페이지</title>

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
                                        <h4>스토어</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
				<!-- 패키지 -->
				
				<div class="lst_wrap">	
				
					<p>
						<font face="맑은 고딕" color="#ffffff">
							<h3>패키지</h3>
						</font>
						<div class="plus">		
							<a href="packageStoreList"> 더보기 &nbsp; </a>
						</div>	
					</p>
						
				
					<div class="section-title">
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
											<a href="${pageContext.request.contextPath }/resources/cinepick/store/store_detail_package1.jsp">fall movie 패키지</a>
										</h5>
										<h5>
											<strong>14,500원</strong>
										</h5>
									</div>
									
								</div>
							</div>
                            
                        	<!-- 패키지 2 -->
                            
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
											<a href="${pageContext.request.contextPath }/resources/cinepick/store/store_detail_package1.jsp">fall movie 패키지</a>
										</h5>
										<h5>
											<strong>14,500원</strong>
										</h5>
									</div>
									
								</div>
							</div>
                            
                        	<!-- 패키지 3 -->
							
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
											<a href="${pageContext.request.contextPath }/resources/cinepick/store/store_detail_package1.jsp">fall movie 패키지</a>
										</h5>
										<h5>
											<strong>14,500원</strong>
										</h5>
									</div>
								</div>
							</div>
							
						</div> <!-- 패키지 1 끝-->
						
                     </div>	<!-- 패키지 끝-->   
                         
                <!-- 스낵 -->
                
                <div class="lst_wrap">	    
               		<p>
						<font face="맑은 고딕" color="#ffffff">
							<h3>스낵</h3>
						</font>
						<div class="plus">		
							<a href="snackStoreList"> 더보기 &nbsp; </a>
						</div>	
					</p>
					
                    <div class="section-title">
					</div>
					
					<!-- 스낵 1 -->
					
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item">
								<a href="storeDetail">
									<div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/snack-1.jpg"></div>
								</a>
								<div class="product__item__text">
									<ul>
										<li>콜라 M</li>
									</ul>
									<h5>
										<a href="storeDetail">콜라 M</a>
									</h5>
									<h5>
										<a href="#"><strong>3,000원</strong></a>
									</h5>
								</div>
							</div>
						</div>
                            
	                    <!-- 스낵 2 -->
	                            
						<h3 class="tit"></h3>
                        <div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item">
								<div class="product__item__pic set-bg"
									data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/snack-2.jpg">
								</div>
								<div class="product__item__text">
									<ul>
										<li>오리지널팝콘L+탄산음료M2</li>
									</ul>
									<h5>
										<a href="#######################">스위트 콤보</a>
									</h5>
									<h5>
										<a href="######################"><strong>10,000원</strong></a>
									</h5>
								</div>
							</div>
						</div>
                            
                        <!-- 스낵 3 -->
                             
						<h3 class="tit"></h3>
                        <div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item">
								<div class="product__item__pic set-bg"
									data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/snack-3.jpg">
								</div>
								<div class="product__item__text">
									<ul>
										<li>오리지널팝콘M2+탄산음료M2</li>
									</ul>
									<h5>
										<a href="########################">더블 콤보</a>
									</h5>
									<h5>
										<a href="#"><strong>14,000원</strong></a>
									</h5>
								</div>
							</div>
						</div>
							
					</div> <!-- 스낵 1 끝-->  
                          
				</div> <!-- 스낵 끝--> 
                      
                <!-- 관람권/포토카드 -->
                
                <div class="lst_wrap">	
                	<p>
						<font face="맑은 고딕" color="#ffffff">
							<h3>관람권/포토카드</h3>
						</font>
						<div class="plus">		
							<a href="ticketStoreList"> 더보기 &nbsp; </a>
						</div>	
					</p>
					
					<div class="section-title">
					</div>
					
					<!-- 관람권/포토카드 1 -->
					
					<div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item">
								<a href="${pageContext.request.contextPath }/cinepick/store/store_detail_ticket1.jsp">
									<div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/ticket-1.jpg">
									</div>
								</a>
								<div class="product__item__text">
									<ul>
										<li>일반관람권1매</li>
									</ul>
									<h5>
										<a href="${pageContext.request.contextPath }/resources/cinepick/store/store_detail_package1.jsp">일반 관람권</a>
									</h5>
									<h5>
										<a href="#"><strong>13,000원</strong></a>
									</h5>
								</div>
							</div>
						</div>
                            
                        <!-- 관람권/포토카드 2 -->
                            
						<h3 class="tit"></h3>
                        <div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item">
								<div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/ticket-2.png">
								</div>
								<div class="product__item__text">
									<ul>
										<li>앞면은 공식포스터/뒷면은 원하는 문구 입력 가능</li>
									</ul>
									<h5>
										<a href="${pageContext.request.contextPath }/resources/cinepick/store/store_detail_package1.jsp">BIFF 2023 공식 포토카드</a>
									</h5>
									<h5>
										<a href="#"><strong>2,000원</strong></a>
									</h5>
								</div>
							</div>
						</div>
                            
                        <!-- 관람권/포토카드 3 -->
                             
						<h3 class="tit"></h3>
                            <div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg"
										data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/ticket-3.png">
									</div>
									<div class="product__item__text">
										<ul>
											<li>앞면은 나만의 사진/뒷면은 원하는 문구 입력 가능</li>
											<!--                                            <li>Movie</li>-->
										</ul>
										<h5>
											<a href="${pageContext.request.contextPath }/resources/cinepick/store/store_detail_package1.jsp">BIFF 2023 프레임 포토카드</a>
										</h5>
										<h5>
											<a href="#"><strong>2,000원</strong></a>
										</h5>
									</div>
								</div>
							</div>
						</div> <!-- 관람권/포토카드 1 끝-->     
					</div>	<!-- 관람권/포토카드 끝--> 
                  
                  
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