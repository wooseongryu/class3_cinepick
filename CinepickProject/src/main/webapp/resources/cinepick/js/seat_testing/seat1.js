$(function() {
	
	$(".cell .up, .cell .down").on("click", function() {
	    // 해당 버튼의 부모 요소에서 숫자를 찾아서 1 증가 또는 1 감소시킴
	    var numberElement = $(this).closest(".cell").find(".number .now");
	    var currentCount = parseInt(numberElement.text());
	    
	    if ($(this).hasClass("up")) {
	        // up 버튼이 클릭된 경우
	        let nowUp = currentCount + 1;
	        numberElement.text(nowUp);
	    } else if ($(this).hasClass("down") && currentCount > 0) {
	        // down 버튼이 클릭된 경우, 단 현재 숫자가 0보다 큰 경우에만 감소
	        numberElement.text(currentCount - 1);
	    }
	    
	    var totalSum = 0;

		// 모든 .now 요소를 반복
		$(".cell .now").each(function() {
		    var currentCount = parseInt($(this).text());
		    totalSum += currentCount;
		});
		
		// totalSum에는 모든 .now 요소의 합이 포함됨
		console.log("총합: " + totalSum);

	    
	    // 관람인원을 선택하십시요
	    if(totalSum > 0) {
		    $(".seat-count-before").css("display", "none");
		} else {
			$(".seat-count-before").css("display", "block");
		}
		
		// 1매인 경우
		if(totalSum == 1) {
			// 좌석창 제한
			$(".view").addClass("impossible");
		} else if(totalSum > 1) {
			$(".impossible").removeClass("impossible");
		}
		
		$(".common").on("mouseover", function() {
			$(this).addClass("on");
			if(totalSum > 1) {
				let next = $(this).next();
				next.addClass("on");
			}
//			$(".on").on("click", function() {
//				$(this).addClass("choice");
//			});
		});
				
		$(".common").on("mouseout", function() {
			$(this).removeClass("on");
			if(totalSum > 1) {
				let next = $(this).next();
				next.removeClass("on");
			}
		});
		
		$(".common").on("click", function() {
			
//			$(".common").find(".on").addClass("choice");
			
//			let hasChoice = $(this).hasClass("choice");

//			if(totalSum == 1) {
//				if(hasChoice) {
//					$(this).removeClass("choice");
//				} else {
//					$(this).addClass("choice");
//				}
//			} else if(totalSum > 1) {
//				debugger;
//			}
			
			

			
		});
		
			
			
			
				
				
//				$(this).addClass("choice");
//				if(totalSum > 1) {
//					let next = $(this).next();
//					next.addClass("choice");
//				}
				
				
//			}
			
			
		
		

	});

	
	
});