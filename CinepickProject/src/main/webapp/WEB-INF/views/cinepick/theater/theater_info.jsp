<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/theater_css/info.css"/>

<!-- 	1109 추가 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/step5.css"/>
    
    <script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
</head>
<body>


	<jsp:include page="../include/headerTest.jsp"></jsp:include>
	
	<div class="theater-detail-page">
	<!-- theater-detail-page 안에 bg-img, bg-pattern, bg-mask, theater-all -->

		<div class="bg-img" style="background-image:url('https://www.megabox.co.kr/static/pc/images/theater/img-theater-detail.jpg')"></div>
		<div class="bg-pattern"></div>
		<div class="bg-mask"></div>

		<!-- theater-all -->
		<div class="theater-all">
		<!-- theater-all 안에 div theater-area-list, p name, div btn-util right -->
		
			<!-- theater-area-list -->
			<div class="theater-area-list">
				<ul class="area-depth1" style="width: 60%; margin: 0 auto;">
		
					<li class="">
						<a href="" class="depth1" title="서울 선택">서울</a>
						<div class="area-depth2">
							<ul>
								<li data-brch-no="1001">
									<a href="theaterDetail?brchNo=1001" title="강남 상세보기">강남</a>
								</li>
								<li data-brch-no="1002">
									<a href="theaterDetail?brchNo=1002" title="동대문 상세보기">동대문</a>
								</li>
								<li data-brch-no="1003">
									<a href="theaterDetail?brchNo=1003" title="코엑스 상세보기">코엑스</a>
								</li>
							</ul>
						</div>
					</li>
					
					<li class="">
						<a href="" class="depth1" title="경기 선택">경기</a>
						<div class="area-depth2">
							<ul>
								<li data-brch-no="2001">
									<a href="theaterDetail?brchNo=2001" title="남양주 상세보기">남양주</a>
								</li>
				        		<li data-brch-no="2002">
									<a href="theaterDetail?brchNo=2002" title="의정부 상세보기">의정부</a>
								</li>
				        		<li data-brch-no="2003">
									<a href="theaterDetail?brchNo=2003" title="파주 상세보기">파주</a>
								</li>
							</ul>
						</div>
					</li>
					
					<li class="">
						<a href="" class="depth1" title="부산/경상 선택">부산/경상</a>
						<div class="area-depth2">
							<ul>
								<li data-brch-no="3001">
									<a href="theaterDetail?brchNo=3001" title="부산대 상세보기">부산대</a>
								</li>
				        		<li data-brch-no="3002">
									<a href="theaterDetail?brchNo=3002" title="서면 상세보기">서면</a>
								</li>
				        		<li data-brch-no="3003">
									<a href="theaterDetail?brchNo=3003" title="해운대 상세보기">해운대</a>
								</li>
							</ul>
						</div>
					</li>
					
					<li class="">
						<a href="" class="depth1" title="광주/전라 선택">광주/전라</a>
						<div class="area-depth2">
							<ul>
				        		<li data-brch-no="4001">
									<a href="theaterDetail?brchNo=4001" title="광주상무 상세보기">광주상무</a>
								</li>
				        		<li data-brch-no="4002">
									<a href="theaterDetail?brchNo=4002" title="순천 상세보기">순천</a>
								</li>
				        		<li data-brch-no="4003">
									<a href="theaterDetail?brchNo=4003" title="여수 상세보기">여수</a>
								</li>
							</ul>
						</div>
					</li>
					
					<li class="">
						<a href="" class="depth1" title="강원 선택">강원</a>
						<div class="area-depth2">
							<ul>
								<li data-brch-no="5001">
									<a href="theaterDetail?brchNo=5001" title="속초 상세보기">속초</a>
								</li>
				        		<li data-brch-no="5002">
									<a href="theaterDetail?brchNo=5002" title="원주 상세보기">원주</a>
								</li>
				        		<li data-brch-no="5003">
									<a href="theaterDetail?brchNo=5003" title="</ 상세보기">춘천</a>
								</li>
							</ul>
						</div>
					</li>
					
				</ul>
			</div>
			<!-- theater-area-list 끝 -->

			<p class="name">${theater.theater_name }</p>
			
			<div class="btn-util right">
			
				<div class="block">
					<button type="button" class="btn btn-like " id="favorBrch">
						<i class="iconset ico-like-line"></i>
						<span>선호극장</span>
					</button>
				</div>
				<!-- block 끝 -->
				
			</div>
			<!-- btn-util 끝 -->
			
		</div>
		<!-- theater-all 끝 -->
	</div>
	<!-- theater-detail-page 끝 -->
	
	
	
	<div class="inner-wrap pt40">
	
		
		<div class="tab-list fixed mb40 tab-layer">
			<ul>
				<li class="on"><a href="#tab01" title="극장정보 탭으로 이동">극장정보</a></li>
				<li><a href="#tab02" title="상영시간표 탭으로 이동">상영시간표</a></li>
				<li><a href="#tab03" title="관람료 탭으로 이동">관람료</a></li>
			</ul>
		</div>
		<!-- tab-list 끝 -->

		<div class="tab-cont-wrap">
		<!-- tab-cont-wrap 안에 tab-coont 3개-->
		
			<div id="tab01" class="tab-cont on">
			
				<div class="theater-info-text mt40">
					<p class="big">
					${theater.theater_title}
					</p>
				</div>
				
				<h2 class="tit small mt70">교통안내</h2>
				
				<ul class="dot-list">
					<li>
						<span class="font-gblue">도로명주소 : </span>
						${theater.theater_address}
					</li>
				</ul>
				
				<h3 class="tit small" style="margin-top:20px;">약도</h3>
				
				<div class="location-map-btn mt15"></div>
				
				<div class="btn-group left">
					<div id="map" style="width:500px;height:400px;"></div>
				</div>
				
				<!-- btn-group 끝 -->
				
				<h2 class="tit small mt70">시설안내</h2>
				
				<h3 class="tit small">보유시설</h3>
				
				<div class="theater-facility">
					<p>
						${theater.theater_facility1 }
					</p>
					<p>
						${theater.theater_facility2 }
					</p>
					<p>
						${theater.theater_facility3 }
					</p>
					<p>
						${theater.theater_facility4 }
					</p>
				</div>
				<!-- theater-facility 끝 -->
				
				<h3 class="tit small mt30">층별안내</h3>
				<ul class="dot-list">
					<li>
						<span class="font-gblue">8층 : </span>
						 매표소, 매점, 에스컬레이터, 엘리베이터 , 남자 · 여자 화장실, 비상계단 3 
					</li>
				</ul>
				
				<h3 class="tit small mt30">주차</h3>

				<div class="parking-info">

					<div class="parking-section">
						<div class="icon-box"><i class="iconset ico-parking" title="주차안내">주차안내</i></div>
		
						<div class="info">
							<p class="tit">주차안내</p>
							<ul class="dot-list">
									<li>건물 內 지하 3층 ~ 지하 6층 주차장 이용</li>
							</ul>
						</div>
					</div>
					<!-- parking-section 끝  -->
		
					<div class="parking-section">
						<div class="icon-box"><i class="iconset ico-parking-confirm" title="주차확인">주차확인</i></div>
		
						<div class="info">
							<p class="tit">주차확인</p>
		
							<ul class="dot-list">
								
									<li>매표소에서 당일 관람 티켓 인증 후, 차량 번호 할인 등록하여 지하 정산소에서 결제</li>
								
							</ul>
						</div>
					</div>
		
					<div class="parking-section">
						<div class="icon-box"><i class="iconset ico-cash" title="주차요금">주차요금</i></div>
		
						<div class="info">
							<p class="tit">주차요금</p>
		
							<ul class="dot-list">
								
									<li>주차 요금은 입차시간을 기준으로 합니다.</li>
								
									<li>영화 관람 시 3시간 → 3,000원(3시간 초과 시 10분당 1,000원 부과, 초과비용 출차 시 정산)</li>
								
									<li>건물 내 타 매장과 주차 할인 중복 적용 불가.</li>
								
									<li>입차시 최대 3시간 30분까지 할인 가능(차량 1대에 주차 할인 적용 2회 이상 불가)</li>
								
									<li>주차 공간이 협소하므로 가급적이면 대중교통을 이용 바랍니다.</li>
								
							</ul>
						</div>
					</div>
					<!-- parking-section 끝 -->
					
				</div>
				<!-- parking-info 끝 -->
			</div>
			<!-- tab-cont 끝 -->
				
