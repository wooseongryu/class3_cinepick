<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CINEPICK</title>

	<!-- 부트 스트랩 datepicker용 최신 jquery 링크 -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

	<!-- 부트 스트랩 css cdn 링크 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- 부트 스트랩 datepicker css 링크 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/mypage/css/bootstrap-datepicker.min.css">

    <!-- admin_page_update 추가 -->
    <link href="${pageContext.request.contextPath }/resources/mypage/css/admin_page_update.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath }/resources/mypage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath }/resources/mypage/css/sb-admin-2.css" rel="stylesheet">
    
    
    <style>
		label {
		    cursor: pointer;
		    font-size: 1em;
		}
		
		/* 못생긴 기존 input 숨기기 */
		#inputGroupFile04 {
		  /* display: none; */
		}
		
	</style>
	<script>
	
	function getNowTime() {
		let today = new Date();   

		let hours = ('0' + today.getHours()).slice(-2); 
		let minutes = ('0' + today.getMinutes()).slice(-2);

		return hours + ':' + minutes;
	}
	
	function limitRegistTime(hour) {
		let nowTime =  getNowTime()
		
		// 등록일이 오늘이면 현재 시간보다 다음 시간표만 등록 가능.
		if (nowTime < hour || getTodayDate() < $("#date-select").val()) {
			$("#time-select").append("<option value='" + hour + ":00'>" + hour + "</option>");
		}
	}
	
	function getTodayDate() {
		let today = new Date();
		let year = today.getFullYear();
		let month = ('0' + (today.getMonth() + 1)).slice(-2);
		let day = ('0' + today.getDate()).slice(-2);
		let dateString = year + '-' + month  + '-' + day;
		
		return dateString;
	}
	
	function limitRegistDate(opendt) {
		let dateString = getTodayDate();
		// 개봉일이 내일 보다 이전이면 내일 기준으로 제한.
		if (opendt < dateString) {
			$("#date-select").attr("min", dateString);
			return;
		}
	
		$("#date-select").attr("min", opendt);
	}
	
	function scheduleCheck() {
		$.ajax({
			type: 'post',
			url: 'adminScheduleCheck',
			data: {
				sche_date : $("#date-select").val(),
				sche_movie_code : $("#movie-select").val(),
				sche_screen_idx : $("#screen-select").val(),
				sche_theater_idx : $("#theater-select").val()
			},
			dataType: 'json',
			success: function(resp) {
				$("#time-select").children().remove();
				for (let i = 0; i < resp.length; i++) {
					let hour = resp[i].hour;
					if (Number(hour) < 10) {
						hour = "0" + hour;
					}
					hour += ":00";
					
					limitRegistTime(hour);
				}
			},
			error: function() {
				alert("에러");
			}
		});
	}
	
	$(function() {
		// 초기 화면 출력 값
		$.ajax({
			type: 'post',
			url: 'adminScheduleInitInfo',
			dataType: 'json',
			data: {
				sche_theater_idx : $("#sche_theater_idx").val()
			},
			success: function(resp) {
				let movie_openDt = $("#sche_movie_openDt").val();
				limitRegistDate(movie_openDt);
				
				for (let i = 0; i < resp.theater.length; i++) {
					$("#theater-select").append("<option value='" + resp.theater[i].theater_idx + "'>" + resp.theater[i].theater_name + "</option>");
				}
				
				let theater_idx = $("#sche_theater_idx").val();
				if (theater_idx != null) {
					$("#theater-select").val(theater_idx + "").prop("selected", true);
				}
				
				for (let i = 0; i < resp.movie.length; i++) {
					$("#movie-select").append("<option value='" + resp.movie[i].movie_code + "'data-opendt='" + resp.movie[i].movie_openDt + "'>" + resp.movie[i].movie_nameK + "</option>");
				}
				
				let movie_code = $("#sche_movie_code").val();
				if (movie_code != null) {
					$("#movie-select").val(movie_code + "").prop("selected", true);
				}
				
				for (let i = 0; i < resp.screen.length; i++) {
					$("#screen-select").append("<option value='" + resp.screen[i].screen_idx + "'>" + resp.screen[i].screen_name + "</option>");
				}
				
				let screen_idx = $("#sche_screen_idx").val();
				if (screen_idx != null) {
					$("#screen-select").val(screen_idx + "").prop("selected", true);
				}
				
				scheduleCheck();
			},
			error: function() {
				alert("에러");
			}
		});
		
		// 영화관이 변경될 시 상영관도 그에 맞게 변경.
		$("#theater-select").on("change", function() {
			// 영화관 변경 시 검색 초기화
			$("#time-select").children().remove();
			
			$.ajax({
				type: 'post',
				url: 'adminScheduleScreen',
				data: {
					screen_theater_idx : $("#theater-select").val()
				},
				dataType: 'json',
				success: function(resp) {
					$("#screen-select").children().remove();
					for (let i = 0; i < resp.length; i++) {
						$("#screen-select").append("<option value='" + resp[i].screen_idx + "'>" + resp[i].screen_name + "</option>");
					}
				},
				error: function() {
					alert("에러!");
				}
			});
		});
		
		// 날짜 변경 시 검색 초기화
		$("#date-select").on("change", function() {
			$("#time-select").children().remove();
		});
		
		// 상영관 변경 시 검색 초기화
		$("#screen-select").on("change", function() {
			$("#time-select").children().remove();
		});
		
		// 영화 변경 시 검색 초기화
		$("#movie-select").on("change", function() {
			limitRegistDate($("#movie-select option:selected").data('opendt'));
			$("#time-select").children().remove();
		});
		
		// 검색 버튼 클릭 시 시간 조회.
		$("#search-time").on("click", function() {
			if ($("#date-select").val() == "") {
				alert("상영일을 선택해주세요.");
				return;
			}
			
			scheduleCheck();
		});
		
	});
	</script>
	
	
