<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/theater_css/menu.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/theater_css/fav.css"/>
    <title>CINEPICK</title>
<%--     <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer_sy.css" type="text/css"> --%>
    <script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
</head>
<body>
	
    <jsp:include page="../include/headerTest.jsp"></jsp:include>
	
	
<!-- 모달은 position: fixed를 사용합니다. 가능한 다른 요소와의 간섭을 피하기 위해, 모달 HTML을 최상단의 위치에 넣어 주세요. by Bootstrap -->
	<div class="modal here modal-layer" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
	    
				<div class="modal-header">
					<h5 class="modal-title">선호 극장 관리</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
	      
				<div class="modal-body">
				<!-- 안에 choose, theater-choice-list -->
	        
					<div class="choose">
						<div class="area">
							<select class="form-select" aria-label="Default select example">
								<option selected>서울</option>
								<option value="1">경기</option>
								<option value="2">부산</option>
								<option value="3">광주/전라</option>
							</select>
						</div>
						<div class="theater-list-modal">
							<select class="form-select ml05 mr05" aria-label="Default select example">
								<option selected>극장 선택</option>
								<option value="1">서면</option>
								<option value="2">센텀</option>
								<option value="3">장산</option>
							</select>
						</div>
						<button type="button" class="btn btn-light ml05">추가</button>
					</div>
					<!-- choose 끝 -->
			
					<div class="theater-choice-list mt1">
						<div class="bg">
							<div class="circle" data-brch-no="5401">
								<p class="txt">순천</p>
				 		 		<button type="button" class="btn-close" aria-label="Close"></button>
							</div>
						</div>
						<div class="bg"></div>
						<div class="bg"></div>
					</div>
					<!-- theater-choice-list 끝 -->
					
				</div>
				<!-- modal-body 끝 -->
				
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					<button type="button" class="btn btn-warning">등록</button>
				</div>
			
			</div>
			<!-- modal-content 끝 -->
		</div>
	<!-- modal-dialog 끝 -->
	</div> 
	<!-- modal 끝 -->
	
	
	<div class="inner-wrap">
	
		<div class="titt">
		<h2 class="tit mt40" style="margin: 0 auto">전체극장</h2>
		</div>
	    <div class="theater-place">
	    	<div class="buttonDiv">
	    		
	    		<c:forEach var="city" items="${cityList}">
				    <button type="button" class="btn btn-light sel-city" data-target="${city.city_name_e }">${city.city_name }</button>
	    		</c:forEach>
	    		
	    	</div>
			<!-- 성공 -->
	    		