<!-- 			<div id="tab02" class="tab-cont"> -->
<!-- 				<a href class="ir"></a> -->
<!-- 				<h2 class="tit small" style="display: none;">무대인사</h2> -->
<!-- 				<div class="movie-greeting"></div> -->
<!-- 				<h2 class="tit small mt40">상영시간표</h2> -->
<!-- 				#추후 수정# -->
<!-- 				<br> -->
<!-- 				<br> -->
<!-- 				<br> -->
<!-- 			</div> -->

			<div id="tab02" class="tab-cont on">
				<a href="" class="ir">상영시간표 탭 화면 입니다.</a>
				<h2 class="tit small" style="display: none;">무대인사</h2>
				<div class="movie-greeting" style="display: none;"></div>
				<h2 class="tit small mt40">상영시간표</h2>
				<div class="reserve theater-list-box">
					<div class="tab-block tab-layer mb30" style="display: none;">
						<ul></ul>	
					</div>
					<c:forEach var="movieGroup" items="${movieGroup}">
					    <div class="theater-list">
					        <div class="theater-tit">
					            <p class="movie-grade age-${movieGroup.movie_rated }"></p>
					            <p>
					            	<a href="movieDetail?movie_code=${movieGroup.movie_code}" title="${movieGroup.movie_nameK} 상세보기">
					            		${movieGroup.movie_nameK}
					            	</a>
					            </p>
					            <p class="infomation">
					            	<span>상영중</span>/상영시간 ${movieGroup.movie_runtime}</p>
					        </div>
					        
					        <c:forEach var="screenGroup" items="${timeSchedule }">
								<c:if test="${screenGroup.movie_nameK == movieGroup.movie_nameK }">
									<!-- 상영관 반복 -->
							        <div class="theater-type-box">
							            <div class="theater-type">
							                <p class="theater-name">${screenGroup.screen_name}</p>
							                <p class="chair">총 76석</p>
							            </div>
							            <div class="theater-time">
							                <div class="theater-time-box">
							                    <table class="time-list-table">
							                        <caption>상영시간을 보여주는 표 입니다.</caption>
							                        <colgroup>
							                            <!-- 각 column에 대한 col 태그 추가 -->
							                        </colgroup>
							                        <tbody>
														<tr>
															<c:forEach var="schedule" items="${fn:split(screenGroup.sche_start_time, ',') }">
																<!-- 스케줄 반복 -->
							                                    <td class="" brch-no="${param.brchNo}" play-schdl-no="2311091372015" rpst-movie-no="23081000" theab-no="02" play-de="20231109" play-seq="6" netfnl-adopt-at="N">
																	<div class="td-ab">
																		<div class="txt-center">
																			<a href="" title="영화예매하기">
																				<div class="ico-box">
																					<i class="iconset ico-off"></i>
																				</div>
																				<p class="time">${schedule }</p>
						<!-- 															<p class="chair">98석</p>								 -->
																				<div class="play-time">
						<%-- 																<p>${startTime }~${endTime }</p>					 --%>
																					<p>예매</p>				
																				</div>			
																			</a>		
																		</div>	
																	</div>
																</td>
							                                </c:forEach>
							                            </tr>
							                        </tbody>
							                    </table>
											</div>
								            <!-- theater-time-box 끝 -->    
										</div>
								        <!-- theater-time 끝 -->   
									</div>
									<!-- theater-type-box 끝 -->
								</c:if>
							</c:forEach>
				    	</div>
						<!-- theater-list 끝 -->
					</c:forEach>
								
				</div>
				<!-- reserve 끝 -->
		
			</div>
		
		
		
		
		
		<div class="box-border v1 mt30">
			<li>지연입장에 의한 관람불편을 최소화하고자 본 영화는 약 10분 후 시작됩니다.</li>
			<li>쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>
		</div>

			<div id="tab03" class="tab-cont on">
				<a href="" class="ir">관람료 탭 화면 입니다.</a>
				<h2 class="tit small mt40">영화관람료</h2>
				<div class="fee-table-box">
					<div class="fee-table">
						<p class="fee-table-tit">2D</p>
						<div class="table-wrap" style="border-top:0px">
							<table class="data-table a-c" summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
								<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
								<colgroup>
									<col>
									<col style="width:25%;">
									<col style="width:25%;">
									<col style="width:25%;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">일반</th>
										<th scope="col">청소년</th>
										<th scope="col">우대</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>14,000</td>
										<td>12,000</td>
										<td>6,000</td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- fee-table-box -->
				<span style="color:#503396">
					<span style="font-size:22px">요금제</span>
				</span>
				<br>
				<br>
				• 
				<span style="color:#01738b">청소년 요금</span>
				&nbsp; 만7세~ 만18세 : 초등학생~고등학생(학생증, 교복, 청소년증, 의료보험증, 주민등록 등/초본, 그 외 청소년 확인 가능 서류)<br>
				• 48개월 미만의 경우 증빙원(예 : 의료보험증, 주민등록 초/등본 등) 지참 시에만 무료 관람 가능<br>
				<br>
				<br>
				<span style="font-size:22px">
					<span style="color:#503396">우대적용</span>
				</span>
				<br>
				<br>
				• 
				<span style="color:#01738b">국가유공자</span>
				&nbsp; 현장에서 국가유공자증을 소지한 본인 외 동반 1인까지 적용<br>
				• 
				<span style="color:#01738b">장애인</span>
				&nbsp; 현장에서 복지카드를 소지한 장애인[중증 (1급~3급)까지 동반 1인까지 적용 / 경증(4급~6급)은 본인에 한함]<br>
				• 
				<span style="color:#01738b">경로</span>
				&nbsp; 만65세 이상 본인에 한함(신분증 확인)<br>
				• 
				<span style="color:#01738b">미취학아동</span>
				&nbsp; 부모 동반한 만4세~ 만6세까지 본인(의료보험증, 주민등록 초/등본 확인)<br>
				• 
				<span style="color:#01738b">소방종사자</span>
				&nbsp; 공무원증을 소지하거나 정복을 입은 소방관 본인<br>
				<br>
				<br>
