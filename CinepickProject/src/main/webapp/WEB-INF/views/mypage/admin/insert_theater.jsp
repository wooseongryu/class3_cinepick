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
                         		<h1 class="h4 text-gray-900 mb-4">극장 등록</h1>
                            </div>
                            <form class="user" action="adminTheaterInsertPro" method="post">
                               
								<div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="floatingTextarea">극장번호</label>
									  <textarea rows="1" name="brchNo" class="form-control form-control-textarea" 
									  	placeholder="극장번호작성" id="floatingTextarea"></textarea>
									</div>
                                </div>
                                <br>
								
								<div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="floatingTextarea">지역번호</label>
									  <textarea rows="1" name="city_idx" class="form-control form-control-textarea" 
									  	placeholder="지역번호작성" id="floatingTextarea"></textarea>
									</div>
                                </div>
								<br>
								
								<div class="form-group row">
									<div class="col-sm-12 mb-6 mb-sm-0">
										<label for="">극장명</label>
										<input type="text" name="theater_name" placeholder="극장명입력">
								  	</div>
                                </div>
								<br>
								
								<div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="floatingTextarea">극장설명</label>
									  <textarea rows="5" name="theater_title" class="form-control form-control-textarea" 
									  	placeholder="극장설명작성" id="floatingTextarea"></textarea>
									</div>
                                </div>
								<br>
								
								<div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="floatingTextarea">극장주소</label>
									  <textarea rows="5" name="theater_address" class="form-control form-control-textarea" 
									  	placeholder="극장주소작성" id="floatingTextarea"></textarea>
									</div>
                                </div>
								<br>
								
								<div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="floatingTextarea">Facility1</label>
									  <textarea rows="1" name="theater_facility1" class="form-control form-control-textarea" 
									  	placeholder="MX여부작성" id="floatingTextarea"></textarea>
									</div>
                                </div>
								<br>
								
								<div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="floatingTextarea">Facility2</label>
									  <textarea rows="1" name="theater_facility2" class="form-control form-control-textarea" 
									  	placeholder="컴포트여부작성" id="floatingTextarea"></textarea>
									</div>
                                </div>
								<br>
								
								<div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="floatingTextarea">Facility3</label>
									  <textarea rows="1" name="theater_facility3" class="form-control form-control-textarea" 
									  	placeholder="일반상영관여부작성" id="floatingTextarea"></textarea>
									</div>
                                </div>
								<br>
								
								<div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="floatingTextarea">Facility4</label>
									  <textarea rows="1" name="theater_facility4" class="form-control form-control-textarea" 
									  	placeholder="장애인석여부작성" id="floatingTextarea"></textarea>
									</div>
                                </div>
								<br>
								
                                
                                <div class="form-group row" align="center">
									<div class="col-sm-12 mb-6 mb-sm-0">
		                                <input type="submit" class="btn btn-primary btn-user" value="등록">&nbsp;
		                                <input type="reset" class="btn btn-primary btn-user" value="초기화">&nbsp;
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

</body>

</html>