</head>

<body class="bg-gradient-primary">
	<input type="hidden" id="sche_theater_idx" value="${schedule.sche_theater_idx }">
	<input type="hidden" id="sche_screen_idx" value="${schedule.sche_screen_idx }">
	<input type="hidden" id="sche_movie_code" value="${schedule.sche_movie_code }">
	<input type="hidden" id="sche_movie_openDt" value="${schedule.movie_openDt }">
    <div class="container">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">상영스케줄 수정</h1>
                            </div>
                            <form id="test" action="adminScheduleUpdatePro" class="user" method="post" enctype="multipart/form-data">
                            	<input type="hidden" name="sche_idx" id="sche_idx" value="${schedule.sche_idx }">
								<div class="form-group row">
								  	<div class="col-sm-6 mb-3 mb-sm-0">
										<label for="">상영일</label>
										<input type="date" name="sche_date" id="date-select" value="${schedule.sche_date }">
	                                </div>
								</div>
								<br>
                                <div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<label for="">영화관명</label>
										<br>
	                                    <select id="theater-select" name="sche_theater_idx" class="form-select" aria-label="Default select example" required="required">
										</select>
								  	</div>
									<div class="col-sm-6 mb-3 mb-sm-0"> 
										<label for="">상영관</label>
										<br>
	                                    <select id="screen-select" name="sche_screen_idx" class="form-select" aria-label="Default select example" required="required">
										</select>
								  	</div>
                                </div>
                                <div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<label for="">영화선택</label>
										<br>
	                                    <select id="movie-select" name="sche_movie_code" class="form-select" aria-label="Default select example" required="required">
										</select>
								  	</div>
									<div class="col-sm-6 mb-3 mb-sm-0">
										<label for="">상영시작시간</label>
										<input type="button" id="search-time" value="검색">
										<br>
	                                    <select id="time-select" name="sche_start_time" class="form-select" aria-label="Default select example" required="required">
										</select>
								  	</div>
                                </div>

								<br>
                                
                                <div class="form-group row" align="center">
									<div class="col-sm-12 mb-6 mb-sm-0">
		                                <input type="submit" class="btn btn-primary btn-user" value="수정">
		                                &nbsp;
		                                <input type="button" class="btn btn-primary btn-user" onclick="history.back()" value="돌아가기">
									</div>
								</div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



	<!-- 부트 스트랩 js cdn 링크 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

	<!-- 부트 스트랩 datepicker js 링크 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/js/bootstrap-datepicker.min.js" integrity="sha512-LsnSViqQyaXpD4mBBdRYeP6sRwJiJveh2ZIbW41EBrNmKxgr/LFZIiWT6yr+nycvhvauz8c2nYMhrP80YhG7Cw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	
	<script src="${pageContext.request.contextPath }/resources/mypage/js/bootstrap-datepicker.min.js"></script>
	
    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath }/resources/mypage/js/sb-admin-2.min.js"></script>

	<script>
		$('#datepicker').datepicker();
	</script>

</body>

</html>