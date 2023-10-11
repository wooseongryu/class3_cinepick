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
								<div class="col-lg-8">
									<div class="section-title">
										<h4>이벤트</h4>
									</div>
								</div>
								<!-- 현재 롯데시네마 이벤트 페이지 연동 이후 변경 예정 -->
								<a href="https://event.lottecinema.co.kr/NLCHS/Event/WinnerList">
									&nbsp; 당첨자 발표 &nbsp; | &nbsp; </a> 
								<a href="https://www.lottecinema.co.kr/NLCHS/MyCinema/MyEvent?mTab=3&amp;sTab=1">
									&nbsp; 응모내역 &nbsp; | &nbsp; </a> 
								<a href="https://event.lottecinema.co.kr/NLCHS/Event/PastEventList">
									&nbsp; 지난 이벤트 &nbsp;</a>
							</div>
						</div>

						<!-- 영화 1 -->
						<div class="lst_wrap">
							<div class="section-title">
								<p>
									<font face="맑은 고딕" color="#ffffff">
										<h3>영화</h3>
									</font>
								</p>
							</div>

							<div class="row">
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<a href="eventDetail">
											<img src="https://caching.lottecinema.co.kr//Media/Event/5a71f774e1154f34b53875748f1b0a6b.jpg">
											<div class="itm_tit"></div> <br>
											<div class="itm_date">제목12312테스트</div>
											<div class="itm_date">2023.10.14 ~ 2023.10.20</div>
										</a>
									</div>
								</div>

								<!-- 영화 2 -->

								<h3 class="tit"></h3>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<a href="#none"> 
											<img src="https://caching.lottecinema.co.kr//Media/Event/2119c4a58acc46108b7a90dbb2ffba0e.jpg" alt="<에에올> 1주년 골든스탠디">
											<div class="itm_tit"></div> <br>
											<div class="itm_date">2023.10.12 ~ 2023.10.22</div>
										</a>
									</div>
								</div>

								<!-- 영화 3 -->

								<h3 class="tit"></h3>
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<a href="#none"> 
											<img src="https://caching.lottecinema.co.kr//Media/Event/71e01b306e144d5fa9988de0e420b6d2.jpg" alt="<기억해, 우리가 사랑한 시간>1주차 증정이벤트">
											<div class="itm_tit"></div> <br>
											<div class="itm_date">2023.10.11 ~ 2023.10.17</div>
										</a>
									</div>
								</div>
							</div>

							<!-- 시사회/무대인사 1 -->
							<div class="lst_wrap">
								<div class="section-title">
									<p>
										<font face="맑은 고딕" color="#ffffff">
											<h3>시사회/무대인사</h3>
										</font>
									</p>
								</div>

								<div class="row">
									<div class="col-lg-4 col-md-6 col-sm-6">
										<div class="product__item">
											<a href="#none"> 
												<img src="https://caching.lottecinema.co.kr//Media/Event/d7c2b5d6389842ec9e72f3240654cdb0.jpg" alt="<퍼피 구조대: 더 마이티 무비>스페셜상영회">
												<div class="itm_tit"></div> <br>
												<div class="itm_date">2023.10.14 ~ 2023.10.15</div>
											</a>
										</div>
									</div>

									<!-- 시사회/무대인사 2 -->

									<h3 class="tit"></h3>
									<div class="col-lg-4 col-md-6 col-sm-6">
										<div class="product__item">
											<a href="#none"> 
												<img src="https://caching.lottecinema.co.kr//Media/Event/be17a3a12d534606ba409774886701c3.jpg" alt="<30일>2주차 무대인사">
												<div class="itm_tit"></div> <br>
												<div class="itm_date">2023.10.14 ~ 2023.10.15</div>
											</a>
										</div>
									</div>

									<!-- 시사회/무대인사 3 -->

									<h3 class="tit"></h3>
									<div class="col-lg-4 col-md-6 col-sm-6">
										<div class="product__item">
											<a href="#none"> 
												<img src="https://caching.lottecinema.co.kr//Media/Event/8e1a783a17df4b748f0ff086300790c3.jpg">
												<div class="itm_tit"></div> <br>
												<div class="itm_date">2023.10.14 ~ 2023.10.15</div>
											</a>
										</div>
									</div>
								</div>

								<!-- 제휴할인 1 -->
								<div class="lst_wrap">
									<div class="section-title">
										<p>
											<font face="맑은 고딕" color="#ffffff">
												<h3>제휴할인</h3>
											</font>
										</p>
									</div>

									<div class="row">
										<div class="col-lg-4 col-md-6 col-sm-6">
											<div class="product__item">
												<a href="#none"> 
													<img src="https://caching.lottecinema.co.kr//Media/Event/3094f2063d2249de9163e61f0b65217c.jpg" alt="해피포인트 오픈기념 이벤트">
													<div class="itm_tit"></div> <br>
													<div class="itm_date">2023.10.04 ~ 2023.12.03</div>
												</a>
											</div>
										</div>

										<!-- 제휴할인 2 -->

										<h3 class="tit"></h3>
										<div class="col-lg-4 col-md-6 col-sm-6">
											<div class="product__item">
												<a href="#none"> 
												<img src="https://caching.lottecinema.co.kr//Media/Event/76d606c8d20844f9937e2a0fbc213ffd.jpg" alt="2310_토스 가맹점 첫 결제 할인 ">
													<div class="itm_tit"></div> <br>
													<div class="itm_date">2023.10.01 ~ 2023.11.30</div>
												</a>
											</div>
										</div>

										<!-- 제휴할인 3 -->

										<h3 class="tit"></h3>
										<div class="col-lg-4 col-md-6 col-sm-6">
											<div class="product__item">
												<a href="#none"> 
													<img src="https://caching.lottecinema.co.kr//Media/Event/5209f5960a8149e280a5462318f6a3f7.jpg" alt="SKT 우주 구독서비스 가입 기념 이벤트">
													<div class="itm_tit"></div> <br>
													<div class="itm_date">2023.09.21 ~ 2023.12.31</div>
												</a>
											</div>
										</div>
									</div>
								</div>
								<!-- 제휴할인 1 끝-->
							</div>
							<!--시사회/무대인사 1 끝-->
						</div>
						<!--영화 1 끝-->

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