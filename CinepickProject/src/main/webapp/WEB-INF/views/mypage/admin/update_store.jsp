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
// 		function readURL(input) {
// 			if(input.files && input.files[0]) {
// 				var reader = new FileReader();
// 				reader.onload = function(e) {
// 				document.getElementById('preview').src = e.target.result;
// 	    	};
// 			reader.readAsDataURL(input.files[0]);
// 			} else {
// 			document.getElementById('preview').src = "";
// 			}
// 		}
		
		
// 		function close() {
// 			window.close();
// 		}
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
                                <h1 class="h4 text-gray-900 mb-4">스토어 수정</h1>
                            </div>
                            <form class="user" action="adminStoreUpdatePro" method="post" enctype="multipart/form-data">
                            	<input type="hidden" name="store_idx" value="${store.store_idx }" >
                            	<div class="form-group row">
									<div class="col-sm-12 mb-6 mb-sm-0">
										<label for="">스토어 카테고리</label>
										<br>
	                                    <select class="form-select" name="store_category" aria-label="Default select example" >
									  		<c:forEach var="storeCategory" items="${storeCategoryList }">
												<c:choose>
													<c:when test="${storeCategory.storeCate_Idx eq store.store_category }">
														<option value="${storeCategory.storeCate_Idx }" selected="selected">${storeCategory.storeCate_Subject }</option>
													</c:when>
													<c:otherwise>
														<option value="${storeCategory.storeCate_Idx }">${storeCategory.storeCate_Subject }</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</select>
								  	</div>
                                </div>
                            	<div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
										<label for="">부연설명</label>
                                        <input type="text" name="store_short" class="form-control form-control-user" id="exampleFirstName"
                                            value="${store.store_short }">
                                    </div>
                                </div>
								<br>
								<div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
										<label for="">상품명</label>
                                        <input type="text" name="store_title" class="form-control form-control-user" id="exampleFirstName"
                                            value="${store.store_title }">
                                    </div>
                                </div>
								<br>
								<div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
										<label for="">가격</label>
                                        <input type="text" name="store_price" class="form-control form-control-user" id="exampleFirstName"
                                            value="${store.store_price }">
                                    </div>
                                </div>
								<br>
 								<div class="form-group row"> 
 									<div class="col-sm-5 mb-1 mb-sm-0"> 
 									    <label for="">이미지</label> 
 										<input type="file" name="store_thumbnail_multi" required="required"/> 
 								    </div> 
 								</div> 

                                
                                <div class="form-group row" align="center">
									<div class="col-sm-12 mb-6 mb-sm-0">
		                                <input type="submit" class="btn btn-primary btn-user" value="수정">
		                                &nbsp;
		                                <input type="reset" class="btn btn-primary btn-user" value="초기화">
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
// 	$("#fromDatepicker").datepicker({
// 			format: 'yyyy-mm-dd',
// 			autoclose: true,
// 		}).on('changeDate', function (selected) {
// 			var startDate = new Date(selected.date.valueOf());
// 			$('#toDatepicker').datepicker('setStartDate', startDate);
// 		}).on('clearDate', function (selected) {
// 			$('#toDatepicker').datepicker('setStartDate', null);
// 		});
		
// 	$("#toDatepicker").datepicker({
// 		format: 'yyyy-mm-dd',
// 		autoclose: true,
// 	}).on('changeDate', function (selected) {
// 		var endDate = new Date(selected.date.valueOf());
// 		$('#fromDatepicker').datepicker('setEndDate', endDate);
// 	}).on('clearDate', function (selected) {
// 		$('#fromDatepicker').datepicker('setEndDate', null);
// 	});
	</script>

</body>

</html>