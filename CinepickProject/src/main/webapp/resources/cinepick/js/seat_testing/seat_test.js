$(function() {
	
    // 성인, 청소년, 우대 각각의 up 버튼 클릭 이벤트 처리
//    $(".cell .up").on("click", function() {
//        // 해당 up 버튼의 부모 요소에서 숫자를 찾아서 1 증가시킴
//        var numberElement = $(this).closest(".cell").find(".number .now");
//        var currentCount = parseInt(numberElement.text());
//        let nowUp = currentCount + 1;
//        numberElement.text(nowUp);
//        
//        $(".seat-count-before").css("display", "none");
//    });
//
//    // 성인, 청소년, 우대 각각의 down 버튼 클릭 이벤트 처리
//    $(".cell .down").on("click", function() {
//        // 해당 down 버튼의 부모 요소에서 숫자를 찾아서 1 감소시킴
//        var numberElement = $(this).closest(".cell").find(".number .now");
//        var currentCount = parseInt(numberElement.text());
//        if (currentCount > 0) {
//            numberElement.text(currentCount - 1);
//        }
//    });

    
    $(".cell button").on("click", function() {
	
		
		if($(this).hasClass("up")) {
			let num = $(this).siblings()[1];
//			let num1 = parseInt(num.text());
//			let now1 = num1 + 1;
//			num.text(now1);
			debugger;
		} else if($(this).hasClass("down")) {
			
		}
	
	
		$(".seat-count-before").css("display", "none");
	
		let number = $(this).closest(".cell").find(".number .now");
		let current = parseInt(number.text());
		
//		let current = parseInt(number.text());
		if($(this).hasClass("up")) {
			let now = current + 1;
		} 
		
		debugger;
		console.log(now);

// else if($(this).hasClass("down")) {
//			if(current > 0) {
//				now = current - 1;
//			}
//		}
//		number.text(now);
		
		let now = current + 1;
		number.text(now);
		
		console.log("최근: " + now);
//		let current = parseInt(number.text());
//		if($(this).hasClass("up")) {
//			let now = current + 1;
//		} else if($(this).hasClass("down")) {
//			if(current > 0) {
//				now = current - 1;
//			}
//		}
//		number.text(now);
	});
    
    
    let sum = 0;
//	$.each($('.number'), function(index, el){
//		sum += Number($(el).children()[0].textContent);
//	});

//	sum += Number($(".number .now").textContent);
//	
//	console.log(sum);
//    
//	
//	sum = 2;
    
    // 좌석 hover 이벤트
    $(".common").hover(function(){
	
		let total = 0;
		
		$(".now").each(function() {
			total += parseInt($(this).text());
		})
		
		console.log("총합 : " + total);
		
		// 1매인 경우, 좌석창 제한
		if(total == 1) {
			$(".view").addClass("impossible");
		}
		
		
		
//		$.each($('.number'), function(el){
//			sum += Number($(el).children()[0].textContent);
//		});
		
//		console.log(sum);
			
	
//		let sum = 0;
		
//		
//		sum = 2;
		
//		debugger;
//		$(this).next()[0];
//		$(this).nextAll();
		

		$(this).addClass("on");
//		console.log($(this).next()[0]);
		
		if(total >= 2) {
			let next = $(this).next();
			next.addClass("on");
		}

//		this.nextElementSibling.onmouseover();
	});
	
	$(".common").on("mouseout", function() {
		$(this).removeClass("on");
		let next = $(this).next();
		next.removeClass("on");
	});
    
	// 클릭했을 때 보라색 좌석 선택
	$(".common").on("click", function() {
		
		let hasClass = $(this).hasClass("choice");
		console.log(hasClass);
		
		//  choice가 있으면 없애기 -> 다시 누르면 회색 좌석
		if(hasClass) {
			$(this).removeClass("choice");
		//  choice가 없으면 추가하기
		} else {
			$(this).addClass("choice");
		}
		
	});
	
	$("button .now").on("click", function() {
		$(".other").toggle();
	});
	
	
//	이거 풀면 됨
//	$(".cell").on("click", function() {
//		$(".seat-count-before").css("display", "none");
//	
//		let number = $(this).closest(".cell").find(".number .now");
//		let current = parseInt(number.text());
//		
////		let current = parseInt(number.text());
////		if($(this).hasClass("up")) {
////			let now = current + 1;
////		} 
//
//// else if($(this).hasClass("down")) {
////			if(current > 0) {
////				now = current - 1;
////			}
////		}
////		number.text(now);
//		
//		let now = current + 1;
//		number.text(now);
//		
//		console.log("최근: " + now);
////		let current = parseInt(number.text());
////		if($(this).hasClass("up")) {
////			let now = current + 1;
////		} else if($(this).hasClass("down")) {
////			if(current > 0) {
////				now = current - 1;
////			}
////		}
////		number.text(now);
//	});
	
	
});