<%-- 				관람가격 및 시간대 운영은 극장마다 상이할 수 있으며, 상기 가격은 씨네픽 ${theater.theater_name }점에 한하여 적용됩니다. --%>
				관람가격 및 시간대 운영은 극장마다 상이할 수 있으며, 상기 가격은 씨네픽 
				    <span style="color: #01738b;"> ${theater.theater_name }점</span>에 한하여 적용됩니다.
			</div>
			<!-- tab03 -->

		</div>
		<!-- tab-cont-wrap 끝 -->
		
	</div>
	<!-- inner-wrap 끝 -->
	
	
	<br>
	<br>
	<br>
	<br>
	<br>

<!-- 	<footer> -->
		<jsp:include page="../include/main_footer.jsp"></jsp:include>
<!-- 	</footer> -->
<%-- 	<jsp:include page="../include/footerTest.jsp"></jsp:include> --%>
	
<!-- 	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b5e75c34a60018b456cd69645e79131e"></script> -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b5e75c34a60018b456cd69645e79131e&libraries=services"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};
	
		var map = new kakao.maps.Map(container, options);
	
		var geocoder = new kakao.maps.services.Geocoder();
		
		geocoder.addressSearch('${theater.theater_address}', function(result, status) {

		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
		        map.setCenter(coords);
		     } 
		});
	
		        
	$(function() {
		$(".theater-facility p").each(function () {
			
			let facility = $(this).text().trim();
			
			if(facility === "MX") {
				falicity = "mx";
			} else if(facility === "컴포트") {
				falicity = "comfort";
			} else if(facility === "일반상영관") {
				falicity = "theater";
			} else if(facility === "장애인석") {
				falicity = "disabled";
			}
			
			$(this).prepend('<i class="iconset ico-facility-' + facility + '"></i> ');
			
// 	        // 시설을 포함하는 p 태그를 찾음
// 	        if ($(this).text().trim() === "MX") {
// 	            // 앞에 아이콘을 추가
// 	            $(this).prepend('<i class="iconset ico-facility-mx"></i> ');
// 	        }
// 	        if ($(this).text().trim() === "컴포트") {
// 	            // 앞에 아이콘을 추가
// 	            $(this).prepend('<i class="iconset ico-facility-comfort"></i> ');
// 	        }
// 	        if ($(this).text().trim() === "일반상영관") {
// 	            // 앞에 아이콘을 추가
// 	            $(this).prepend('<i class="iconset ico-facility-theater"></i> ');
// 	        }
// 	        if ($(this).text().trim() === "장애인석") {
// 	            // 앞에 아이콘을 추가
// 	            $(this).prepend('<i class="iconset ico-facility-disabled"></i> ');
// 	        }
	    });
		
// 		$(".depth1").click(function() {
// 			$(this).parent().addClass("on");
// 		});
		
		$(".depth1").mouseover(function() {
			$(".area-depth1 li").removeClass("on");
			
			$(this).parent().addClass("on");
		});
		
		$(".area-depth1").mouseout(function() {
			$(".name").mouseout(function() {
				$(".area-depth1 li").removeClass("on");
			});
		});
		
		
// 		$(".mouseover").click(function() {
// 			debugger;
// 			let next = $(this).next();
// 			next.show();
// 		});

		$("button").on("click", function() {
		      // 클릭한 버튼의 date-data 속성 값을 가져옴
		      var dateData = $(this).attr("date-data");
		      // 가져온 값을 콘솔에 출력 (실제로는 여기에서 데이터를 사용하면 됨)
		      console.log("Clicked date-data: " + dateData);
		    });
		
		
		
	});
	
	
	</script>
</body>
</html>