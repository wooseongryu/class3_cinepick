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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/theater_css/menu.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/theater_css/fav.css"/>
    
<!--     1112 추가 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/time.css"/>
    <title>CINEPICK</title>
<%--     <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer_sy.css" type="text/css"> --%>
    <script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
    
    <style>
    .header_right {
	    text-align: right;
	    /* padding: 20px 30px 15px 20px; */
	    padding: 20px 80px 15px 20px;
	    width: 1092px;
	}
	
	.theaterEvent {
		display: grid;
		grid-template-columns: 1fr 1fr 1fr;
		margin: 0 auto;
		margin-bottom: 40px;
	    margin-top: 30px;
	}
	
	
/* 	1112 추가 */
	
	.reserve.theater-list-box .theater-list {
	    position: relative;
		margin: 0 auto;
	}
	
	
	.button.small {
	    margin-top: 9px;
	    margin-right: 9px;
	}
	
	
    </style>
    
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
<!-- 	    		<i class="iconset ico-favo-theater"></i> -->
	    		<i class="fa-solid fa-bookmark iconset ico-favo-theater" style="margin-left: 10px"></i>
	    		<span class="purple">${sessionScope.sId }</span>님의 선호영화관
	    		<ul class="theater-circle">
	    			<li>
	    				<a href="#">순천</a>
<!-- 	    				<a href="#">순천</a> -->
	    			</li>
	    		</ul>
	    		<a class="button small float-r fav-modal" title="선호영화관 관리" style="font-size:1em"> 
	    		<i class="fa-solid fa-gear"></i> 
<!-- 	    		<i class="iconset ico-edit"></i> -->
	    		선호영화관 관리</a>
	    	</div>
	    	
	    </div>
		
<!-- 		<div class="tit-util mt70 mb15"> -->
<!-- 			<h3 class="tit">상영 시간표</h3> -->
<!-- 		</div> -->
		<br>
		<br>
		
		<div class="reserve theater-list-box">
			<div class="tab-block tab-layer mb30" style="display: none;">
				<ul></ul>	
			</div>
			<c:forEach var="movieGroup" items="${movieGroup}">
			    <div class="theater-list">
			        <div class="theater-tit">
			            <p class="movie-grade age-${movieGroup.movie_rated }"></p>
			            <p><a href="movieDetail?movie_code=${movieGroup.movie_code}" title="${movieGroup.movie_nameK} 상세보기">${movieGroup.movie_nameK}</a></p>
			            <p class="infomation"><span>상영중</span>/상영시간 ${movieGroup.movie_runtime}</p>
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
		
		
		
		
		
		
		
		
		
		
		


		
		<div class="tit-util mt70 mb15">
			<h3 class="tit">극장 이벤트</h3>
	        <a href="eventList?eventCate_Idx=5" class="more" title="극장 이벤트 더보기">더보기 <i class="fa-solid fa-angle-right"></i></a>
		</div>
	
<!-- 		<div class="event-box"> -->
<!-- 			<ul> -->
<!-- 				<li> -->
<!-- 					<a href="#" class="eventBtn" data-no="14183" data-netfunnel="N" title="[코엑스] 더 부티크 스위트 평일 2만 5천원 관람 이벤트 상세보기"> -->
<!-- 						<img src="https://img.megabox.co.kr/SharedImg/event/2023/09/27/39i2JMCOpghfRB06jui0Ow6xp17PYZvR.jpg" alt="[코엑스] 더 부티크 스위트 평일 2만 5천원 관람 이벤트" onerror="noImg(this)" /> -->
<!-- 					</a> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<a href="#" class="eventBtn" data-no="14058" data-netfunnel="N" title="[대구경북지역] 대구경북 추석 감사제! 상세보기"> -->
<!-- 						<img src="https://img.megabox.co.kr/SharedImg/event/2023/09/15/FaIa0oUkmck1Dhz0KCYSTj0BlqKVFgZL.jpg" alt="[대구경북지역] 대구경북 추석 감사제!" onerror="noImg(this)" /> -->
<!-- 					</a> -->
<!-- 				</li> -->



	<!-- 이 부분 원래 주석 -->
	<!-- 			<li> -->
	<!-- 				<a href="#" class="eventBtn" data-no="14183" data-netfunnel="N" title="[코엑스] 더 부티크 스위트 평일 2만 5천원 관람 이벤트 상세보기"> -->
	<!-- 					<img src="https://img.megabox.co.kr/SharedImg/event/2023/09/27/39i2JMCOpghfRB06jui0Ow6xp17PYZvR.jpg" alt="[코엑스] 더 부티크 스위트 평일 2만 5천원 관람 이벤트" onerror="noImg(this)" /> -->
	<!-- 				</a> -->
	<!-- 			</li> -->
	<!-- 이 부분 원래 주석 -->
	
	
	
<!-- 			</ul> -->
<!-- 		</div> -->
		
		
		
		
		<!-- 1109 추가 -->
		
		
		
<!-- 		<div class="row"> -->
<!-- 		    <div class="col-lg-12">  -->
<%-- 			<c:forEach var="eventCate" items="${eventCateList }"> --%>
<!--                    <div class="section-title"> -->
<%--                        <h5 style="margin: 10px 10px 10px 10px;">${eventCate.eventCate_Subject }</h5> --%>
<%--                        <h6 align="right" style="color: #1C1C1C;" onclick="location.href='eventList?eventCate_Idx=${eventCate.eventCate_Idx}'" >더보기</h6> --%>
<!--                    </div> -->
				<div class="row" style="justify-content: center">
						<section class="theaterEvent">
					<c:forEach var="event" items="${eventList }" >
<%-- 							<c:if test="${event.event_category eq 5 }"> --%>
						    	<a href="eventDetail?event_idx=${event.event_idx}">
									<img src ="${pageContext.request.contextPath }/resources/upload/${event.event_thumbnail }" width="240" height="240" style="margin: 10px 10px 10px 10px;">
								</a>
<%-- 								<h6 align="center" style="color: #1C1C1C; margin: 10px 10px 10px 10px;">${event.event_startDt } ~ ${event.event_endDt }</h6> --%>
<%-- 							</c:if> --%>
					</c:forEach>
						</section>
				</div>
<%-- 			</c:forEach> --%>
<!-- 			</div> -->
<!-- 		</div>	 -->
		
		
		
		
		
		
		
		
		
		
	
	
	
	</div>
	
	
	

	
	
	
	
	<jsp:include page="../include/main_footer.jsp"></jsp:include>
    
    
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
	            $(".theater-place .theater-list").hide();
	            
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
	        
	        $(".reserve .theater-list").show();
	    });

    </script>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>