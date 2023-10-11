<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/theater_css/info.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">
    <script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
</head>
<body>

    <header>
		<jsp:include page="../include/main_top.jsp"></jsp:include>
	</header>
	
	<div class="inner-wrap pt40">
	
		<div class="tab-list fixed mb40 tab-layer on">
			<ul class="nav nav-tabs">
				<li class="nav-item on">
					<a class="nav-link active" aria-current="page" href="#tab01" title="극장정보 탭으로 이동">
					극장정보
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#tab02" title="상영시간표 탭으로 이동">상영시간표</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#tab03" title="관람료 탭으로 이동">관람료</a>
				</li>
			</ul>
		</div>

		<div class="tab-cont-wrap">
		
			<div id="tab01" class="tab-cont on">
				<div class="theater-info-text mt40">
					<p class="big">
					강남의 중심! 강남 소비문화의 중심지인 지하철 2호선 , 신분당선  - 강남역과 연결
					로맨틱 멀티플렉스! 젊은 도시 강남이 한 눈에 보이는 최상의 View를 제공
					</p>
					<p>
					<프라다>가 선택한 수려한 디자인의 상영관 의자를 체험해보세요!
					</p>
				</div>
				<h2 class="tit small mt70">시설안내</h2>
				<h3 class="tit small">보유시설</h3>
				<div class="theater-facility">
					<p>
						<i class="iconset ico-facility-theater"></i>
						"일반상영관"
					</p>
					<p>
						<i class="iconset ico-facility-disabled"></i>
						"장애인석"
					</p>
				</div>
				<h3 class="tit small mt30">층별안내</h3>
				<ul class="dot-list">
					<li>
						<span class="font-gblue">8층 : </span>
						" 매표소, 매점, 에스컬레이터, 엘리베이터 , 남자 · 여자 화장실, 비상계단 3 "
					</li>
					<li>
						<span class="font-gblue">8층 : </span>
						" 매표소, 매점, 에스컬레이터, 엘리베이터 , 남자 · 여자 화장실, 비상계단 3 "
					</li>
					<li>
						<span class="font-gblue">8층 : </span>
						" 매표소, 매점, 에스컬레이터, 엘리베이터 , 남자 · 여자 화장실, 비상계단 3 "
					</li>
					<li>
						<span class="font-gblue">8층 : </span>
						" 매표소, 매점, 에스컬레이터, 엘리베이터 , 남자 · 여자 화장실, 비상계단 3 "
					</li>
				</ul>
				<h2 class="tit small mt70">교통안내</h2>
				<h3 class="tit small">약도</h3>
				<ul class="dot-list">
					<li>
						<span class="font-gblue">도로명주소 : </span>
						" 서울특별시 서초구 서초대로 77길 3 (서초동) 아라타워 8층"
					</li>
				</ul>
				<div class="location-map-btn mt15">#</div>
					<div class="btn-group left">
						<a href="https://m.map.naver.com/map.naver?lng=127.0264086&lat=37.498214&level=2"
						class="button purple" target="_blank" title="새창열림">
							"실시간 길찾기"
						</a>
					</div>
				<h3 class="tit small mt30">주차</h3>
				<div class="parking-info">
				
					<div class="parking section">
						<div class="icon-box">
							<i class="iconset ico-parking" title="주차안내">주차안내</i>
						</div>
						<div class="info">
							<p class="tit">주차안내</p>
							<ul class="dot-list">
								<li>
								"아라타워 건물 內 지하 3층 ~ 지하 6층 주차장 이용"
								</li>
							</ul>
						</div>
					</div>
					
					
					<div class="parking section">
						<div class="icon-box">
							<i class="iconset ico-parking-confirm" title="주차확인">주차확인</i>
						</div>
						<div class="info">
							<p class="tit">주차확인</p>
							<ul class="dot-list">
								<li>
								"매표소에서 당일 관람 티켓 인증 후, 차량 번호 할인 등록하여 지하 정산소에서 결제"
								</li>
							</ul>
						</div>
					</div>
					
					<div class="parking section">
						<div class="icon-box">
							<i class="iconset ico-cash" title="주차요금">주차요금</i>
						</div>
						<div class="info">
							<p class="tit">주차요금</p>
							<ul class="dot-list">
								<li>
								"주차 요금은 입차시간을 기준으로 합니다."
								</li>
								<li>
								"주차 요금은 입차시간을 기준으로 합니다."
								</li>
								<li>
								"주차 요금은 입차시간을 기준으로 합니다."
								</li>
								<li>
								"주차 요금은 입차시간을 기준으로 합니다."
								</li>
								<li>
								"주차 요금은 입차시간을 기준으로 합니다."
								</li>
							</ul>
						</div>
					</div>
					
					
					
				</div>
				<h3 class="tit small mt30">대중교통</h3>
				<!--  location-info -->
				<div class="public-transportation">#</div>
				<!--//  location-info -->
				<h2 class="tit small mt70">이벤트</h2>
				<div class="event-box">#</div>
				<div id="brchNoti">#</div>
				<h2 class="tit small mt70">강남에서 이용할 수 있는 스토어 상품</h2>
				<div class="store-list">#</div>
			</div>
			

			<div id="tab02" class="tab-cont">
				<a href class="ir"></a>
				<h2 class="tit small" style="display: none;">무대인사</h2>
				<div class="movie-greeting"></div>
				<h2 class="tit small mt40">상영시간표</h2>
			</div>
			
			<div id="tab03" class="tab-cont">
				<a href class="ir"></a>
				<h2 class="tit small">영화관람료</h2>
			</div>
		</div>
		
	</div>

	<footer>
		<jsp:include page="../include/main_footer.jsp"></jsp:include>
	</footer>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>