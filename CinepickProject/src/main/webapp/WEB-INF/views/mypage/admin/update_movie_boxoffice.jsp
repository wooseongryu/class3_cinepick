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
	function updateBOClose() {
		window.close();
	}
		
		$(function() {
	// 		("#SelectBoDate") 날짜선택버튼
			
			$("#searchBOBtn").click(function() {

				let url = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json";
				let key = "f5eef3421c602c6cb7ea224104795888";
				let targetDt = "20231018"; //임시로 날짜지정 나중에 날짜선택값 받아와야함
				
				$.ajax({
					type: "GET",
					url: url + "?key=" + key + "&targetDt=" + targetDt,
					dataType: "json",
					success: function(data) {
						let boxOfficeResult = data.boxOfficeResult;
						let dailyBoxOfficeList = boxOfficeResult.dailyBoxOfficeList;
						 let boxofficeArray = [];
						
						$(".movieItem").remove();
						for(daily of dailyBoxOfficeList) {
	// 						boxofficeDaily
// 							debugger;
							let movieData = {
				                rank: daily.rank,
				                movieCd: daily.movieCd,
				                movieNm: daily.movieNm,
				                audiAcc: daily.audiAcc
				            };
				
							boxofficeArray.push(movieData);
							
							$("#resultArea > table").append(
									"<tr class='movieItem'>" 
									+ "<td class='td_center'>"+ daily.rank + "</td>"
									+ "<td class='td_center'>"+ daily.movieCd + "</td>"
									+ "<td class='td_center'>"+ daily.movieNm + "</td>"
									+ "<td class='td_center'>"+ daily.audiAcc + "명 </td>"
									+"</tr>"
							);
						}
						console.log(boxofficeArray);
						$("#jsonDataInput").val(JSON.stringify(boxofficeArray));
						
						
					}
				});//ajax끝
				
			});
		
		
			
		});//End
	</script>
	
	
</head>

<body class="bg-gradient-primary">

	<div class="container">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0" style="text-align: center">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">박스오피스 조회</h1>
                            </div>
                            <form class="user" method="post" action="adminUpdateBoxOffice">
                            	<input type="hidden" name="jsonData" id="jsonDataInput">
                                <div class="form-group row">
                                	<div class="col-sm-3 mb-2 mb-sm-0">
										<label for="">날짜선택</label>
                                        <input type="text" class="form-control form-control-user" id="insertBODate"
                                            placeholder="날짜선택창으로 변경해야함">
	                                </div>
	                                <div class="col-sm-3 mb-2 mb-sm-0">
										<label>박스오피스 조회하기</label>
										<br>
								    	<input type="button" class="btn btn-primary btn-user" value="검색" id="searchBOBtn">
									</div>
                                </div>
                                <div class="form-group row" id="resultArea">
	                                <table>
	                                	<tr>
											<th>박스오피스 순위</th>
	                                        <th>영화코드</th>
											<th>영화제목</th>
	                                        <th>누적관객수</th>
	                                	</tr>
	                                </table>
                                </div>
								<br>
                                <div class="form-group row" align="center">
									<div class="col-sm-12 mb-6 mb-sm-0">
		                                <input type="submit" class="btn btn-primary btn-user" value="등록">
		                                &nbsp;&nbsp;
		                                <input type="button" class="btn btn-primary btn-user" onclick="updateBOClose()" value="돌아가기">
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