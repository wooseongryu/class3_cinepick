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
    <style>
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
    
	<script>
		//돌아가기버튼
		function updateBOClose() {
			window.close();
		}
		
		// 날짜선택제한
		let now = new Date();
		now.setDate(now.getDate() - 1);
		let yesterday = String(now.toISOString().slice(0,10));
		console.log(yesterday);
		
		//등록 전 체크사항
		function insertMBChecked() {
// 			debugger;
// 			console.log()
// 			if(!$("#searchBOBtn").data('clicked') === true) {
// 				alert("조회버튼을 눌러주세요");
// 				return false;
// 			}
			if($("#jsonDataInput").val() == null || $("#jsonDataInput").val() == "") {
				alert("조회결과가 없습니다. 다시 시도해 주세요.");
				return false;
			}
		}
		
		$(function() {
	// 		("#SelectBoDate") 날짜선택버튼
			$("#selectBODate").val(yesterday);
			$("#selectBODate").attr("max", yesterday);
	
	
			
			$("#searchBOBtn").click(function() {

				let url = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json";
				let key = "f5eef3421c602c6cb7ea224104795888";
				
				
// 				$(this).data('clicked', true);
				
				//날짜값 가져오기
				let selectedDate = $("#selectBODate").val();
				console.log("선택된 날짜: " + selectedDate);
			
				//날짜 미선택시 "날짜 선택 필수!" 출력 후 캘린더에 포커스 요청
				if(selectedDate == "") {
					alert("날짜 선택 필수!");
					$("#date").focus();
					return;
				}
			
				let targetDt = selectedDate.replaceAll("-","");
				
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
                                <h6>★박스오피스 조회는 전날까지만 조회가 가능합니다.★</h6>
                            </div>
                            <form class="user" method="post" action="adminUpdateBoxOffice" onsubmit="return insertMBChecked()">
                            	<input type="hidden" name="jsonData" id="jsonDataInput">
                                <div class="form-group row">
                                	<div class="col-sm-3 mb-2 mb-sm-0">
										<label for="">날짜선택</label>
                                        <input type="date" class="select_detail" id="selectBODate" max="yesterday">
                                            
	                                </div>
	                                <div class="col-sm-3 mb-2 mb-sm-0">
<!-- 										<label>★박스오피스 조회는 전날 까지만 조회가 가능합니다.★</label> -->
										<br>
								    	<input type="button" class="btn btn-primary btn-user" value="검색" id="searchBOBtn">
									</div>
                                </div>
                                <div class="form-group row" id="resultArea">
	                                <table class="boxofficeListUpdate">
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