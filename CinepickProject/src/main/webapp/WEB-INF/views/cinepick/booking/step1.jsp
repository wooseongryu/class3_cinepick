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
    <title>CINEPICK</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    
   	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
    

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/booking.css" type="text/css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/booking_3_4.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">
    
    <style type="text/css">
    	.col {
    		padding-left: 5px;
    		padding-right: 5px;
    	}
    	.col-2 {
    		padding-left: 5px;
    		padding-right: 5px;
    	}
    	.col-4 {
    		padding-left: 5px;
    		padding-right: 5px;
    	}
    	.movie_title > h6 {
    		width: 150px;
    		text-overflow: ellipsis;
			overflow: hidden;
			white-space: nowrap;
			text-align: left;
			margin-left: 30px;
			cursor: pointer;
    	}
    	#step1_city h6,
    	#step1_theater h6,
    	#step1_screen h6,
    	#step1_date h6 {
    		cursor: pointer;
    	}
    	
    </style>
    <script type="text/javascript">
	    	function final(data) {
	//     		alert(data.getAttribute("data-movieCode"));
	//     		alert(data.getAttribute("data-theaterIdx"));
	//     		alert(data.getAttribute("data-date"));
	//     		alert(data.getAttribute("data-screenName"));
	//     		alert(data.getAttribute("data-hour"));
	// 			alert(data.getAttribute("data-screen_idx"));
	
				$.ajax({
					type: 'post',
					url: 'getSchedule',
					dataType: 'json',
					data: {
						sche_movie_code : data.getAttribute("data-movieCode"),
						sche_theater_idx : data.getAttribute("data-theaterIdx"),
						sche_date : data.getAttribute("data-date"),
						sche_start_time : data.getAttribute("data-hour") + ":00",
						sche_screen_idx : data.getAttribute("data-screen_idx")
					},
					success: function(resp) {
// 						alert(resp);
// 						console.log(resp.sche_idx)
// 						console.log(resp.movie_nameK);
// 						console.log(resp.sche_date);
// 						console.log(resp.sche_start_time);
// 						console.log(resp.sche_end_time);
// 						console.log(resp.theater_name);
// 						console.log(resp.screen_name);
// 						console.log(resp.movie_poster);
// 						console.log(resp.movie_rated);
						let action = "<form action='bookingStepTwo' method='post'>"
							+ "<input type='hidden' name='sche_idx' id='sche_idx' value='" + resp.sche_idx + "'>"
							+ "<input type='hidden' name='movie_nameK' id='movie_nameK' value='" + resp.movie_nameK + "'>"
							+ "<input type='hidden' name='sche_date' id='sche_date' value='" + resp.sche_date + "'>"
							+ "<input type='hidden' name='sche_start_time' id='sche_start_time' value='" + resp.sche_start_time + "'>"
							+ "<input type='hidden' name='sche_end_time' id='sche_end_time' value='" + resp.sche_end_time + "'>"
							+ "<input type='hidden' name='theater_name' id='theater_name' value='" + resp.theater_name + "'>"
							+ "<input type='hidden' name='screen_name' id='screen_name' value='" + resp.screen_name + "'>"
							+ "<input type='hidden' name='movie_poster' id='movie_poster' value='" + resp.movie_poster + "'>"
							+ "<input type='hidden' name='movie_rated' id='movie_rated' value='" + resp.movie_rated + "'>"
							+ "<input type='submit' value='좌석선택' class='res_btn'>"
							+ "</form>"
						$("#result").children().remove();
						$("#result").append(action);
						
						$("#step1_screen > .row").find("h6").css("color", "#1c1c1c");
						$("#step1_screen > .row[name='" + data.getAttribute("data-screenName") + "']").find("h6[data-hour='" + data.getAttribute("data-hour") + "']").css("color", "#503396");
						
						$("#result_screen").children().remove();
			    		$("#result_screen").append("<h6>상영관&emsp;" + data.getAttribute("data-screenName") + "</h6>");
					},
					error: function() {
						alert("에러");
					}
				});
	    	}
	    
	    	function chooseTime(data) {
	    		$.ajax({
	    			type: 'post',
	    			url: 'getTimeList',
	    			dataType: 'json',
	    			data: {
	    				movie_code : data.getAttribute("data-movieCode")
	    				, theater_idx : data.getAttribute("data-theaterIdx")
	    				, date : data.getAttribute("data-date")
	    			},
	    			success: function(resp) {
	    				$("#step1_screen").children().remove();
	
						console.log(resp);
						$.each(resp.screenList, function(index, screen) {
							$("#result_date").children().remove();
							$("#result_date").append("<h6>날짜&emsp;&emsp;" + data.getAttribute("data-date") + "</h6>");
							
							$("#step1_screen").append("<h6 style='color: #1c1c1c'>" + screen + "</h6>");
							$("#step1_screen").append("<div name='" + screen + "' class='row' id='step1_time''>");
							$.each(resp.timeList, function(index, time) {
								let hour = time.sche_start_time.hour;
		 						if (hour < 10) {
		 							hour = "0" + hour;
		 						}
								hour += ":00";
		 						if (screen == time.screen_name) {
	// 	 							console.log(screen + ": " + time.screen_name);
			 						$("#step1_screen").children(".row").last().append(
				 								"<div class='col-4'><h6 data-hour='" 
		 										+ hour 
		 										+ "' data-movieCode='" 
		 										+ data.getAttribute("data-movieCode") 
		 										+ "' data-theaterIdx='" 
		 										+ data.getAttribute("data-theaterIdx") 
		 										+ "' data-date='" 
		 										+ data.getAttribute("data-date")
		 										+ "' data-screenName='" 
		 										+ time.screen_name 
		 										+ "' data-screen_idx='" 
		 										+ time.sche_screen_idx
		 										+ "' onclick='final(this)'>" + hour + " | " + "27석" + "</h6></div>"
			 								);
		 						}
							});
							$("#step1_screen").append("</div>");
							$("#step1_screen").append("<hr>");
						});
						
						$("#step1_date").children("h6").css("color", "#1c1c1c");
	    				$("#step1_date").children("h6[data-date=" + data.getAttribute("data-date") +"]").css("color", "#503396");
	    				
	    				$("#result_screen").children().remove();
	    	    		$("#result_screen").append("<h6>상영관&emsp;상영관선택</h6>");
	    	    		
	    	    		$("#result").children().remove();
	    	    		$("#result").append("<div><input type='button' value='좌석선택' disabled='disabled' style='background: silver;' class='res_btn'></div>");    			},
	    			error: function() {
	    				alert("에러");
	    			}
	    		});
	    	}
	    
	    	function chooseDate(data) {
	    		$.ajax({
	    			type: 'post',
	    			url: 'getDateList',
	    			dataType: 'json',
	    			data: {
	    				movie_code : data.getAttribute("data-movieCode")
	    				, theater_idx : data.getAttribute("data-theaterIdx")
	    			},
	    			success: function(resp) {
	    				$("#step1_date").children().remove();
	    				$("#step1_screen").children().remove();
	    				
	    				let arrDayStr = ['일','월','화','수','목','금','토'];
	   					let month = "";
	   					let year = "";
	    				$.each(resp, function(index, el) {
	    					$("#result_theaterName").children().remove();
	    					$("#result_theaterName").append("<h6>극장&emsp;&emsp;" + data.getAttribute('data-movieName') + "</h6>");
	    					
	    					if (el.sche_date.year != year) {
	    						year = el.sche_date.year;
	    					}
	    					
	    					if (el.sche_date.month != month) {
	    						month = el.sche_date.month;
		    					$("#step1_date").append("<div><h6 style='margin-bottom: 0px; color: #1c1c1c'>" 
								    					+ year
								    					+ "</h6></div>");
		    					$("#step1_date").append("<h2>" + month + "</h2>");
	    					}
	    					
	    					let day = el.sche_date.day;
	    					
	    					let date = new Date(year + "-" + month + "-" + day);
	    					
	    					let date2 = date.getDate();
	    					if (date2 < 10) {
	    						date2 = "0" + date2;
	    					}
	    					
	    					let sche_date = date.getFullYear() + '-' + (date.getMonth()+1) + '-' + date2;
	    					
	    					$("#step1_date").append("<h6 data-theaterIdx='" 
	    											+ data.getAttribute("data-theaterIdx") 
	    											+ "' data-movieCode='" 
	    											+ data.getAttribute("data-movieCode") 
	    											+ "' data-date='" 
	    											+ sche_date 
	    											+ "' onclick='chooseTime(this)'>" 
	    											+ arrDayStr[date.getDay()] + " " + day 
	    											+ "</h6>");
	    				});
	    				
	    				$("#step1_theater").children("h6").css("color", "#1c1c1c");
	    				$("#step1_theater").children("h6[data-theaterIdx=" + data.getAttribute("data-theaterIdx") +"]").css("color", "#503396");
	    				
	    				$("#result_date").children().remove();
	    				$("#result_date").append("<h6>날짜&emsp;&emsp;날짜선택</h6>");
	    				
	    				$("#result_screen").children().remove();
	    	    		$("#result_screen").append("<h6>상영관&emsp;상영관선택</h6>");
	    	    		
	    	    		$("#result").children().remove();
	    	    		$("#result").append("<div><input type='button' value='좌석선택' disabled='disabled' style='background: silver;' class='res_btn'></div>");    			},
	    			error: function() {
	    				alert("에러");
	    			}
	    		});
	    	}
	    
	    	function chooseTheater(city) {
	    		$.ajax({
	    			type: 'post',
	    			url: 'getTheaterList',
	    			dataType: 'json',
	    			data: {
	    				movie_code : city.getAttribute("data-movieCode")
	    				, city_idx : city.getAttribute("data-cityIdx")
	    			},
	    			success: function(resp) {
	    				$("#step1_theater").children().remove();
	    				$("#step1_date").children().remove();
	    				$("#step1_screen").children().remove();
						$.each(resp, function(index, el) {
							let theater = "<h6 data-movieCode='" 
											+ city.getAttribute("data-movieCode") 
											+ "' data-theaterIdx='" 
											+ el.theater_idx 
											+ "' data-movieName='"
											+ el.theater_name
											+ "' onclick='chooseDate(this)'>" 
											+ el.theater_name 
											+ "</h6>";
							$("#step1_theater").append(theater);
						});
						
						$("#result_theaterName").children().remove();
	    				$("#result_theaterName").append("<h6>극장&emsp;&emsp;극장선택</h6>");
						
						$("#step1_city").find("h6").css("color", "#1c1c1c");
	    				$("#step1_city").find("h6[data-cityIdx=" + city.getAttribute('data-cityIdx') +"]").css("color", "#503396");
	    				
	    				$("#result_date").children().remove();
	    				$("#result_date").append("<h6>날짜&emsp;&emsp;날짜선택</h6>");
	    				
	    				$("#result_screen").children().remove();
	    	    		$("#result_screen").append("<h6>상영관&emsp;상영관선택</h6>");
	    	    		
	    	    		$("#result").children().remove();
	    	    		$("#result").append("<div><input type='button' value='좌석선택' disabled='disabled' style='background: silver;' class='res_btn'></div>");    			},
	    			error: function() {
	    				alert("에러");
	    			}
	    		});
	    	}
	    	
	    	function chooseCity(movie) {
	    		$.ajax({
	    			type: 'post',
	    			url: 'getCityList',
	    			dataType: 'json',
	    			data: {
	    				movie_code : movie
	    			},
	    			success: function(resp) {
	    				$("#step1_city").children().remove();
	    				$("#step1_theater").children().remove();
	    				$("#step1_date").children().remove();
	    				$("#step1_screen").children().remove();
	    				let movieCode = resp.movie_code;
	    				$.each(resp.cityList, function(index, el) {
							let city = "<h6 data-movieCode='" + movieCode
										+ "' data-cityIdx='" + el.city_idx 
										+ "' onclick='chooseTheater(this)'>" 
										+ el.city_name 
										+ "</h6>"
	    					$("#step1_city").append(city);
	    				});
	    				
	    				$("#result_theaterName").children().remove();
	    				$("#result_theaterName").append("<h6>극장&emsp;&emsp;극장선택</h6>");
	    				
	    				$("#result_poster").children().remove();
	    				$("#result_poster").append("<img src='" + resp.movieInfo.movie_poster + "' class='res_img'>");
	    				
	    				$("#result_movieName").children().remove();
	    				$("#result_movieName").append("<h6>" + resp.movieInfo.movie_nameK + "</h6>");
	
	    				$("#step1_movie").find("h6").css("color", "#1c1c1c");
	    				$("#step1_movie").find("h6[data-movieCode=" + movie +"]").css("color", "#503396");
	    				
	    				$("#result_date").children().remove();
	    				$("#result_date").append("<h6>날짜&emsp;&emsp;날짜선택</h6>");
	    				
	    				$("#result_screen").children().remove();
	    	    		$("#result_screen").append("<h6>상영관&emsp;상영관선택</h6>");
	    	    		
	    	    		$("#result").children().remove();
	    	    		$("#result").append("<div><input type='button' value='좌석선택' disabled='disabled' style='background: silver;' class='res_btn'></div>");
	    			
	    				movieName = resp.movieInfo.movie_nameK;
	    				console.log(movieName);
	    			},
	    			error: function() {
	    				alert("에러");
	    			}
	    		});
	    	}
	    
	    	$(function() {
	    		$.ajax({
	    			type: 'post',
	    			url: 'getMovieList',
	    			dataType: 'json',
	    			success: function(resp) {
						$.each(resp, function(index, el) {
							let age = el.movie_rated.substring(0, 2);
							if (age == '전체') {
								age = 'all';
							}
							
							let movie = el.movie_nameK;
							let test = "test";
							let movieInfo = "<div class='movie_title'>"
									+ "<div class='age'>"
									+ "<img src='${pageContext.request.contextPath }/resources/cinepick/img/age/" + age + ".png' style='height: 20px'>"
									+ "</div>"
									+ "<h6 data-movieCode='" + el.movie_code + "' onclick=\"chooseCity(" + el.movie_code + ")\">" + movie + "</h6>"
									+ "</div>";
							
							$("#step1_movie").append(movieInfo);
				    		
							// 영화상세보기에서 들어왔을 때.
							let movie_code = ${movie_code};
							if (movie_code != -1) {
								chooseCity(movie_code);
							}
						});
	    			},
	    			error: function() {
	    				alert("에러");
	    			}
	    		});
	    		
	    	});
    </script>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	<header>
		<jsp:include page="../include/main_top.jsp"></jsp:include>
	</header>

    <section class="product-page spad">
		<div class="container">
			<div class="row">
			
	             <div class="col-lg-11 col-md-8" style="float: none; margin: 0 auto;">
	             
	                 <div class="anime__details__review">
	                     <div class="section-title">
	                         <h5>영화예매</h5>
	                     </div>
	                     
	                     <div class="row">
							<div class="col">
								<div class="step1_head">
									<h6>
		                                영화
		                            </h6>
		                        </div>
		                        <div class="step1_body" id="step1_movie">
		                        </div>
						    </div>
						    
						    <div class="col">
								<div class="step1_head">
									<h6>극장</h6>
		                        </div>
		                        <div class="step1_body">
									<div class="row">
										<div class="col-7" id="step1_city">
										</div>
										<div class="col-5" id="step1_theater">
										</div>
									</div>
	                        	</div>
						    </div>
						    
						    <div class="col-2">
								<div class="step1_head">
									<h6>날짜</h6>
		                        </div>
		                        <div class="step1_body" id="step1_date">
	                        	</div>
						    </div>
						    
						    <div class="col-4">
								<div class="step1_head">
									<h6>시간</h6>
		                        </div>
		                        <div class="step1_time_body" id="step1_screen">
	                        	</div>
						    </div>
						</div>
						
						
						<div class="row">
							<div class="col">
								<div class="step3_result">
									<div class="res_result">
										<!-- 공간 차지 div -->
									</div>
									<div class="res_result" id="result_poster">
									</div>
									<div class="res_result" id="result_movieName">
										<h6>영화를 선택하세요.</h6>
									</div>
									<div class="res_result">
										<div id="result_theaterName">
											<h6>극장&emsp;&emsp;극장선택</h6>
										</div>
										<div id="result_date">
											<h6>날짜&emsp;&emsp;날짜선택</h6>
										</div>
										<div id="result_screen">
											<h6>상영관&emsp;상영관선택</h6>
										</div>
									</div>
									<div class="res_result">
									</div>
									<div class="res_result" id="result">
<!-- 										<input type="button" value="좌석선택" class="res_btn" onclick="location.href='bookingStepTwo'"> -->
										<div>
											<input type="button" value="좌석선택" class="res_btn" disabled="disabled" style="background: silver;">
										</div>
									</div>
		                        </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
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