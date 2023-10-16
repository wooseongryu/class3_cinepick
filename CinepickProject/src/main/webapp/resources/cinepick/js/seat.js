$(function() {
	
    // 성인, 청소년, 우대 각각의 up 버튼 클릭 이벤트 처리
    $(".cell .up").on("click", function() {
        // 해당 up 버튼의 부모 요소에서 숫자를 찾아서 1 증가시킴
        var numberElement = $(this).closest(".cell").find(".number .now");
        var currentCount = parseInt(numberElement.text());
        numberElement.text(currentCount + 1);
        $(".seat-count-before").css("display", "none");
    });

    // 성인, 청소년, 우대 각각의 down 버튼 클릭 이벤트 처리
    $(".cell .down").on("click", function() {
        // 해당 down 버튼의 부모 요소에서 숫자를 찾아서 1 감소시킴
        var numberElement = $(this).closest(".cell").find(".number .now");
        var currentCount = parseInt(numberElement.text());
        if (currentCount > 0) {
            numberElement.text(currentCount - 1);
        }
    });
    
    
    let sum = 0;
//	$.each($('.number'), function(index, el){
//		sum += Number($(el).children()[0].textContent);
//	});

	sum += Number($(".number .now").textContent);
	
	console.log(sum);
    
//	$.each($('.number'), function(index, el){
//		sum += Number($(el).children()[0].textContent);
//	});
	
	sum = 2;
    
    // 좌석 hover 이벤트
    $(".common").hover(function(){
//		let sum = 0;
		
//		
//		sum = 2;
		
//		debugger;
//		$(this).next()[0];
//		$(this).nextAll();
		

		$(this).addClass("on");
//		console.log($(this).next()[0]);
		
		if(sum >= 2) {
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
		
	})
	
	$("button .now").on("click", function() {
		$(".other").toggle();
	})
	
	
});