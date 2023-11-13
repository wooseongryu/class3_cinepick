 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>영화 상세 페이지</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

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
	<style>
		/*리뷰등록별점*/
		.reviewForm fieldset{
		    display: inline-block;
		    direction: rtl;
		    border:0;
		}
		.reviewForm fieldset legend{
		    text-align: right;
		}
		.reviewForm input[type=radio]{
		    display: none;
		}
		.reviewForm label{
		    font-size: 2em;
		    color: transparent;
		    text-shadow: 0 0 0 #f0f0f0;
		}
		.reviewForm label:hover{
		    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
		}
		.reviewForm label:hover ~ label{
		    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
		}
		.reviewForm input[type=radio]:checked ~ label{
		    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
		}
		
		/* 수정별점 */
		.reviewMForm fieldset{
		    display: inline-block;
		    direction: rtl;
		    border:0;
		}
		.reviewMForm fieldset legend{
		    text-align: right;
		}
		.reviewMForm input[type=radio]{
		    display: none;
		}
		.reviewMForm label{
		    font-size: 1em;
		    color: transparent;
		    text-shadow: 0 0 0 #f0f0f0;
		}
		.reviewMForm label:hover{
		    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
		}
		.reviewMForm label:hover ~ label{
		    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
		}
		.reviewMForm input[type=radio]:checked ~ label{
		    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
		}
		
		/*개인별점*/
		.reviewStarMin {
		   position: relative;
		    display: inline-block;
		   width: 90px;
		    height: 15px;
		    background-position: 0;
		    background-repeat: no-repeat;
		    background-image: url("${pageContext.request.contextPath }/resources/cinepick/img/review_star/bg_star_min.png");
		}
		
		.reviewStarMin .bg_star {
		   width: 90px;
		    height: 15px;
		    background-position: 0;
		    background-repeat: no-repeat;
		    background-image: url("${pageContext.request.contextPath }/resources/cinepick/img/review_star/bg_star_min_on.png");
		}
		
		/*영화별점*/
		.reviewStarMax {
		   position: relative;
		    display: inline-block;
		   width: 175px;
		    height: 30px;
		    background-position: 0;
		    background-repeat: no-repeat;
		   background-image: url("${pageContext.request.contextPath }/resources/cinepick/img/review_star/bg_star_max.png");
		}
		
		.bg_star{
		   position: absolute;
		    top: 0;
		    left: 0;
		    overflow: hidden;
		}
		
		.reviewStarMax .bg_star{
		   width: 175px;
		    height: 30px;
		    background-position: 0;
		    background-repeat: no-repeat;
		   background-image: url("${pageContext.request.contextPath }/resources/cinepick/img/review_star/bg_star_max_on.png");
		}
		
		.reviewBtn {
			width: auto;
			height: 25px;
			font-size: small;
			border: #1c1c1c 0.5px solid;
			border-radius: 5px;
			color: #1c1c1c;
			background: #fff;
		}
		
		.reviewBtn:hover {
			background: #503396;
			color: #fff;
			border: red;
		}
		
		.reviewBtn:disabled {
			width: auto;
			height: 25px;
			border: none;
			font-size: small;
			color: #b7b7b7;
			background: #fff;
		
		}
		
		.likeBtn {
			font-size: 13px;
		    color: #503396;
		    background: #ffffff;
		    display: inline-block;
		    font-weight: 700;
		    padding: 14px 20px;
		    border-radius: 4px;
		    margin-right: 11px;
		    border: 1px solid #503396;
		}
		
		.likeBtn:hover {
			background: #d8d9f7;
/* 			color: #ffffff; */
		}
		
		.likeBtn.full {
			background: #503396;
			color: #ffffff;
		}
		
		
	</style>
	<script src= "${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
	
	<script>
		function reviewDelete(user_id, movie_code, review_num) {
			console.log(user_id);
			
			 let result = confirm("리뷰를 삭제하시겠습니까?");
			 if(result) {
				 location.href="ReviewDelete?movie_code=" + movie_code + "&user_id=" + user_id + "&review_num=" + review_num;
			 }
		}
		 
		function funPause(undo) {
// 			alert("취소버튼");
// 			console.log(undo);
// 			$("#review"+review_num).empty();
			
			$("#review" + undo.review_num).html(undo.targetHtml);
					
// 			$(".anime__details__review").end();
		}
		//전역변수
		let undo;
		
		//리뷰수정
		function reviewModifyForm(movie_code, review_num, user_id, review_content, review_rating) {
// 			alert(review_num+","+ movie_code+","+ user_id+","+ review_content+","+ review_rating);
// 			let undo =  $("#review"+review_num).html();
			undo = {
					targetHtml : $("#review"+review_num).html(),
					review_num : review_num
			}
			
			
// 			console.log(undo.targetHtml);
			$("#review"+review_num).empty();
			
			$("#review"+review_num).append(
					'<form action="reviewModifyPro" class="reviewMForm">'
					+	'<input type="hidden" value="' + movie_code + '" name="movie_code">'
					+	'<input type="hidden" value="' + user_id + '" name="user_id">'
					+	'<input type="hidden" value="' + review_num + '" name="review_num">'
					+	'<h6>'
					+		'<span>' + user_id + '</span>&nbsp;&nbsp;'			
					+		'<span><input type="button" value="등록" class="reviewBtn" onclick="reviewModPro(' + review_num + ')"></span>&nbsp;&nbsp;'						
					+		'<span><input type="button" value="취소" class="reviewBtn" onclick="funPause(undo)"></span>'						
					+	'</h6>'
// 					+	'<div class="reviewStarMin">'
					+		'<div>'
					+			'<fieldset>'
					+				'<input type="radio" name="review_rating1" value="5" id="ratem1">'
					+				'<label for="ratem1">★</label>'
					+				'<input type="radio" name="review_rating1" value="4" id="ratem2">'
					+				'<label for="ratem2">★</label>'
					+				'<input type="radio" name="review_rating1" value="3" id="ratem3">'
					+				'<label for="ratem3">★</label>'
					+				'<input type="radio" name="review_rating1" value="2" id="ratem4">'
					+				'<label for="ratem4">★</label>'
					+				'<input type="radio" name="review_rating1" value="1" id="ratem5">'
					+				'<label for="ratem5">★</label>'
					+			'</fieldset>'
					+		'</div>'
// 					+	'</div>'
// 					+	'<span>' + review.review_date + '</span> &nbsp;&nbsp;&nbsp;'
					+	'<span id="checkModify' + review_num + '"></span>'
					+	'<textarea id="modiTextarea" name="review_content" style="border: none; width: 100%; color: #B8B8B8;">' + review_content.replaceAll("<br>", "\r\n") + '</textarea>' 
					+'</form>'
			
			);
			$("#modiTextarea").focus();
			$(".reviewMForm input[type=radio][value='" + review_rating + "']").attr('checked', true);
			
		}
		
		function reviewModPro(review_num) {
			console.log(review_num);
			
			if($("#modiTextarea").val() == "" || $("#modiTextarea").val() == null ) {
				alert("내용 입력 필수!");
				$("#modiTextarea").focus();
				return;
			}
// 			let review_content = $("#modiTextarea").replace("\r\n","<br>")
			
			$.ajax({
				type: "POST",
				url: "reviewModifyPro",
				data: $(".reviewMForm").serialize(),
				dataType: "text",
				success: function(result) {
					if(result == "true") {
						alert("리뷰가 수정되었습니다.");
						
						location.reload();
// 						$("#checkModify" + review_num).html("수정됨"); //왜 안될까?
					} else {
						alert("수정된 내용이 없습니다.");
					}
				},
				error: function() {
					alert("리뷰수정을 실패하였습니다.");
				}
			});
		}
		
		
		let sId;
		function reviewPage(pageNum, movie_code) {    
			
			sId =  "${sessionScope.sId}";
// 			alert(sId);
// 			alert(pageNum +", "+ movie_code);
			$.ajax({
				type: "GET",
				url: "reviewListAjax",
				data: {
					"pageNum" : pageNum,
					"movie_code" : movie_code 
				},
				dataType: "json",
				success: function(data) {
					
					let reviewList = data.review;
					
					
					$(".anime__details__review").empty();
					//for문 돌면서 append
					
					let str = "";
					for(review of reviewList) {
						str +='<div class="anime__review__item">'
						str += 	'<div class="anime__review__item__text" style="margin: auto;" id="review' + review.review_num +'">'
						str += 		'<h6>'
						str += 			'<span>' + review.user_id + '</span>'

						if(review.user_id == sId) {
						str += 				'<span><input type="button" value="수정" class="reviewBtn"  onclick="reviewModifyForm('+ review.movie_code + ', '+ review.review_num + ',\''+ review.user_id + '\',\''+ review.review_content + '\', ' + review.review_rating + ')"></span>'
						str += 				'<span><input type="button" value="삭제" class="reviewBtn" onclick="reviewDelete(\''+ review.user_id + '\', ' + review.movie_code + ',' + review.review_num + ')"></span>'
							
						}
						 
						str += 		'</h6>'
						str += 		'<div class="reviewStarMin">'
						str += 		   '<div class="bg_star" style="width:' + (review.review_rating  * 20) + '%;"></div>'
						str += 		'</div>'
						str += 		'<h6>'
						str += 			'<span>' + review.review_date + '</span> &nbsp;&nbsp;&nbsp;'
						str += 			'<span id="checkModify' + review.review_num + '"></span>'
						str += 		'</h6>'
						str += 		'<p id="review_contect' + review.review_num + '">'+ review.review_content + '</p>'
						str += 	'</div>'
						str +='</div>'
					}
					$('.anime__details__review').append(str);
					
					console.log("data.pageInfo.pageNum : " + pageNum);
					console.log("data.pageInfo.maxPage : " + data.pageInfo.maxPage);
					if(data.pageNum <= 1) {
						$("#btnReviewPrev").prop("disabled", true);
						$("#btnReviewNext").prop("disabled", false);
						$("#btnReviewNext").attr("onclick", onclick="reviewPage(" + (pageNum + 1) + ", "+ movie_code + ")");
						
// 						$("#btnReviewPrev").attr("disabled", "disabled");
// 						$("#btnReviewNext").removeAttr("disabled");
					} else if(data.pageNum > 1 && data.pageNum < data.pageInfo.maxPage) {
						$("#btnReviewPrev").prop("disabled", false);
						$("#btnReviewNext").prop("disabled", false);
						$("#btnReviewPrev").attr("onclick", onclick="reviewPage(" + (pageNum - 1) + ", "+ movie_code + ")");
						$("#btnReviewNext").attr("onclick", onclick="reviewPage(" + (pageNum + 1) + ", "+ movie_code + ")");
// 						$("#btnReviewPrev").removeAttr("disabled");
// 						$("#btnReviewNext").removeAttr("disabled");
					} else if(data.pageNum >= data.pageInfo.maxPage) {
						$("#btnReviewPrev").prop("disabled", false);
						$("#btnReviewNext").prop("disabled", true);
						$("#btnReviewPrev").attr("onclick", onclick="reviewPage(" + (pageNum - 1) + ", "+ movie_code + ")");
						$("#btnReviewNext").attr("onclick", onclick="reviewPage(" + (pageNum + 1) + ", "+ movie_code + ")");
// 						$("#btnReviewPrev").removeAttr("disabled");
// 						$("#btnReviewNext").attr("disabled", "disabled");
						
					}
					console.log($("#btnReviewPrev").prop("disabled"));
					console.log($("#btnReviewNext").prop("disabled"));
					
					
					
				}
				
					
				
			});


		}
		
		$(function() {
			
			//찜정보 불러오기
			let user_id = "${sessionScope.sId}";
			if(user_id != null || user_id != "") {
				$.ajax({
					type: "get",
					url: "SelectLikeMovie",
					data: {
						"user_id": user_id,
						"movie_code": ${movie.movie_code}
					},
					dataType: "json",
					success: function(data) {
						if(data.like_count > 0) {
							$(".likeBtn").addClass("full");
							$("#clickCheck").attr("disabled", true);
						}
					},
					error: function() {
						console.log("에러");
					}
				});
			}
			
			
			
			//찜하기
			let isRun = false;
			$("button[name='likeMovieBtn']").click(function() {
// 				debugger;
				let user_id = "${sessionScope.sId}";
				if(user_id == null || user_id == "") {
					alert("로그인시 이용가능한 기능입니다.");
					return;
				}
				let movie_code = $(this).closest("div").data("movie_code")+"";
				let isLike = $("#clickCheck").prop("disabled");
				console.log(isLike); 
				console.log(movie_code);
				console.log(user_id);
				
				if(isRun == true) {
					alert("작업요청 중입니다");
				        return;
				}
				isRun = true;
				
				$.ajax({
					url: "likeBtn",
					type: "POST",
					data: {
						"user_id": user_id,
						"movie_code": movie_code,
						"isLike": isLike
					},
					dataType: "text",
					success: function(result) {
						isRun  = false;
						console.log("성공?");
						console.log(isLike);
						
						if(isLike) {	// 찜 상태가 false면
							$(".likeBtn").removeClass("full");
// 							$("#likeMovie").text("♡찜하기");
							
							// 찜 상태 전환(false로)
							$("#clickCheck").attr("disabled", false);
							
						} else {	// 찜 상태가 true이면
							$(".likeBtn").addClass("full");
// 							$("#likeMovie").text("♡찜");
							
							// 찜 상태 전환(true로)
							$("#clickCheck").attr("disabled", true);
						}
						
						
					},
					error:  function(xhr, status, error) {
					    		console.log('에러 발생: ' + error);
							}	
				});

			});
		});
		
	
	</script>
	

