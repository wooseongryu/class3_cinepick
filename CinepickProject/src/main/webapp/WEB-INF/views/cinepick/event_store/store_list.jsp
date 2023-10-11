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
	<title>Anime | Template</title>
	
	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	
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
								<div class="col-lg-8 col-md-8 col-sm-6">
									<div class="section-title">
										<h4>스토어</h4>
									</div>
								</div>
							</div>
						</div>

						<!-- 이미지 1 -->

						<div class="row">
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<a href="storeDetail">
										<div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/popular-1.jpg">
											<div class="ep">마감 임박</div>
										</div>
									</a>
									<div class="product__item__text">
										<ul>
											<li>2D일반관람권1매+오리지널팝콘M1매</li>
										</ul>
										<h5>
											<a href="${pageContext.request.contextPath }/cinepick/event_store/store_detail.jsp">fall movie 패키지</a>
										</h5>
										<h5>
											<strong>14,500원</strong>
										</h5>
									</div>
								</div>
							</div>

							<!-- 이미지 2 -->

							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/popular-2.jpg">
										<div class="ep">마감 임박</div>
									</div>
									<div class="product__item__text">
										<ul>
											<li>2D영화관람권2매+스위트콤보1매</li>
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

							<!-- 이미지 3 -->

							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/popular-3.jpg">
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

							<!-- 이미지 4 -->

							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/popular-4.jpg"></div>
									<div class="product__item__text">
										<ul>
											<li><극장판 엉덩이 탐정4>전용 2D영화관람권 2매</li>
										</ul>
										<h5>
											<a href="#">미스터리 가면 2인 관람권</a>
										</h5>
										<h5>
											<a href="#"><strong>22,000원</strong></a>
										</h5>
									</div>
								</div>
							</div>

							<!-- 이미지 5 -->

							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/popular-5.jpg"></div>
									<div class="product__item__text">
										<ul>
											<li><극장판 미스터리 가면>전용 2D영화관람권 2매+스위트콤보교환권1매</li>
										</ul>
										<h5>
											<a href="#">미스터리 가면 2인 패키지</a>
										</h5>
										<h5>
											<a href="#"><strong>30,000원</strong></a>
										</h5>
									</div>
								</div>
							</div>

							<!-- 이미지 6 -->

							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/popular-6.jpg"></div>
									<div class="product__item__text">
										<ul>
											<li>콜라 M</li>
										</ul>
										<h5>
											<a href="#">콜라 M</a>
										</h5>
										<h5>
											<a href="#"><strong>3,000원</strong></a>
										</h5>
									</div>
								</div>
							</div>

							<!-- 이미지 7 -->

							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/popular-7.jpg"></div>
									<div class="product__item__text">
										<ul>
											<li>오리지널팝콘L+탄산음료M2</li>
										</ul>
										<h5>
											<a href="#">스위트 콤보</a>
										</h5>
										<h5>
											<a href="#"><strong>10,000원</strong></a>
										</h5>
									</div>
								</div>
							</div>

							<!-- 이미지 8 -->

							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/popular-8.jpg"></div>
									<div class="product__item__text">
										<ul>
											<li>오리지널팝콘M2+탄산음료M2</li>
										</ul>
										<h5>
											<a href="#">더블 콤보</a>
										</h5>
										<h5>
											<a href="#"><strong>14,000원</strong></a>
										</h5>
									</div>
								</div>
							</div>

							<!-- 이미지 9 -->

							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/popular-9.jpg"></div>
									<div class="product__item__text">
										<ul>
											<li>일반관람권1매</li>
										</ul>
										<h5>
											<a href="#">일반 관람권</a>
										</h5>
										<h5>
											<a href="#"><strong>13,000원</strong></a>
										</h5>
									</div>
								</div>
							</div>
						</div>
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