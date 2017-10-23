/*피드 마우스엔터시 캡션박스 활성화/비활성화*/
/*$(document).on('mouseenter', '.feed_imgbox', function() {
	$(this).find('.caption_box').addClass("active");

});
$(document).on('mouseleave', '.feed_imgbox', function() {
	$(this).find('.caption_box').removeClass("active");
});*/
/*피드내용 마우스 갖다 대면 배경색 변화*/
$(document).on('mouseenter', '#feedlist_content', function() {
	$(this).css('background-color', 'aliceblue');

});
$(document).on('mouseleave', '#feedlist_content', function() {
	$(this).css('background-color', '');
});
/*피드 이미지 마우스 갖다 대면 투명*/
$(document).on('mouseenter', '.feed_imgbox', function() {
	$(this).css('opacity', '0.5');
	
});
$(document).on('mouseleave', '.feed_imgbox', function() {
	$(this).css('opacity', '1');
});

$('#trendshare').on('click',function() {
	console.log("스타일피드 페이지 이동");
});
