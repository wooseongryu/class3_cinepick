$(function() {
	$("#kakao").click(function() {
		$.ajax({
			url:'/kakaopay',
			dataTape:'json',
			success:function(data) {
				alert(data);
			},
			error:function(error) {
				alert(error);
			}
		});
	});
});