</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header>
		<jsp:include page="../include/main_top.jsp"></jsp:include>
	</header>
    <!-- Header End -->

    <!-- Anime Section Begin -->
    <section class="anime-details spad">
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="anime__details__pic set-bg" data-setbg="${movie.movie_poster }"></div>
                    </div>
                    <div class="col-lg-9">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                                <h3>${movie.movie_nameK }</h3>
                                <span>${movie.movie_nameE }</span>
                            </div>
                            <div class="anime__details__rating">
                                <div class="reviewStarMax">
								   <div class="bg_star" style="width: ${movie.movie_avg * 20 }%;"></div>
								</div>
                                <span>${movie.movie_avg } / 5.0</span>
                            </div>
                            <p>${movie.movie_plot }</p>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>감독:</span>${movie.movie_director }</li>
                                            <li><span>장르:</span>${movie.movie_genre }</li>
                                            <li><span>관람가:</span>${movie.movie_rated }</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>개봉일:</span>${movie.movie_openDt }</li>
                                            <li><span>러닝타임:</span>${movie.movie_runtime }</li>
<%--                                             <li><span>관객수:</span> ${movie.movie_audi }</li> --%>
                                        </ul>
                                    </div>
                                    <div class="col-lg-12 col-md-6">
                                        <ul>
                                            <li id="actors-list"><span>출연:</span>${movie.movie_actor }</li>
                                        </ul>
                                    </div>
                                </div>
	                            <div class="anime__details__btn" data-movie_code="${movie.movie_code }">
	<!--                                 <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i> 찜하기</a> -->
									<c:if test="${movie.movie_status ne '상영종료' }">
										<a href="bookingStepOne?movie_code=${movie.movie_code }" class="follow-btn"><span>예매하기</span></a>
									</c:if>
