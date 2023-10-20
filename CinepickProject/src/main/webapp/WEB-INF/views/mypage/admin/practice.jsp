<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src= "${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
<script>

let a = 10;
let movieJSON = {};
let daily = {};
let detailJson = {};
//일단 여기에 다 넣어놔



function movie_info(d) {
	
	let url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json";
	let key = "f5eef3421c602c6cb7ea224104795888";
	let movieCd = d.movieCd;
// 	console.log(movieCd);
	 return new Promise(function(resolve, reject) {
		$.ajax({
			type: "GET",
			url: url + "?key=" + key + "&movieCd=" + movieCd,
			dataType: "json",
			success: function(detail) {
				
				let movieInfoResult = detail.movieInfoResult;
				let movieInfo = movieInfoResult.movieInfo;
				
				let movieNmEn = movieInfo.movieNmEn;
				let showTm = movieInfo.showTm + "분";
				let genreNm = movieInfo.genres[0].genreNm;
				let director = movieInfo.directors[0].peopleNm;
				let GradeNm = movieInfo.audits[0].watchGradeNm;
	
				let actors = movieInfo.actors;
				let actor = "";
				for(let a of actors) {
					actor += a.peopleNm + " ";
				}
				
				//객체저장 하나씩
				detailJson = {
								"movieNmEn": movieNmEn
								, "showTm": showTm
								, "genreNm": genreNm
								, "director": director
								, "GradeNm": GradeNm
								, "actor": actor
							};
				console.log(detailJson);
				
				
				d.detailJson = detailJson;
// 				movieJSON.push(d);
				 resolve(d);
			},
			error: function() {
                // 에러 발생 시 Promise를 reject
                reject();
            }
		 
		}); // detail ajax 끝
		
		
		

	});
	
	//포스터 ajax 불러오기
	
	
	
	
// 	console.log(d);
}



	$(function() {
		$("#btnShow").on("click", function() {
			let url = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json";
			let key = "f5eef3421c602c6cb7ea224104795888";
			let targetDt = "20231018"; //임시로 날짜지정
			
			
			$.ajax({
				type: "GET",
				url: url + "?key=" + key + "&targetDt=" + targetDt, // url 뒤에 key 값과 targetDt 붙여줘야됨
				dataType: "json",
				success: function(data) {
 					let boxOfficeResult = data.boxOfficeResult;
					let boxofficeType = boxOfficeResult.boxofficeType; //boxOfficeResult 안에 들어있으니까
					let showRange = boxOfficeResult.showRange;
					let dailyBoxOfficeList = boxOfficeResult.dailyBoxOfficeList; //박스오피스 목록 추출
				
					
					$(".movieItem").remove();
					for(daily of dailyBoxOfficeList) { 
						//상세정보 조회 위한 페이지 요청 url생성(파라미터: 영화코드)
						
						
						movie_info(daily); //상세정보함수
						
// 						movieJSON.push(daily);
						console.log(daily);
// 						console.log(JSON.stringify(movieJSON));
						
						
					}
					let promises = dailyBoxOfficeList.map(movie_info);

	                // 모든 Promise가 완료되면 실행되는 코드
	                Promise.all(promises)
	                
	                    .then(function(results) {
	                        // 모든 영화 정보가 포함된 results를 사용
	                        //debugger;
	                        movieJSON = results;
	                        console.log(JSON.stringify(movieJSON));
	                        let movie = JSON.stringify(movieJSON);
	                        alert(movieJSON); //object
	                        alert(movie);
		                	for(movieInfo of movieJSON) {
								$("#resultArea > table").append(
										"<tr class='movieItem'>" 
										+ "<td class='td_center'>"+ movieInfo.rank + "</td>"
										+ "<td class='td_center'>"+ movieInfo.movieNm + "</td>"
										+ "<td class='td_center'>"+ movieInfo.openDt + "</td>"
										+ "<td class='td_center'>"+ movieInfo.audiAcc + "명 </td>"
										+ "<td class='td_center'>"+ movieInfo.movieCd + "</td>"
										+ "<td class='td_center'>"+ movieInfo.detailJson.movieNmEn + "</td>"
										+ "<td class='td_center'>"+ movieInfo.detailJson.showTm + "</td>"
										+ "<td class='td_center'>"+ movieInfo.detailJson.genreNm + "</td>"
										+ "<td class='td_center'>"+ movieInfo.detailJson.director + "</td>"
										+ "<td class='td_center'>"+ movieInfo.detailJson.actor + "</td>"
										+ "<td class='td_center'>"+ movieInfo.detailJson.GradeNm + "</td>"
										
		// 								+ "<td class='td_center'><input type='button' value='상세정보' onclick='detailRequest('" + daily.movieCd + "')'></td>"
										+"</tr>"
								);
		                		
		                	}
	                    })
	                    .catch(function(error) {
	                        console.error("Error:", error);
	                    });
						// promise 바깥에서 데이터를 자꾸 꺼낼려니까 안되징....이누마...
	                
				}
			
			});	
		});
	});
	
</script>
</head>
<body>
	<h1>박스오피스api 끌어오기</h1>
		<input type="button" value="일별 박스오피스 조회" id="btnShow">
	<div id="resultArea">
		<table border="1">
			<tr>
				<th width="80">현재순위</th>
				<th width="400">영화명</th>
				<th width="150">개봉일</th>
				<th width="100">누적관객수</th>
				<th width="100">영화코드</th>
				<th width="100">영문이름</th>
				<th width="100">상영시간</th>
				<th width="100">장르</th>
				<th width="100">감독</th>
				<th width="100">배우</th>
				<th width="100">심의정보</th>
			</tr>	
		</table>
	</div>
	
</body>
</html>