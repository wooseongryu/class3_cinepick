$(function() {
	
	let total = 0;
	
//	$(".up").click(function() {
//		let numElement = $(this).prev().children();
//		let current = parseInt(numElement.text());
//		let now = current + 1;
//		numElement.text(now);
//	});
//	
//	$(".down").click(function() {
//		let numElement = $(this).next().children();
//		let current = parseInt(numElement.text());
//		let now = current - 1;
//		if(now < 0) {
//			now = 0;
//		}
//		numElement.text(now);
//	});
	
	$(".count .button").click(function() {
		let numElement = $(this).prev().children();
		let current = parseInt(numElement.text());
		let now;
		if($(this).hasClass("up")) {
			now = current + 1;
		} else if($(this).hasClass("down")) {
			now -= 1;
			if(now < 0) {
				now = 0;
			}
		}
		numElement.text(now);
	});
	
	
});