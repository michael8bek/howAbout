<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="feed_list" id="user_feed">
	<c:forEach var="feed" items="${list }" varStatus="status">
		<div class="feed">
			<div class="feed_imgbox">
				<a class="feedpage" id="overlayTrigger2" data-seq="${feed.ts_id }"
					data-overlay-trigger="myOverlay2"><img class="feed-img"
					onerror="this.src='http://howmadareyou.com/wp-content/themes/MAD/images/default_profile_image.png';"
					src="${feed.ts_img_path}${feed.ts_img_name}" alt=""> <!-- 이미지 캡션 -->
				</a>
				<div class="caption_box">
					<a><img class="feed_icon"
						src="resources/images/icons/feed_heart.png"></a>
				</div>
			</div>
			<div class="feed_thumbnail">
				<div class="feed_writer_img">
					<img alt=""
						src="http://www.whitepaper.co.kr/news/photo/201510/47008_25930_5622.png"
						width="100%" height="100%">
				</div>
				<div class="feed_writer" id="feedlist_writer"
					data-writer="${feed.mem_id }">${feed.mem_name }</div>
				<div class="feed_date" id="feedlist_date">${feed.ts_regdate }</div>
				<div class="feed_content" id="feedlist_content">
					${feed.ts_content }</div>
				<div class="feed_icon_area" id="feed_icon">
					<div class="feed_icon">
						<img class="icon_img" src="resources/images/icons/feed_heart.png">
						<p class="icon_txt">${feed.ts_like }</p>
					</div>
					<div class="feed_icon">
						<img class="icon_img" src="resources/images/icons/feed_msg.png">
						<p class="icon_txt">0</p>
					</div>
				</div>
			</div>
			<div class="feed_comment">
				<c:forEach var="reply" items="${reply}" begin="0" end="3">
					<c:if test="${feed.ts_id==reply.ts_id }">
						<div class="comment_list" data-tsid="${feed.ts_id}"
							data-replyid="${reply.reply_id }">
							<div class="feed_writer_img">
								<img alt=""
									src="http://www.whitepaper.co.kr/news/photo/201510/47008_25930_5622.png"
									width="100%" height="100%">
							</div>
							<div class="feed_writer" id="feedreply_writer"
								data-writer="${feed.mem_id }">${reply.mem_name}</div>
							<div class="comment_txt" style="padding-top: 9px">
								${reply.reply_content }</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
	</c:forEach>
</div>