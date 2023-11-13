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
		
	<c:forEach var="movieGroup" items="${movieGroup}">
	<!-- 영화 이름 반복 -->
		<div class="theater-list">
		
			<div class="theater-tit">
				<p class="movie-grade"></p>
				<p>
					<a>${movieGroup.movie_nameK }</a>
				</p>
				<p>
					상영시간 ${movieGroup.movie_runtime} 
				</p>
			</div>
			<!-- theater-tit 끝 -->
		
			<c:forEach var="screenGroup" items="${timeSchedule }">
			<c:if test="${screenGroup.movie_nameK == movieGroup.movie_nameK }">
			<!-- 상영관 반복 -->
			<div class="theater-type-box">
		
				<div class="theater-type">
					<p class="theater-name">${screenGroup.screen_name }</p>
				</div>
			
				<div class="theater-time">
				
					<div class="theater-time-box">
						<table class="time-list-table">
						
							<colgroup>
								<col style="width:99px;">
								<col style="width:99px;">
								<col style="width:99px;">
								<col style="width:99px;">
								<col style="width:99px;">
								<col style="width:99px;">
								<col style="width:99px;">
								<col style="width:99px;">
							</colgroup>
							
							<tbody>
								<tr>
									<c:forEach var="schedule" items="${fn:split(screenGroup.sche_start_time, ',') }">
										<!-- 스케줄 반복 -->
										<td>
											${schedule }
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

			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	<!-- inner-wrap 끝 -->
	
	

<!-- 	<footer> -->
<%-- 		<jsp:include page="../include/main_footer.jsp"></jsp:include> --%>
<!-- 	</footer> -->
	<jsp:include page="../include/footerTest.jsp"></jsp:include>
	
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
			
// 			let facility = $(this).text().trim();
// 			$(this).prepend('<i class="iconset ico-facility-' + facility + '"></i> ');
			
	        // 시설을 포함하는 p 태그를 찾음
	        if ($(this).text().trim() === "MX") {
	            // 앞에 아이콘을 추가
	            $(this).prepend('<i class="iconset ico-facility-mx"></i> ');
	        }
	        if ($(this).text().trim() === "컴포트") {
	            // 앞에 아이콘을 추가
	            $(this).prepend('<i class="iconset ico-facility-comfort"></i> ');
	        }
	        if ($(this).text().trim() === "일반상영관") {
	            // 앞에 아이콘을 추가
	            $(this).prepend('<i class="iconset ico-facility-theater"></i> ');
	        }
	        if ($(this).text().trim() === "장애인석") {
	            // 앞에 아이콘을 추가
	            $(this).prepend('<i class="iconset ico-facility-disabled"></i> ');
	        }
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