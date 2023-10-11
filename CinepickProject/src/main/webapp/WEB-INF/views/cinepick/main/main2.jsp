<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	* {
		box-sizing: border-box;
	}
	
	input {
		display: none;
	}
	
	
	
	
	.slider {
		position: absolute;
		overflow: hidden;
		width: 100%;
 		height: 70%; 
		top: 249px; 
		z-index: 0;
	}
	
	.slide {
  		position: absolute;  
		width: 100%;
		height: 100%;
 		transition: transform 1s ease-in-out; 
	}
	
	.slide img {
		width: 100%;
		height: 100%;
	}
	
	
	#slide-1 {
		left: 0;
	}
	#slide-2 {
		left: 100%;
	}
	#slide-3 {
		left: 200%;
	}
	#slide-4 {
		left: 300%;
	}
	
	#slide-radio1:checked ~ .slide {transform:translateX(0);}
	#slide-radio2:checked ~ .slide {transform:translateX(-100%);}
	#slide-radio3:checked ~ .slide {transform:translateX(-200%);}
	#slide-radio4:checked ~ .slide {transform:translateX(-300%);}
	
	.pagination {
		position: absolute;
		left: 50%;
  		transform: translateX(-50%);
  		bottom: 2rem;   
		display: flex;
		margin: 5px;
		z-index: 1;
	}
	
	 
	.pagination label {
		bottom: 0;
		height: 16px;
		width: 16px;
		border-radius: 50%;
		border: solid 1px #fff;
		cursor: pointer;
		transition: transform 1s ease-in-out;
		margin: 5px;
	}
	
	.pagination label:hover {background: #fff}
	
	
</style>
</head>
<body>
	<div class="slider" id="slider">
		<input type="radio" name="slide-radios" class="slide-radio" id="slide-radio1" checked>
		<input type="radio" name="slide-radios" class="slide-radio" id="slide-radio2">
		<input type="radio" name="slide-radios" class="slide-radio" id="slide-radio3">
		<input type="radio" name="slide-radios" class="slide-radio" id="slide-radio4">
		
		<div class="pagination">
			<label for="slide-radio1"></label>		
			<label for="slide-radio2"></label>		
			<label for="slide-radio3"></label>		
			<label for="slide-radio4"></label>		
		</div>
		<div class="slide" id="slide-1">
			<img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_slider/mv1.jpg">
		</div>
		<div class="slide" id="slide-2">
<!-- 			<div class="slide-content"> -->
<!-- 				<a href="#">예매하기</a> -->
<!-- 			</div> -->
			<img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_slider/mv2.jpg">
		</div>
		<div class="slide" id="slide-3">
			<img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_slider/mv3.jpg">
		</div>
		<div class="slide" id="slide-4">
			<img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_slider/mv4.jpg">
		</div>
	</div>
<!-- 현재 상영작  -->	

	
</body>
</html>