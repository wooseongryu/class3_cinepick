let total = 0;
let nowNum = 0;
let choice = 0;
let left = 0;

// 남은 좌석 계산
function calcLeft() {
	let sum = 0;
	$.each($('.now'), function(index, el){
	    sum += Number(el.textContent);
	})
	total = sum;
	
	choice = $(".choice").length - 1;
	left = total - choice;
	if(left < 0) {
		left = 0;
		return;
	}
	
	console.log("total: " + total);
    console.log("choice: " + choice);
    console.log("left: " + left);
}

// class에 on 추가
function addOn() {
	$(this).addClass("on");
	
	if(left > 1) {
		seatNo();
		nextPrev();
		
	}
}

// class에 on 제거
function removeOn() {
	$(this).removeClass("on");
}

// class에 choice 추가 + on
function addChoice() {
	$(this).addClass("on choice");
}

// class에 choice 제거 - on
function removeChoice() {
	$(this).removeClass("on choice");
}

// seatno 판별
function seatNo() {
	let seatNo = parseInt($(this).attr("seatno"));
}

// next, prev 가져오기
function nextPrev() {
    let next = $(this).next();
    let prev = $(this).prev();
}

// nextOrd - 두 매 이상일 때 (left)
function nextOrd() {
	seatNo();
	
	// 홀수
	if(seatNo % 2 == 1) {
		$(this).attr("nextord", "N");
	} else {
		$(this).attr("nextord", "P");
	}
}

// seatuniqno 판별
function uniq() {
	let uniq = parseInt($(this).attr("seatuniqno"));
	
}

// seatnextuniqno 추가
function nextUniq() {
	uniq();
	$(this).attr("seatnextuniqno", uniq);
}

// selected, 선택됨
function selected() {
	$(this).attr("selected", selected);
	$(this).find("condition").text("선택됨");
}


$(function() {
	
	calcLeft();
	
	// 잔여 좌석이 2매 이상일 때
	if(left > 1) {
		nextOrd();
	}
	
});




// 해제 작업
function onChoice() {
//	debugger;
	$(this).removeClass("on choice");
	
	let seatNo = parseInt($(this).attr("seatno"));
    let next = $(this).next();
    let prev = $(this).prev();	
    
    // 1개만 choice 되어 있을 경우
    if(!next.hasClass("choice") && !prev.hasClass("choice")){
		return;
	}
    
    // 홀수
    if (seatNo % 2 == 1) {
        next.removeClass("on choice")
    // 짝수 
    } else {
        prev.removeClass("on choice")
    }
    
    calcLeft();
};


// 화면 로딩 후 시작
$(function() {
	
	// 매수 선택
	$(".seat-count button").click(function() {
		
		let numElem = $(this).closest(".count").find(".now");
		let prevNum = parseInt(numElem.text());
		
		if($(this).hasClass("up") && total < 8) {
			nowNum = prevNum + 1;
		} else if($(this).hasClass("up") && total == 8) {
			alert("인원 선택은 총 8명까지 가능합니다람쥐.");
			return; 
		}
		
		if($(this).hasClass("down")) {
			nowNum = prevNum - 1;
//			debugger;
			if(nowNum < 0) return;
			if(left < 1) {
				confirm("선택하신 좌석을 모두 취소하고 다시 선택하시겠습니까?");		
				return;
			}
		}
		
		// +- 버튼에 따라 매수
		numElem.text(nowNum);
		
		calcLeft();
		
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
	
	function mouseOn() {
		
		if(left == 0) return;
		
		$(this).addClass("on");
		
		if(left == 1) return;
		
	    let seatNo = parseInt($(this).attr("seatno"));
	    let next = $(this).next();
	    let prev = $(this).prev();
		
	    if (left > 1) {
	        // 홀수
	        if (seatNo % 2 == 1) {
	            next.addClass("on");
	        // 짝수 
	        } else {
	            prev.addClass("on");
	        }
	    }
		
		
		let uniqNo = $(this).attr("seatuniqno");
				
		
	}	
	
	
	function onEvent() { 
		$(".on").addClass("choice");
		
		$(".choice").click(onChoice);
		calcLeft();
	};
	
	
	
	$(".common").on("mouseover mouseout", function() {
		
		if(left == 0) return;
		
	    $(this).toggleClass("on");
	    
	    let seatNo = parseInt($(this).attr("seatno"));
	    let next = $(this).next();
	    let prev = $(this).prev();
	    
	    
	    if (left > 1) {
	        // 홀수
	        if (seatNo % 2 == 1) {
	            next.toggleClass("on");
	        // 짝수 
	        } else {
	            prev.toggleClass("on");
	        }
	    }
	    
	    // 이벤트 삭제
//	    $(".on").off("click");
		$(".on").click(onEvent);    
	});

	
	$(".common").click(function() {
		if(left == 0 && !$(this).hasClass("choice")) {
			alert("좌석 선택 다했슈");
		}

	});
	
	
//	저도 이게 최선일 것 같진 않은데요..

	// TODO
	// 성인 1, 청소년1 좌석 선택하고 우대1 늘리면 이상함
	
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