<!-- 									<div class="like-btn" > -->
										<input type="hidden" id="clickCheck">
										<button class="likeBtn" id="likeMovie${movie.movie_code }" name="likeMovieBtn">♡</button>
<!-- 									<a href="javascript:" class="icon-heart">♡</a> -->
<!-- 									</div> -->
	                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                
                
            <c:if test="${!empty movie.movie_vod }">
	            <div class="section-title">
	                <h5>트레일러</h5>
	            </div>
	            <div class="row">
	                <div class="col-lg-1"></div>
	                <div class="col-lg-10">
	                    <div class="anime__video__player" style="text-align: center">
	<%--                     	<iframe width="560" height="315" src="${movie.movie_vod }" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe> --%>
<!-- 	                        <video id="player" playsinline controls> -->
<%-- 	                            <source src="${movie.movie_vod }" type="video/mp4" /> --%>
<!-- 	                        </video> -->
								<embed src="${movie.movie_vod }" id="player" width="940" height="580">
<!-- 								<video id="player" controls src="https://www.kmdb.or.kr/trailer/trailerPlayPop?pFileNm=MK039797_P02.mp4"></video> -->
	                       
<!-- 							<video id="player"> -->
<%-- 								<source src="${movie.movie_vod }"> --%>
<!-- 								<source src="/trailer/play/MK039797_P02.mp4"> -->
<!-- 							</video> -->
	                    </div>
	                </div>
	                <div class="col-lg-1"></div>
	            </div>
            </c:if>
            <div class="section-title">
                <h5>스틸컷</h5>
            </div>
            <div class="row" style="margin-bottom: 25px;">
            	<c:forEach var="movie_still" items="${movie.movie_stills }" begin="0" end="5">
		            <div class="col-lg-4 col-md-6 col-sm-6">
		                <div class="product__item">
		                    <div class="product__sidebar__view__item set-bg" data-setbg="${movie_still }">
		                    </div>
		                </div>
		            </div>
            	</c:forEach>
            </div>
            <c:if test="${movie.movie_status ne '개봉예정' }">    
	            <div class="row">
	                <div class="col-lg-12 col-md-8">
	                	<div class="anime__details__form" style="margin-bottom: 30px;">
	                        <div class="section-title">
	                            <h5>관람평 작성</h5>
	                        </div>
	                        <form action="reviewWritePro" class="reviewForm">
	                       		<fieldset>
	<!-- 								<span class="text-bold">별점을 선택해주세요</span> -->
									<input type="radio" name="review_rating" value="5" id="rate1">
									<label for="rate1">★</label>
									<input type="radio" name="review_rating" value="4" id="rate2">
									<label for="rate2">★</label>
									<input type="radio" name="review_rating" value="3" id="rate3">
									<label for="rate3">★</label>
									<input type="radio" name="review_rating" value="2" id="rate4">
									<label for="rate4">★</label>
									<input type="radio" name="review_rating" value="1" id="rate5">
									<label for="rate5">★</label>
								</fieldset>
	                        	<input type="hidden" value="${movie.movie_code }" name="movie_code">
	                            <textarea placeholder="리뷰를 작성해 주세요." name="review_content" style="border: 1px solid #B7B7B7;"></textarea>
	                            <button type="submit"><i class="fa fa-location-arrow"></i> 등록</button>
	                        </form>
	                    </div>
	                    <div class="anime__details__review" style="align-items: center;">
	                        <div class="section-title">
	                            <h5>관람평</h5>
	                        </div>