<!-- 			    <button type="button" class="btn btn-light sel-city theater-on" data-target="seoul">서울</button> -->
<!-- 				<button type="button" class="btn btn-light sel-city" data-target="gyeonggi">경기</button> -->
<!-- 				<button type="button" class="btn btn-light sel-city" data-target="busan">부산/경상</button> -->
<!-- 				<button type="button" class="btn btn-light sel-city" data-target="gwangju">광주/전라</button> -->
<!-- 				<button type="button" class="btn btn-light sel-city" data-target="gangwon">강원</button> -->
	    	
				<!--지금 하는 부분 -->
		    	<c:forEach var="city" items="${cityList }">
		    		<div class="theater-list ${city.city_name_e } " data-target="${city.city_name_e }">
						<ul>
							<c:forEach var="theater" items="${theaterList}">
								<c:set var="c_idx" value="${city.city_idx }"/>
								<c:set var="t_c_idx" value="${theater.city_idx }"/>
								<c:if test="${c_idx eq t_c_idx }">
									<li data-brch-no="${theater.brchNo }">
										<a href="theaterDetail?brchNo=${theater.brchNo }" title="${theater.theater_name } 상세보기">${theater.theater_name }</a>
									</li>	
								</c:if>
							</c:forEach>
						</ul>
					</div>
		    	</c:forEach>
				<!--지금 하는 부분 끝 -->
	    	

			
	    </div>
	<!--     theater-place 끝 -->
	    
	<!-- 	<div id="container"> -->
	<!-- 	</div> -->
		
	    <div class="user-theater">
	    
	    	<div>
	    		<i class="iconset ico-favo-theater"></i>
	    		<i class="fa-solid fa-bookmark iconset ico-favo-theater" style="margin-left: 10px"></i>
	    		<span class="purple">엄성윤</span>님의 선호영화관
	    		<ul class="theater-circle">
	    			<li>
	    				<a href="#">순천</a>
	    			</li>
	    		</ul>
	    		<a class="button small float-r fav-modal" title="선호영화관 관리" style="font-size:1em"> 
	    		<i class="fa-solid fa-gear"></i> 
	    		<i class="iconset ico-edit"></i>
	    		선호영화관 관리</a>
	    	</div>
	    	
	    </div>
	    
	    <!-- Calendar -->
	    
		<div id="day_bookList02" class="mtimetable second wrap clear">
			<div class="calendar clear">
				<div class="month">
					<a class="m_prev" href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-08-31&amp;ppage=2023-08-31" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;" style="margin-left: 0px"><</a>
					<span class="m_display">2023.09</span>
					<a class="m_next" href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-10-01&amp;ppage=2023-10-01" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">></a>
				</div>
	
				<ul class="day">
					
						<li>
							<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-01" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
								<span>01</span><br/>
							</a>
						</li>
						<li>
							<h4 class="hidden">토요일</h4>
							<a class=" sat"  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-02" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
								<span>02</span><br/>
							</a>
						</li>
						<li>
							<h4 class="hidden">일요일</h4>
							<a class=" sun"  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-03" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
								<span>03</span><br/>
							</a>
						</li>
						<li>
							<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-04" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
								<span>04</span><br/>
							</a>
						</li>
						<li>
							<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-05" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
								<span>05</span><br/>
							</a>
						</li>
						<li>
							<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-06" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
								<span>06</span><br/>
							</a>
						</li>
						<li>
							<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-07" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
								<span>07</span><br/>
							</a>
						</li>
						<li>
							<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-08" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
								<span>08</span><br/>
							</a>
						</li>
						<li>
							<h4 class="hidden">토요일</h4>
							<a class=" sat"  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-09" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
								<span>09</span><br/>
							</a>
						</li>
						<li>
							<h4 class="hidden">일요일</h4>
							<a class=" sun"  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-10" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
								<span>10</span><br/>
							</a>
						</li>
						<li>
							<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-11" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
								<span>11</span><br/>
							</a>
						</li>
						<li>
							<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-12" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
								<span>12</span><br/>
							</a>
						</li>
						<li>
									<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-13" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>13</span><br/>
									</a>
						</li>
						<li>
									<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-14" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>14</span><br/>
									</a>
						</li>
						<li>
									<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-15" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>15</span><br/>
									</a>
						</li>
						<li>
									<h4 class="hidden">토요일</h4>
									<a class=" sat"  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-16" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>16</span><br/>
									</a>
						</li>
						<li>
									<h4 class="hidden">일요일</h4>
									<a class=" sun"  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-17" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>17</span><br/>
									</a>
						</li>
						<li>
									<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-18" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>18</span><br/>
									</a>
						</li>
						<li>
									<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-19" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>19</span><br/>
									</a>
						</li>
						<li>
									<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-20" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>20</span><br/>
									</a>
						</li>
						<li>
									<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-21" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>21</span><br/>
									</a>
						</li>
						<li>
									<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-22" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>22</span><br/>
									</a>
						</li>
						<li>
									<h4 class="hidden">토요일</h4>
									<a class=" sat"  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-23" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>23</span><br/>
									</a>
						</li>
						<li>
									<h4 class="hidden">일요일</h4>
									<a class=" sun"  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-24" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>24</span><br/>
									</a>
						</li>
						<li>
									<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-25" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>25</span><br/>
									</a>
						</li>
						<li>
									<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-26" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>26</span><br/>
									</a>
						</li>
						<li>
									<h4 class="hidden">문화가 있는 날</h4>
									<a class=" "  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-27" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span class="cult">27</span><br/>
									</a>
						</li>
						<li>
									<a class=""  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-28" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>28</span><br/>
									</a>
						</li>
						<li>
									<h4 class="hidden">오늘</h4>
									<a class=" today"  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-29" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>29</span><br/>
									</a>
						</li>
						<li>
									<h4 class="hidden">토요일</h4>
									<a class=" sat"  href="todayBccList.do?rbsIdx=1&amp;searchDate=2023-09-30" onclick="fn_bccSubmitForm(this.href);return false;" onkeypress="this.onclick;">
										<span>30</span><br/>
									</a>
						</li>
				</ul>
			</div>
	
			<ul class="movies">
				<li>
					<h6>1관</h6>
					<ul class="movie-list" style="padding: 0px">
						<li>
							<a href="#" title="오펜하이머">
								"09:30 "
								<h4 class="hidden">15세</h4>
								<i class="age_15">
								</i>
								<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/15.png" style="width: 1rem">
								" 오펜하이머 "
							</a>
						</li>
						<li>
							<a href="#" title="잠">
								"12:00 "
								<h4 class="hidden">15세</h4>
								<i class="age_15">
								</i>
								<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/15.png" style="width: 1rem">
								" 잠 "
							</a>
						</li>
					</ul>
				</li>
				
				<li>
					<h6>2관</h6>
					<ul class="movie-list" style="padding: 0px">
						<li>
							<a href="#" title="오펜하이머">
								"09:30 "
								<h4 class="hidden">15세</h4>
								<i class="age_15">
								</i>
								<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/15.png" style="width: 1rem">
								" 오펜하이머 "
							</a>
						</li>
						<li>
							<a href="#" title="잠">
								"12:00 "
								<h4 class="hidden">15세</h4>
								<i class="age_15">
								</i>
								<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/15.png" style="width: 1rem">
								" 잠 "
							</a>
						</li>
					</ul>
				</li>
				
				<li>
					<h6>3관</h6>
					<ul class="movie-list" style="padding: 0px">
						<li>
							<a href="#" title="오펜하이머">
								"09:30 "
								<h4 class="hidden">15세</h4>
								<i class="age_15">
								</i>
								<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/15.png" style="width: 1rem">
								" 오펜하이머 "
							</a>
						</li>
						<li>
							<a href="#" title="잠">
								"12:00 "
								<h4 class="hidden">15세</h4>
								<i class="age_15">
								</i>
								<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/15.png" style="width: 1rem">
								" 잠 "
							</a>
						</li>
					</ul>
				</li>
				
				<li>
					<h6>4관</h6>
					<ul class="movie-list" style="padding: 0px">
						<li>
							<a href="#" title="오펜하이머">
								"09:30 "
								<h4 class="hidden">15세</h4>
								<i class="age_15">
								</i>
								<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/15.png" style="width: 1rem">
								" 오펜하이머 "
							</a>
						</li>
						<li>
							<a href="#" title="잠">
								"12:00 "
								<h4 class="hidden">15세</h4>
								<i class="age_15">
								</i>
								<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/15.png" style="width: 1rem">
								" 잠 "
							</a>
						</li>
					</ul>
				</li>
				
	<!-- 			<li> -->
	<!-- 				<h6>하늘연극장</h6> -->
	<!-- 					<a href="http://www.dureraum.org/bcc/board/view.do?rbsIdx=46&amp;key=%EA%B3%B5%EC%97%B0%EB%B9%84&amp;keyField=search1&amp;idx=963"> -->
	<%-- 						<img src="${pageContext.request.contextPath }/resources/cinepick/img/theater/fee.png"/> --%>
	<!-- 					</a> -->
	<!-- 					<ul> -->
	<!-- 					</ul> -->
	<!-- 					<ul> -->
	<!-- 					</ul> -->
	<!-- 					<ul> -->
	<!-- 					</ul> -->
	<!-- 					<ul> -->
	<!-- 					</ul> -->
	<!-- 					<ul> -->
	<!-- 					</ul> -->
	<!-- 					<ul> -->
	<!-- 					</ul> -->
	<!-- 			</li> -->
				
	<!-- 			<li> -->
	<!-- 				<h6>야외극장</h6> -->
	<!-- 					<a href="http://www.dureraum.org/bcc/board/list.do?rbsIdx=298" target="_blank"> -->
	<%-- 						<img src="${pageContext.request.contextPath }/resources/cinepick/img/theater/kakaotalk.jpg"/> --%>
	<!-- 					</a> -->
	<!-- 					<ul> -->
	<!-- 					</ul> -->
	<!-- 					<ul> -->
	<!-- 					</ul> -->
	<!-- 					<ul> -->
	<!-- 					</ul> -->
	<!-- 					<ul> -->
	<!-- 					</ul> -->
	<!-- 					<ul> -->
	<!-- 					</ul> -->
	<!-- 					<ul> -->
	<!-- 					</ul> -->
	<!-- 			</li> -->
			</ul>
		</div>
		
		<div class="tit-util mt70 mb15">
			<h3 class="tit">극장 이벤트</h3>
	        <a href="/event/theater" class="more" title="극장 이벤트 더보기">더보기 <i class="fa-solid fa-angle-right"></i></a>
		</div>
	
		<div class="event-box">
			<ul>
				<li>
					<a href="#" class="eventBtn" data-no="14183" data-netfunnel="N" title="[코엑스] 더 부티크 스위트 평일 2만 5천원 관람 이벤트 상세보기">
						<img src="https://img.megabox.co.kr/SharedImg/event/2023/09/27/39i2JMCOpghfRB06jui0Ow6xp17PYZvR.jpg" alt="[코엑스] 더 부티크 스위트 평일 2만 5천원 관람 이벤트" onerror="noImg(this)" />
					</a>
				</li>
				<li>
					<a href="#" class="eventBtn" data-no="14058" data-netfunnel="N" title="[대구경북지역] 대구경북 추석 감사제! 상세보기">
						<img src="https://img.megabox.co.kr/SharedImg/event/2023/09/15/FaIa0oUkmck1Dhz0KCYSTj0BlqKVFgZL.jpg" alt="[대구경북지역] 대구경북 추석 감사제!" onerror="noImg(this)" />
					</a>
				</li>
	<!-- 			<li> -->
	<!-- 				<a href="#" class="eventBtn" data-no="14183" data-netfunnel="N" title="[코엑스] 더 부티크 스위트 평일 2만 5천원 관람 이벤트 상세보기"> -->
	<!-- 					<img src="https://img.megabox.co.kr/SharedImg/event/2023/09/27/39i2JMCOpghfRB06jui0Ow6xp17PYZvR.jpg" alt="[코엑스] 더 부티크 스위트 평일 2만 5천원 관람 이벤트" onerror="noImg(this)" /> -->
	<!-- 				</a> -->
	<!-- 			</li> -->
			</ul>
		</div>
	
	
	
	</div>
	
	
	

	
	
	
	
	<jsp:include page="../include/footerTest.jsp"></jsp:include>
    
    
    <script>
    	
	    $(function () {
	    	// 버튼
	    	$(".theater-on").css("background-color", "#c6c7c8");
// 	    	$(".buttonDiv > button::first-child").css("background-color", "#c6c7c8");
	    	$(".theater-list").hide();
			
	        // 하드코딩 제거하고 theater-list seoul에 on 사라진 것
	        $(".seoul").addClass("on");
	    	// theater-list
	        $(".on").show();
	    	
	        $("div.buttonDiv button:first-child" ).css("background-color", "#c6c7c8");
	        
	        $(".sel-city").click(function () {
	            // 숨겨진 모든 theater-list를 숨김
	            $(".theater-list").hide();
	            
	            $(".sel-city").css("background-color", "#F7F8F9");
	            $(this).css("background-color", "#c6c7c8");
// 	            $(this).css("background-color", "#e5ddff");
	            
	            // 해당 버튼의 data-target 값을 읽어와서 해당하는 theater-list를 보여줌
	            let target = $(this).data("target");
	            $("." + target).show();
	            
	        });
	        
            // 선호 영화관 관리창 > 모달
	        $(".fav-modal").click(function () {
	        	$(".modal").show();
	        });
            
	        $(".btn-close").click(function () {
	        	$(".modal").hide();
	        });
	    });

    </script>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>