let total = 0;
let nowNum = 0;
let choice = 0;
let left = 0;

// 남은 좌석 계산
function calcLeft() {
	let sum = 0;
	$.each($('.now'), function(index, el){
	    sum += Number(el.textContent);
	});
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
	
//	if(left > 1) {
//		seatNo();
//		nextPrev();
//		
//	}
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
	let uniq = $(this).attr("seatuniqno");
}

// seatnextuniqno 추가
function nextUniq() {
	uniq();
	$(this).attr("seatnextuniqno", uniq);
}

// selected, 선택됨
function selected() {
	$(this).attr("selected", "selected");
	$(this).find("condition").text("선택됨");
}


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
	
	$(".common").mouseover(function() {
		calcLeft();
//		debugger;
		addOn();
	});
	
	$(".common").mouseout(function() {
		removeOn();
	});

	
	$(".common").click(function() {
		
		addChoice();
		
		if(left == 0 && !$(this).hasClass("choice")) {
			alert("좌석 선택 다했슈");
		}

	});
	

});