<!-- 	                        <div class="test" id="order_comment"> -->
<!-- 	                            <h5> -->
<!-- 	                                <a style="color: red;">최신순</a> -->
<!-- 	                                 &nbsp;&nbsp; -->
	<!--                                 <a href="movieDetail2">공감순</a> -->
<!-- 	                            </h5> -->
<!-- 	                        </div> -->
							<c:if test="${empty review }">
								<h6  style="color: #1c1c1c;">등록된 관람평이 없습니다.</h6>
							</c:if>
							<c:forEach var="review" items="${review }">
		                        <div class="anime__review__item">
		                            <div class="anime__review__item__text" style="margin: auto;" id="review${review.review_num }">
		                                <h6>
		                                	<span>${review.user_id }</span>
		                                	<c:if test="${review.user_id eq sessionScope.sId }">
			                                	<span><input type="button" value="수정" class="reviewBtn" 
			                                				onclick="reviewModifyForm(${review.movie_code}, ${review.review_num},'${review.user_id}','${review.review_content}', ${review.review_rating })"></span>
			                                	<span><input type="button" value="삭제" class="reviewBtn" onclick="reviewDelete('${review.user_id }', ${review.movie_code },${review.review_num })"></span>
		                                	</c:if>
		                                </h6>
		                            	<div class="reviewStarMin">
										   <div class="bg_star" style="width: ${review.review_rating * 20 }%;"></div>
										</div>
		                                <h6>
		                                    <span>${review.review_date }</span> &nbsp;&nbsp;&nbsp;
		                                    <span id="checkModify${review.review_num}"></span>
