$(function() {
	
	let total = 0;
	
	$(".cell .up, .cell .down").on("click", function() {
	    // 해당 버튼의 부모 요소에서 숫자를 찾아서 1 증가 또는 1 감소시킴
	    let numberElement = $(this).closest(".cell").find(".number .now");
	    let currentCount = parseInt(numberElement.text());
	    
	    if ($(this).hasClass("up")) {
	        // up 버튼이 클릭된 경우
	        let nowUp = currentCount + 1;
	        numberElement.text(nowUp);
	    } else if ($(this).hasClass("down") && currentCount > 0) {
	        // down 버튼이 클릭된 경우, 단 현재 숫자가 0보다 큰 경우에만 감소
	        numberElement.text(currentCount - 1);
	    }
	    
		// 모든 .now 요소를 반복
		$(".cell .now").each(function() {
//		    let currentCount = parseInt($(this).text());
		    total += currentCount;
		});
		
		// total에는 모든 .now 요소의 합이 포함됨
		console.log("총합: " + total);
		
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

	    
		
		$(".common").on("mouseover", function() {
			$(this).addClass("on");
			if(total > 1) {
				let next = $(this).next();
				next.addClass("on");
			}
//			$(".on").on("click", function() {
//				$(this).addClass("choice");
//			});
		});
				
		$(".common").on("mouseout", function() {
			$(this).removeClass("on");
			if(total > 1) {
				let next = $(this).next();
				next.removeClass("on");
			}
		});
		
		// 여기까지 잘 되고..
		
		
		
//		$(".common").on("click", function() {
//			
////			$(".common").find(".on").addClass("choice");
//			
//			let hasChoice = $(this).hasClass("choice");
//
////			if(total == 1) {
////				if(hasChoice) {
////					$(this).removeClass("choice");
////				} else {
////					$(this).addClass("choice");
////				}
////			} else if(total > 1) {
////				debugger;
////			}
//			
//				if(hasChoice) {
//					$(this).removeClass("choice");
//				} else {
//					$(this).addClass("choice");
//				}
//			
//				if(total > 1) {
//					let next = $(this).next();
//					
//					if(hasChoice).
//				}
//				
//
//			
//		});
		
			
			
			
				
				
//				$(this).addClass("choice");
//				if(total > 1) {
//					let next = $(this).next();
//					next.addClass("choice");
//				}
				
				
//			}
			
			
		
		


	
	
});