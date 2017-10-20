/*피드 마우스엔터시 캡션박스 활성화/비활성화*/
$(document).on('mouseenter', '.feed_imgbox', function() {
	$(this).find('.caption_box').addClass("active");

});
$(document).on('mouseleave', '.feed_imgbox', function() {
	$(this).find('.caption_box').removeClass("active");
});
$(document).on('mouseenter', '#feedlist_content', function() {
	$(this).css('background-color', 'aliceblue');

});
$(document).on('mouseleave', '#feedlist_content', function() {
	$(this).css('background-color', '');
});