<!-- 		                                    <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i></a> 12 -->
		                                </h6>
		                                <p id="review_contect${review.review_num }">${review.review_content }</p>
		                            </div>
		                            
		                        </div>
							</c:forEach>
	<!--                         <div class="product__pagination"> -->
	<!--                             <a href="#"><i class="fa fa-angle-double-left"></i></a> -->
	<!--                             <a href="#" class="current-page">1</a> -->
	<!--                             <a href="#">2</a> -->
	<!--                             <a href="#">3</a> -->
	<!--                             <a href="#">4</a> -->
	<!--                             <a href="#">5</a> -->
	<!--                             <a href="#"><i class="fa fa-angle-double-right"></i></a> -->
	<!--                         </div> -->
	                    </div>
	                    <div id="reviewPager" style="display: flex; justify-content: center;">
<!-- 	                    페이징처리 -->
							<c:set var="pageNum" value="1" />
							<c:if test="${not empty param.pageNum }">
								<c:set var="pageNum" value="${param.pageNum }" />
							</c:if>
							<section id="reviewList">
<%-- 								<c:choose> --%>
<%-- 									<c:when test="${pageNum > 1 }"> 현재 페이지가 1보다 클 경우(버튼 동작) --%>
<%-- 										<input type="button" id="btnReviewPrev" value="이전" onclick="reviewPage(${pageNum - 1 }, ${movie.movie_code})"> --%>
<%-- 									</c:when> --%>
<%-- 									<c:otherwise> 현재 페이지 1 페이지보다 크지 않을 경우(버튼 비활성화) --%>
<%-- 										<input type="button" id="btnReviewPrev"  value="이전" disabled onclick="reviewPage(${pageNum - 1 }, ${movie.movie_code})"> --%>
<%-- 									</c:otherwise> --%>
<%-- 								</c:choose> --%>
								<input type="button" id="btnReviewPrev"  class="reviewBtn" value="이전" onclick="reviewPage(${pageNum - 1 }, ${movie.movie_code})" <c:if test="${pageNum <= 1 }">disabled</c:if>>
