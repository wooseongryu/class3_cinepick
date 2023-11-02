let total = 0;
let nowNum = 0;
let choice = 0;
let left;
let seats = "";
let moneySum = 0;

// 남은 좌석 계산
function calcLeft() {
	let sum = 0;
	$.each($('.now'), function(index, el){
	    sum += Number(el.textContent);
	});
	total = sum;
	
	choice = $(".seat-layout .seat-condition.choice").length;
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
	
	moneySum = 0;
	
	// 매수 선택
	$(".seat-count button").click(function() {
		
		let numElem = $(this).closest(".count").find(".now");
		let prevNum = parseInt(numElem.text());
		
		if($(this).hasClass("up") && total < 8) {
			nowNum = prevNum + 1;
		} else if($(this).hasClass("up") && total == 8) {
			alert("인원 선택은 총 8명까지 가능합니다.");
			return; 
		}
		
		if($(this).hasClass("down")) {
			nowNum = prevNum - 1;
			if(nowNum < 0) return;
			if(left < 1) {
				let result = confirm("선택하신 좌석을 모두 취소하고 다시 선택하시겠습니까?");
				if(result) {
					$(".seat-layout .seat-condition.choice").removeAttr("selected");
					$(".seat-layout .seat-condition.choice").find(".condition").text("판매가능");
					$(".seat-layout .seat-condition.choice").removeClass("choice");
					$(".now").text(0);
					$(".money em").text(0);
					seats = "";
					allTickets = "";
					calcLeft();
					
				    // 관람인원을 선택하십시요
				    if(total > 0) {
					    $(".seat-count-before").css("display", "none");
					} else {
						$(".seat-count-before").css("display", "block");
					}
					
				}
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

	
	
	$(".seat-layout .seat-condition").mouseover(function() {
		calcLeft();

		
		if($(this).hasClass("finish") || $(this).hasClass("impossible")) return;
		if(left == 0) return;
		$(this).addClass("on");

	});
	
	$(".seat-layout .seat-condition").mouseout(function() {
		$(this).removeClass("on");
	});

	
	$(".seat-layout .seat-condition").click(function() {
		
		let seat = $(this);

		if(seat.hasClass("finish") || $(this).hasClass("impossible")) return;

		if(left == 0 && !seat.hasClass("choice")) {
			alert("좌석 선택이 완료되었습니다.");
		}
		
		if(seat.hasClass("choice")) {
			seat.removeClass("choice");
			seat.removeAttr("selected");
			seat.find(".condition").text("판매가능");
			
			seats = "";
			allTickets = "";
			
			$(".money em").text(0);
		} else {
			
			if(left == 0) return;
			
			seat.addClass("choice");
			seat.attr("selected", "selected");
			seat.find(".condition").text("선택됨");
			
//			if(choice == total && choice > 0) {
			if(left == 1) {
			
				let adult = parseInt($(".now[ticketgrpcd='TKA']").text())
				let young = parseInt($(".now[ticketgrpcd='TKY']").text())
				let special = parseInt($(".now[ticketgrpcd='TKS']").text())
				
				moneySum = 14000 * adult + 12000 * young + 6000 * special;
				
				$(".money em").text(moneySum);
				
				$("#pageNext").removeClass("disabled");
				$("#pageNext").addClass("active");
				

			}
			
		}

		calcLeft();
		
		

	});
	
	$("#seatMemberCntInit").click(function() {
		$(".seat-layout .seat-condition.choice").removeAttr("selected");
		$(".seat-layout .seat-condition.choice").find(".condition").text("판매가능");
		$(".seat-layout .seat-condition.choice").removeClass("choice");
		$(".now").text(0);
		$(".money em").text(0);
		seats = "";
		allTickets = "";
		calcLeft();
		
	    // 관람인원을 선택하십시요
	    if(total > 0) {
		    $(".seat-count-before").css("display", "none");
		} else {
			$(".seat-count-before").css("display", "block");
		}
	});
	
	
	// 다음 버튼
	
	
	$("#pageNext").click(function() {
		
		calcLeft();
		
		if($(this).hasClass("active")) {
//			location.href="bookingStepThree";
		}
		
	})
	
	
	$("#reserve").click(function() {
		
//		debugger;
		
//		let selectedSeats = [];
//        $(".common[selected='selected']").each(function() {
//            let seatAlpha = $(this).attr("rownm");
//            let seatNumber = $(this).attr("seatno");
//            let seatNo = seatAlpha + seatNumber;
//            selectedSeats.push(seatNo);
//        });
//		let seats = "";
//        $(".common[selected='selected']").each(function() {
////			debugger;
//            let seatAlpha = $(this).attr("rownm");
//            let seatNumber = $(this).attr("seatno");
//            seats += seatAlpha + seatNumber + "/";
//        });
//            console.log(seats);
         
        
//        let currentURL = location.href;

        // --------------------- 이거 됨
//        let newURL = "payment-successcomplete" + "?seats=" + seats;
//        location.href = newURL;
        // ---------------------

        // 선택된 좌석 번호(selectedSeats)를 서버로 보내거나 필요한 작업 수행
        // 예: AJAX 요청을 사용하여 서버로 전송
//        $.ajax({
//            url: "bookingStepTwo",  // 서버의 URL로 변경
//            type: "GET",
//            data: { seats: selectedSeats },
//            dataType: "json",
//            success: function(response) {
//				console.log("서버로부터의 응답 : " + response);
//				$('#output').html(response);
//            },
//            error: function() {
//				alert("요청 실패!" + response);
//			}
//        });
        
	    // JavaScript
//		var dataToSend = "데이터"; // 이 데이터는 JavaScript에서 생성한 데이터로 대체
//		$.ajax({
////		    type: "POST",
//		    url: "cinepick/booking/step5_original.jsp",
////		    data: { myData: dataToSend },
//		    success: function(response) {
//		        // 서버에서 반환된 응답을 처리
//		        console.log(response);
//		    },
//		    error: function() {
//				alert("실패!!!!");
//			}
//		});
        
    });
    

    
//    $("#reserve").click(function() {
	
//		debugger;
        // 데이터를 다음 페이지로 전송
//        $.ajax({
//            url: 'payment-successcomplete', // 다음 페이지의 URL로 변경
//            method: 'GET', // 또는 'GET'을 선택하세요
//            data: { seats: seats },
//            success: function(response) {
//                // 서버 응답 처리 (필요에 따라 페이지 이동 등)
//                console.log(response);
//                // 여기에서 페이지 이동 또는 다른 작업 수행
//            },
//            error: function() {
//                alert('요청 실패!');
//            }
//        });
//    });
//    $("#pageNext").click(function() {
//        // 데이터를 다음 페이지로 전송
//        $.ajax({
//            url: 'bookingStepThree', // 다음 페이지의 URL로 변경
//            method: 'POST', // 또는 'GET'을 선택하세요
//            data: { seats: seats },
//            success: function(response) {
//                // 서버 응답 처리 (필요에 따라 페이지 이동 등)
//                console.log(response);
//                // 여기에서 페이지 이동 또는 다른 작업 수행
//            },
//            error: function() {
//                alert('요청 실패!');
//            }
//        });
//    });
		
	

});













