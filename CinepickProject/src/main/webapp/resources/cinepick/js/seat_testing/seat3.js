$(function() {
	
	let total = 0;
	let nowNum = 0;
	let choice = 0;
//	choice = $(".choice").length - 1;
	let left = 0;
	left = total - choice;
	
	$(".seat-count button").click(function() {
		
		let numElem = $(this).closest(".count").find(".now");
		let prevNum = parseInt(numElem.text());
		
		if($(this).hasClass("up") && total < 4) {
			nowNum = prevNum + 1;
			total += 1;
		} else if($(this).hasClass("up") && total == 4) {
			alert("인원 선택은 총 4명까지 가능합니다.");
			return;
		}
		
		if($(this).hasClass("down")) {
			nowNum = prevNum - 1;
			if(nowNum < 0) return;	
			total -= 1;
		}
		
		console.log("총합: " + total);
		left = total;
		// +- 버튼에 따라 매수
		numElem.text(nowNum);
		
	    // 관람인원을 선택하십시요
	    if(total > 0) {
		    $(".seat-count-before").css("display", "none");
		} else {
			$(".seat-count-before").css("display", "block");
		}
		
		// 1매인 경우
		if(total == 1) {
			// 좌석창 제한
			$(".view").addClass("impossible");
		} else {
			$(".impossible").removeClass("impossible");
		}
		
	
	});
	
	console.log("총합: " + total);
	console.log("매수 정하고 남은 left: " + left);

	
	$(".common").on("mouseover mouseout", function() {
		
		if(left == 0) return;
//		left = total - choice; 일단 주석
		
	    $(this).toggleClass("on");
	    
	    let seatNo = parseInt($(this).attr("seatno"));
	    let next = $(this).next();
	    let prev = $(this).prev();
	
		console.log("mouseover 남은 left: " + left);
	
	    if (left > 1) {
	        // 홀수
	        if (seatNo % 2 == 1) {
	            next.toggleClass("on");
	        // 짝수
	        } else {
	            prev.toggleClass("on");
	        }
	    }
	    
	    $(".on").click(function() {
			$(".on").addClass("choice");
		});
		
//		$(".common .choice").click(function() {
//			
//		});
		
		choice = $(".choice").length - 1;
	    
	    console.log("마우스 오버 안에서 : on은 몇 개인가" + $(".on").length);
	});
	
	

	console.log("허공: on은 몇 개인가" + $(".on").length);
	
	
//	$(".common").click(function() {
//		
//		if(left > 1) {
//			$(this),$(".on").toggleClass("choice");
//		} else if (left == 1 ) {
//			$(this).toggleClass("choice");
//		}
//		
//		
////		$(this),$(".on").toggleClass("choice"); // 됨
//		choice = $(".choice").length - 1;
//		left = total - choice;
//		console.log("클릭하고 choice 수: " + choice);
////		left = total - choice;
//		console.log("클릭하고 left 수: " + left);
//	});
	
//	$(".common").click(function() {
//		console.log("얄라리");
//		
//		if (left < 0) return;
//		debugger;
//		
//		$(".on").toggleClass("choice");
//		choice = $(".choice").length - 1;
//		console.log("클릭한 choice: " + choice);
//		left = total - choice;
//		console.log("클릭하고 남은 left: " + left);
//			
//		
//	});

	


//이거 주석 쳤다
//	$(".common").click(function() {
//		
//		let seatNo = parseInt($(this).attr("seatno"));
//		let next = $(this).next();
//		let prev = $(this).prev();
//		
//		left = total - choice;
//		console.log("click 남은 left: " + left);
//		
//		// 다시 클릭
//		if($(this).hasClass("choice")) {
//			$(this).removeClass("choice");
//			if(total > 1) {
//				if(seatNo % 2 == 1) {
//					next.removeClass("choice");
//				} else {
//					prev.removeClass("choice");
//				}
//			}
//		// 첫 클릭
//		} else {
//			$(this).addClass("choice");
//			if(total > 1) {
//				if(seatNo % 2 == 1) {
//					next.addClass("choice");
//				} else {
//					prev.addClass("choice");
//				}
//			}
//		}
//		
//		choice = $(".choice").length - 1;
//		
//		console.log("choice: " + choice);
//		console.log("left: " + left);
////		debugger;
//		
//		
//	});
	
	
	
	
	
	
//	저도 이게 최선일 것 같진 않은데요..
	
	
	
//	$(".on").click(function() {
//		$(this).addClass("choice");
//	}); -- 쌤 이건 안 되나봐요..
	
//	$(".common").mouseout(function() {
//		$(this).removeClass("on");
//		if(total > 1) {
//			$(this).next().removeClass("on");
//		}
//	});
//	
//	$(".common").click(function() {
//		if($(this).hasClass("choice")) {
//			$(this).removeClass("choice");
//			if(total > 1) {
//				$(this).next().removeClass("choice");
//			}
//		} else {
//			$(this).addClass("choice");
//			if(total > 1) {
//				$(this).next().addClass("choice");
//			}
//		}
//	});
});