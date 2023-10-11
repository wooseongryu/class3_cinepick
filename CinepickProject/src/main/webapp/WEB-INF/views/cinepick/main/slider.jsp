<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--     <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> <!-- jquery -->
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/cinepick/css/js/all.min.js"></script>
<script>
   $(function() {
        $(".slider").bxSlider({
        	nextText:'<i class="fas fa-chevron-right"></i>',
//         	nextText:'<i class="fa-light fa-chevron-right" style="color: #a6abaa;"></i>',
        	prevText:'<i class="fas fa-chevron-left"></i>',
//         	prevText:'<i class="fa-light fa-chevron-left" style="color: #a6abaa;"></i>'
			autohover: true,
			auto: true,
			autoControls: true,
			stopAutoOnClick: true,
			pager: true,
			startText: '<i class="fa-solid fa-play"></i>',
			stopText: '<i class="fa-solid fa-pause"></i>'
        	
        });
	});
</script>
<style type="text/css">
	
	.slideWrap { 
 		position: relative; 
 	} 
	

 	.slider { 
 		width: 100%; 
		margin: 2em auto; 
 		position: relative; 
 	} 
	
	
	.SLIDER IMG { 
 		WIDTH: 100%; 
		
 	} 
	
  	.slideWrap .bx-prev, .slideWrap .bx-next{  
  		position: absolute;  
  		top: 50%;  
  		transform: translateY(-50%); 
  		font-size: 3em; 
  	}  
	
   	.slideWrap .bx-prev {   
   		right: calc(100% - 50px);   
   	}   
	
   	.slideWrap .bx-next {   
   		left: calc(100% - 50px);   
   	}   

 /* pager	 */ 

 	.bx-wrapper .bx-pager { 
		position: absolute; 
 		bottom: 50px; 
 		right: 50%; 
 		transform: translateX(-50%); 
 		font-size: .85em; 
 		font-family: Arial; 
 	  	font-weight: bold; 
 	  	color: #666; 
 	} */
 	.bx-wrapper .bx-pager.bx-default-pager a { 
 	  	background: #666; 
 	  	text-indent: -9999px; 
 	  	display: block; 
 	  	width: 10px; 
 	  	height: 10px; 
 	  	margin: 0 5px; 
 	  	outline: 0; 
 	  	-moz-border-radius: 5px; 
 	  	-webkit-border-radius: 5px; 
 	  	border-radius: 5px; 
 	} 
	
/* 	.bx-wrapper .bx-pager.bx-default-pager a:hover, */
/* 	.bx-wrapper .bx-pager.bx-default-pager a.active, */
/* 	.bx-wrapper .bx-pager.bx-default-pager a:focus { */
/* 	  	background: #000; */
/* 	} */
	
/* 	.bx-wrapper .bx-pager-item, */
/* 	.bx-wrapper .bx-controls-auto .bx-controls-auto-item { */
/* 	  	display: inline-block; */
/* 	  	vertical-align: bottom; */
/* 	  	*zoom: 1; */
/* 	  	*display: inline; */
/* 	} */
/* 	.bx-wrapper .bx-pager-item { */
/* 	  	font-size: 0; */
/* 	  	line-height: 0; */
/* 	} */
	
/* /* controls	 */ */
/* 	.bx-wrapper .bx-controls-auto .bx-start, */
/* 	.bx-wrapper .bx-controls-auto .bx-stop { */
/* 		position : absolute; */
/* 		bottom: 45px; */
/* 		transform: translateX(-50%); */
/* 	} */
	
/* 	.bx-wrapper .bx-controls-auto .bx-start { */
/* 		left: calc(100% - 50px); */
	
/* 	} */
	
/* 	.bx-wrapper .bx-controls-auto .bx-stop { */
/*  		left: calc(100% -20px);  */
/* 	} */
	
	

	
</style>    
</head>
<body>
	<div class="slideWrap" id="slider">
		<ul class="slider" id="slide">
			<li><img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_slider/mv1.jpg"></li>
			<li><img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_slider/mv2.jpg"></li>
			<li><img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_slider/mv3.jpg"></li>
			<li><img alt="" src="${pageContext.request.contextPath }/resources/cinepick/img/main_slider/mv4.jpg"></li>
		</ul>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>