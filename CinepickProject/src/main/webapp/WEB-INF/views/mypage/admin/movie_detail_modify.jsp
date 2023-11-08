<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
		function detailBack() {
			history.back();
		}
		
		function movieDelete() {
			let result = confirm("삭제 하시겠습니까?");
			if(result) {
				location.href="MovieDelete?movie_code=${movie.movie_code}";
				
			}
		}
		
	</script>
	<style type="text/css">
	.select_detail {
	    font-size: 0.8rem;
	    border-radius: 10rem;
	    padding: 1.5rem 1rem;
	}
	.select_detail {
	    display: block;
	    width: 100%;
	    height: calc(1.5em + 0.75rem + 2px);
	    padding: 0.375rem 0.75rem;
	    font-size: 1rem;
	     font-size: 0.8rem;
	    border-radius: 10rem;
	    font-weight: 400;
	    line-height: 1.5;
	    color: #6e707e;
	    background-color: #fff;
	    background-clip: padding-box;
	    border: 1px solid #d1d3e2;
	    border-radius: 0.35rem;
	    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
	}
	</style>
	
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
                                <h1 class="h4 text-gray-900 mb-4">&lt;${movie.movie_nameK }&gt;  정보수정</h1>
                            </div>
                            <form class="user" method="post" action="movieDetailModifyPro">
								<div class="form-group row">
								    <div class="col-sm-2 mb-1 mb-sm-0">
								        <label for="movie_code">영화코드</label>
									 	<br>
									 	<input type="text" class="form-control form-control-user" value="${movie.movie_code }" name="movie_code" readonly>
								    </div>
<!-- 									<div class="col-sm-6 mb-3 mb-sm-0"> -->
<!-- 										<a href="https://www.kobis.or.kr/kobis/business/mast/mvie/searchMovieList.do#none" target="_blank"><label>영화코드 확인하기</label></a> -->
<!-- 										<br> -->
<!-- 								    	<input type="button" class="btn btn-primary btn-user" value="검색" id="searchMvBtn"> -->
<!-- 								    </div> -->
								</div>
								<div class="form-group row">
									<div class="col-sm-3 mb-2 mb-sm-0">
										<label for="movie_rated">심의등급</label>
										<br>
										<select name="movie_rated" class="select_detail">
											<option value="전체관람가" <c:if test="${movie.movie_rated eq '전체관람가' }">selected</c:if>>전체관람가</option>
											<option value="12세이상관람가" <c:if test="${movie.movie_rated eq '12세이상관람가' }">selected</c:if>>12세이상관람가</option>
											<option value="15세이상관람가" <c:if test="${movie.movie_rated eq '15세이상관람가' }">selected</c:if>>15세이상관람가</option>
											<option value="18세이상관람가" <c:if test="${movie.movie_rated eq '18세이상관람가' }">selected</c:if>>18세이상관람가</option>
										</select>
<%-- 										<input type="text" class="form-control form-control-user" value="${movie.movie_rated }" name="movie_rated"> --%>
								  	</div>
								  	<div class="col-sm-3 mb-2 mb-sm-0">
										<label for="movie_openDt">개봉일</label>
										<input type="date" class="select_detail" name="movie_openDt" value="${movie.movie_openDt }">
<%-- 										<input type="text" class="form-control form-control-user" value="${movie.movie_openDt }"  name="movie_openDt"> --%>
	                                </div>
                                    <div class="col-sm-3 mb-2 mb-sm-0">
										<label for="movie_status">개봉상태</label>
										<select name="movie_status" class="select_detail">
											<option value="개봉" <c:if test="${movie.movie_status eq '개봉' }">selected</c:if>>개봉</option>
											<option value="개봉예정" <c:if test="${movie.movie_status eq '개봉예정' }">selected</c:if>>개봉예정</option>
											<option value="상영종료" <c:if test="${movie.movie_status eq '상영종료' }">selected</c:if>>상영종료</option>
										</select>
<%--                                         <input type="text" class="form-control form-control-user" value="${movie.movie_status }"  name="movie_status"> --%>
                                    </div>
	                            </div>    
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
										<label for="movie_nameK">영화제목</label>
                                        <input type="text" class="form-control form-control-user" value="${movie.movie_nameK }"  name="movie_nameK">
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
										<label for="movie_nameE">영화제목(영문)</label>
                                        <input type="text" class="form-control form-control-user" value="${movie.movie_nameE }"  name="movie_nameE">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
										<label for="movie_runtime">러닝타임</label>
                                        <input type="text" class="form-control form-control-user" value="${movie.movie_runtime }"  name="movie_runtime">
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
										<label for="movie_genre">장르</label>
                                        <input type="text" class="form-control form-control-user" value="${movie.movie_genre }"  name="movie_genre">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
										<label for="movie_director">감독</label>
                                        <input type="text" class="form-control form-control-user" value="${movie.movie_director }"  name="movie_director">
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
										<label for="movie_actor">배우</label>
                                        <input type="text" class="form-control form-control-user" value="${movie.movie_actor }"  name="movie_actor">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="movie_poster">포스터url</label>
									  <textarea rows="3" class="form-control form-control-textarea" name="movie_poster">${movie.movie_poster }</textarea>
									</div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="movie_stil">스틸컷url</label>
									  <textarea rows="6" class="form-control form-control-textarea" name="movie_still">${movie.movie_still }</textarea>
									</div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="movie_vod">티저url</label>
									  <textarea rows="3" class="form-control form-control-textarea" name="movie_vod">${movie.movie_vod }</textarea>
									</div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="movie_plot">Comments</label>
									  <textarea rows="10" class="form-control form-control-textarea" name="movie_plot">${movie.movie_plot }</textarea>
									</div>
                                </div>

								<br>
                                
                                <div class="form-group row" align="center">
									<div class="col-sm-12 mb-6 mb-sm-0">
		                                <input type="submit" class="btn btn-primary btn-user"  value="수정">
		                                &nbsp;
<!-- 		                                <input type="button" class="btn btn-primary btn-user" onclick="movieDelete()" value="삭제" > -->
		                                &nbsp;
		                                <input type="button" class="btn btn-primary btn-user" onclick="detailBack()" value="돌아가기">
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