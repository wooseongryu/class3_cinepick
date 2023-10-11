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

	<!-- Anime Section Begin -->
	<div class="anime-details spad">
		<div class="container">
			<div class="anime__details__content">
				<div class="row">
					<div class="col-lg-4">
						<div class="anime__details__pic set-bg"
							data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/store/popular-1.jpg">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="anime__details__text">
							<div class="anime__details__title">
								<h3>fall movie 패키지</h3>
								<span><h3>14,500 원</h3></span>

							</div>

							<div class="anime__details__widget">
								<div class="row">
									<div class="col-lg-12">
										<ul>
											<li><span>구성품 &nbsp;</span> 2D일반관람권1매+오리지널팝콘M1매</li>
											<li><span>구매제한 &nbsp;</span> 1인 1일 4회</li>
											<li><span>유효기간 &nbsp;</span> 온라인 관람권 6 개월 / 스위트샵 상품권 6개월</li>
											<li><span>사용가능영화관 &nbsp;</span>
												<tr>
													<td>
														<button id="availableCinema" class="btn_col4 ty3 rnd" title="레이어팝업 열기">온라인 관람권</button> &nbsp;
														<button id="availableCinema" class="btn_col4 ty3 rnd" title="레이어팝업 열기">스위트샵 상품권</button> &nbsp;
													</td>
												</tr>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="anime__details__btn">
								<a href="#" class="follow-btn">선물하기</a> 
								<a href="#" class="watch-btn"><span>구매하기</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 사용방법 -->
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="tab_wrap outer pd_tab actionmovingbar">
						<div class="active">
							<button type="button" class="tab_tit"
								style="width: 50%; left: 0%;">
								<span>사용방법</span>
							</button>
							<div class="tab_con">
								<ul class="list_txt">
									<p>
										<font face="맑은 고딕" color="#ffffff"> 
											<font face="맑은 고딕">- 구성 : 2D영화관람권 1매 + 오리지널팝콘M1매 (롯데시네마 회원 ID당 1일 4회 구매 가능) </font>
										</font>
									</p>

									<font face="맑은 고딕"> 
										<font style="BACKGROUND-COLOR: #ffff80" color="#ff0000" size="2" face="맑은 고딕"> - 매점교환권 사용불가 영화관을 반드시 확인하여 주시기 바랍니다.</font>
									</font>

									<p>
										<font face="맑은 고딕"> <font
											style="BACKGROUND-COLOR: #ffff80" color="#ff0000" size="2"
											face="맑은 고딕"> (※사용불가 영화관은 사정에 의해 변경, 추가 될 수 있습니다.)</font>
										</font>
									</p>

									<p>
										<font face="맑은 고딕"> 
											<font face="맑은 고딕"> 
												<font style="BACKGROUND-COLOR: #ffff80">
													[서울/강원] 가양, 강동, 브로드웨이(신사) 경기/인천] 라페스타, 부천역, 시화(정왕역) <br>
													[대구/경상] 대구현풍, 부산명지, 프리미엄해운대(장산역) [전라/충정/제주] 익산모현, 전주송천, 서귀포
												</font>
											</font>
										</font>
									</p>

									<p>
										<font face="맑은 고딕" color="#ffffff"> 
											<font face="맑은 고딕">- 유효기간 : 구매일로부터 6개월(관람일 기준), 유효기간 내 사용가능 </font>
										</font>
									</p>

									<p>
										<font face="맑은 고딕" color="#ffffff"> 
											<font face="맑은 고딕" color="#ffffff">- 영화관람권은 <font color="#ff0000">2D
														일반영화에만 적용 가능 </font> , 스페셜관 및 좌석에 적용 불가(일부 특수관 및 좌석에 한해 별도 업차지 금액
													지불 시 적용가능)/ 영화관람권은 L.point적립 불가, 관람권 사용 시 VIP 승급금액은 관람권
													판매금액으로 반영 <br>- 팝콘 : 오리지널맛 제공
											</font>
										</font>
									</p>

									<p>
										<font face="맑은 고딕"> <font face="맑은 고딕" color="#ffffff">-
												상품 확인은 마이시네마 &gt; 나의 쿠폰함에서 가능</font>
										</font>
									</p>

									<p>
										<font face="맑은 고딕"></font>
									</p>
								</ul>
							</div>
						</div>
						
						</br>

						<!-- 유의사항 -->
						<div class="">
							<button type="button" class="tab_tit"
								style="width: 50%; left: 50%;">
								<span>유의사항</span>
							</button>
							<div class="tab_con">

								<ul class="list_txt">
									<p>
										<font face="나눔고딕" color="#ffffff">
											<p>
												<font face="맑은 고딕" color="#ffffff"> - 씨네픽 상품의 취소기한은
													구매일로부터 70일 입니다. </font>
											</p>
											<p>
												<font face="맑은 고딕" color="#ffffff"> - 구매취소는 취소기한 내
													마이시네마 &gt; 예매/구매내역에서만 가능합니다.(현장취소 불가) </font>
											</p>
											<p>
												<font face="맑은 고딕" color="#ffffff"> - 구매하신 상품은 부분환불 및
													현금환불이 되지 않습니다. </font>
											</p>
											<p>
												<font face="맑은 고딕" color="#ffffff"> - 패키지 상품 중 1장이라도
													사용한 경우 환불이 불가합니다. </font>
											</p>
										</font>
									</p>
								</ul>


								<ul class="list_txt ">
									<p>
										<font face="나눔고딕" color="#ffffff"> 
											<font face="나눔고딕" color="#ffffff">
												<p>
													<font face="돋움" color="#ffffff"> - 선물한 상품은 마이시네마
														&gt; 예매/구매내역 &gt; 선물내역 메뉴에서 30일 내 1회 재발송가능 (단, 받는 사람 번호는
														변경 불가) </font>
												</p>
												<p>
													<font face="돋움" color="#ffffff"> - 이벤트로 판매되는 상품의
														구매/사용/취소 규정은 해당 이벤트 페이지를 확인해주세요. </font>
												</p>
												<p>
													<font face="돋움" color="#ffffff"> - 유효기간 만료일 전 연장 요청
														시, 1회에 한하여 3개월 연장 가능합니다. </font>
												</p>
												<p>
													<font face="돋움" color="#ffffff"> - 고객센터: 1234-5678
														(유료) </font>
												</p>
												<p>

													<font style="BACKGROUND-COLOR: #ffff80" color="#ff0000"
														size="2"> - 매점 상품의 사용불가 영화관을 확인하세요. <br>
														(※사용불가 영화관은 사정에 의해 변경, 추가 될 수 있습니다.)
													</font>
												</p>

											</font>
										</font>
									</p>
									<p>
										<font face="나눔고딕"> 
											<font face="나눔고딕"> 
												<font face="돋움"> 
													<font style="BACKGROUND-COLOR: #ffff80">[서울/강원]
														가양, 강동, 브로드웨이(신사) 경기/인천] 라페스타, 부천역, 시화(정왕역) <br>[대구/경상]
														대구현풍, 부산명지, 프리미엄해운대(장산역) [전라/충정/제주] 익산모현, 전주송천, 서귀포
													</font>
												</font>
											</font>
										</font>
									</p>
								</ul>
							</div>
						</div>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	</br>

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