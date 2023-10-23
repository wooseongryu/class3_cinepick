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

    <title>씨네픽 - webpage</title>
	<script src= "${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
	<!-- 부트 스트랩 datepicker용 최신 jquery 링크 -->

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
    
    
	<script>
		let movieInfo = {};
	
	
		function close() {
			window.close();
		}
		
		function moviePoster(codeNo) {
			let url = "http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2&detail=Y&ServiceKey=";
			let key = "72ZZ6HKD368CM3L3O660";
			
// 			console.log(title);
			return new Promise(function(resolve, reject) {
				$.ajax({
					type: "GET",
					url: url + key + "&codeNo=" + codeNo,
					dataType: "json",
					success: function(data) {
// 						debugger;
						console.log(data);
						
						if(data.Data[0].TotalCount == 0) {
							return resolve("");
							
						}
						
						let movieData = data.Data[0].Result[0];
						
						let plot = movieData.plots.plot[0].plotText;
						let posters = movieData.posters;
						let stills = movieData.stlls;
						console.log(plot);
						
			
						//객체저장 하나씩
// 						movieInfo.movie_plot = plot;
// 						movieInfo.movie_poster = posters;
// 						movieInfo.movie_still = stills;

						let addData = {
		                    movie_plot: plot,
		                    movie_poster: posters,
		                    movie_still: stills
		                };
						
						
						 resolve(addData);
					},
					error: function() {
		                // 에러 발생 시 Promise를 reject
		                reject();
		            }
				});//ajax 끝
			});	
		}
		
		
		$(function() {
			$("#searchMvBtn").on("click", function() {
				let url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json";
				let key = "f5eef3421c602c6cb7ea224104795888";
				let movieCd = $("#printCd").val();
				console.log(movieCd);
				
				$.ajax({
					type: "GET",
					url: url + "?key=" + key + "&movieCd=" + movieCd,
					dataType: "json",
					success: function(detail) {
// 						debugger;
						let movieInfoResult = detail.movieInfoResult;
						let movieInfo = movieInfoResult.movieInfo;
						
						let movieNm = movieInfo.movieNm; //영화명
						let movieNmEn = movieInfo.movieNmEn; //영화명(영어)
						let openDt = movieInfo.openDt; //개봉일
						let prdtStatNm = movieInfo.prdtStatNm; //제작상태(개봉,개봉예정)
						let showTm = movieInfo.showTm + "분"; //런닝타임
						let genreNm = movieInfo.genres[0].genreNm;
						let director = movieInfo.directors[0].peopleNm; //감독
						let GradeNm = movieInfo.audits[0].watchGradeNm; //심의등급
						let actors = movieInfo.actors; //배우
						let actor = "";
						for(let a of actors) {
							actor += a.peopleNm + " ";
						}
						
						movieInfo = {
								"movie_code" : movieCd
								, "movie_nameK" : movieNm
								, "movie_nameE": movieNmEn
								, "movie_openDt": openDt
								, "movie_status": prdtStatNm
								, "movie_runtime": showTm
								, "movie_genre": genreNm
								, "movie_rated": GradeNm
								, "movie_director": director
								, "movie_actor": actor
						};
						
						console.log(movieInfo);
						
						moviePoster(movieCd)
							.then(function (addData) {
							    // moviePoster 함수가 완료되면 실행되는 부분
							    
							    movieInfo.movie_plot = addData.movie_plot;
								movieInfo.movie_poster = addData.movie_poster;
								movieInfo.movie_still = addData.movie_still;

		                    	$("#printNm").val(movieInfo.movie_nameK);
		                    	$("#printNmE").val(movieInfo.movie_nameE);
								$("#printRated").val(GradeNm);
								$("#printOpenDt").val(openDt);
								$("#printStatus").val(prdtStatNm);
								$("#printRunTime").val(showTm);
								$("#printGenre").val(genreNm);
								$("#printDirector").val(director);
								$("#printActor").val(actor);
							    $("#printPoster").val(movieInfo.movie_poster);
							    $("#printStill").val(movieInfo.movie_still);
							    $("#printPlot").val(movieInfo.movie_plot);
							    console.log(movieInfo);
							})
							.catch(function (error) {
							    console.error("API 호출에 실패했습니다.");
							});
					}
				}); //ajax끝
			});
			
			
			
			
		});//End
	</script>
	
	
</head>

<body class="bg-gradient-primary">

    <div class="container">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">영화등록</h1>
                            </div>
                            <form class="user" method="post" action="adminMovieInsert2">
								<div class="form-group row">
								    <div class="col-sm-2 mb-1 mb-sm-0">
								        <label for="movie_code">영화코드</label>
									 	<br>
									 	<input type="text" class="form-control form-control-user" id="printCd" name="movie_code">
								    </div>
									<div class="col-sm-6 mb-3 mb-sm-0">
										<label>영화정보 불러오기</label>
										<br>
								    	<input type="button" class="btn btn-primary btn-user" value="검색" id="searchMvBtn">
								    </div>
								</div>
								<div class="form-group row">
									<div class="col-sm-3 mb-2 mb-sm-0">
										<label for="movie_rated">심의등급</label>
										<br>
										<input type="text" class="form-control form-control-user" id="printRated" name="movie_rated">
								  	</div>
								  	<div class="col-sm-3 mb-2 mb-sm-0">
										<label for="movie_openDt">개봉일</label>
										<input type="text" class="form-control form-control-user" id="printOpenDt" name="movie_openDt">
	                                </div>
                                    <div class="col-sm-3 mb-2 mb-sm-0">
										<label for="movie_status">제작상태</label>
                                        <input type="text" class="form-control form-control-user" id="printStatus" name="movie_status">
                                    </div>
	                            </div>    
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
										<label for="movie_nameK">영화제목</label>
                                        <input type="text" class="form-control form-control-user" id="printNm" name="movie_nameK">
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
										<label for="movie_nameE">영화제목(영문)</label>
                                        <input type="text" class="form-control form-control-user" id="printNmE" name="movie_nameE">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
										<label for="movie_runtime">러닝타임</label>
                                        <input type="text" class="form-control form-control-user" id="printRunTime" name="movie_runtime">
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
										<label for="movie_genre">장르</label>
                                        <input type="text" class="form-control form-control-user" id="printGenre" name="movie_genre">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
										<label for="movie_director">감독</label>
                                        <input type="text" class="form-control form-control-user" id="printDirector" name="movie_director">
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
										<label for="movie_actor">배우</label>
                                        <input type="text" class="form-control form-control-user" id="printActor" name="movie_actor">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="movie_poster">포스터url</label>
									  <textarea rows="3" class="form-control form-control-textarea" id="printPoster" name="movie_poster"></textarea>
									</div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="movie_stil">스틸컷url</label>
									  <textarea rows="6" class="form-control form-control-textarea" id="printStill" name="movie_still"></textarea>
									</div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="movie_plot">Comments</label>
									  <textarea rows="10" class="form-control form-control-textarea" id="printPlot" name="movie_plot"></textarea>
									</div>
                                </div>

								<br>
                                
                                <div class="form-group row" align="center">
									<div class="col-sm-12 mb-6 mb-sm-0">
		                                <input type="submit" class="btn btn-primary btn-user" onclick="close()" value="등록">
		                                &nbsp;
		                                <input type="reset" class="btn btn-primary btn-user" value="초기화">
		                                &nbsp;
		                                <input type="button" class="btn btn-primary btn-user" onclick="close()" value="돌아가기">
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


</body>

</html>