<%-- 								<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }"> --%>
<%-- 									<c:choose> --%>
<%-- 										<c:when test="${pageNum eq i }"> 현재 페이지일 경우(하이퍼링크 미표시 및 굵게) --%>
<%-- 											<b>${i }</b> --%>
<%-- 										</c:when> --%>
<%-- 										<c:otherwise> 현재 페이지가 아닐 경우(하이퍼링크 표시) --%>
<%-- 											<a href="movieDetail?pageNum=${i }&movie_code=${movie.movie_code}">${i }</a>  --%>
<%-- 										</c:otherwise> --%>
<%-- 									</c:choose> --%>
<%-- 								</c:forEach> --%>
								<input type="button" id="btnReviewNext" class="reviewBtn" value="다음" onclick="reviewPage(${pageNum + 1 }, ${movie.movie_code})" <c:if test="${pageNum >= pageInfo.maxPage }">disabled</c:if>>
<%-- 								<c:choose> --%>
<%-- 									<c:when test="${pageNum < pageInfo.maxPage }"> 현재 페이지가 1보다 클 경우(버튼 동작) --%>
<%-- <%-- 										<input type="button" value="다음" onclick="location.href='movieDetail?pageNum=${pageNum + 1 }&movie_code=${movie.movie_code}'"> --%>
<%-- 										<input type="button" id="btnReviewNext" value="다음" onclick="reviewPage(${pageNum + 1 }, ${movie.movie_code})"> --%>
<%-- 									</c:when> --%>
<%-- 									<c:otherwise> 현재 페이지 1 페이지보다 크지 않을 경우(버튼 비활성화) --%>
<%-- 										<input type="button" id="btnReviewNext" value="다음" disabled onclick="reviewPage(${pageNum + 1 }, ${movie.movie_code})"> --%>
<%-- 									</c:otherwise> --%>
<%-- 								</c:choose> --%>
							</section>
						</div>
<!-- 	                    <div class="anime__details__form"> -->
<!-- 	                        <div class="section-title"> -->
<!-- 	                            <h5>관람평 작성</h5> -->
<!-- 	                        </div> -->
<!-- 	                        <form action="reviewWritePro" id="reviewForm"> -->
<!-- 	                       		<fieldset> -->
	<!-- 								<span class="text-bold">별점을 선택해주세요</span> -->
<!-- 									<input type="radio" name="review_rating" value="5" id="rate1"> -->
<!-- 									<label for="rate1">★</label> -->
<!-- 									<input type="radio" name="review_rating" value="4" id="rate2"> -->
<!-- 									<label for="rate2">★</label> -->
<!-- 									<input type="radio" name="review_rating" value="3" id="rate3"> -->
<!-- 									<label for="rate3">★</label> -->
<!-- 									<input type="radio" name="review_rating" value="2" id="rate4"> -->
<!-- 									<label for="rate4">★</label> -->
<!-- 									<input type="radio" name="review_rating" value="1" id="rate5"> -->
<!-- 									<label for="rate5">★</label> -->
<!-- 								</fieldset> -->
<%-- 	                        	<input type="hidden" value="${movie.movie_code }" name="movie_code"> --%>
<!-- 	                            <textarea placeholder="리뷰를 작성해 주세요." name="review_content"></textarea> -->
<!-- 	                            <button type="submit"><i class="fa fa-location-arrow"></i> 등록</button> -->
<!-- 	                        </form> -->
<!-- 	                    </div> -->
	                </div>
	            </div>
            </c:if>
        </div>
    </section>
    <!-- Anime Section End -->

	<!-- Footer Section Begin -->
	<footer>
		<jsp:include page="../include/main_footer.jsp"></jsp:include>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.3.1.min.js"></script> --%>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/player.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/mixitup.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.slicknav.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/main.js"></script>
	
</body>

</html>