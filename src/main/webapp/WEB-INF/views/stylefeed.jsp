<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/*모바일용 css*/
/* 공통  css*/
#wrap {
	width: 100%;
	margin: 0 auto;
	max-width: 1200px;
}

#wrap section {
	box-sizing: border-box;
}

.eventpage_section {
	margin-top: 1.5rem;
	margin-bottom: 1.5rem;
	width: 100%;
	height: 250px;
	padding: 5px;
	position: relative;
}

.slide_section {
	position: absolute;
	bottom: 1.5rem;
	border: 1px solid black;
	margin-top: auto;
	margin-left: 30%;
	width: 40%;
	height: 15%;
}

div[class="mdfeed"] {
	display: inline-block;
	width: 220px;
	height: 100px;
	border: 1px solid black;
	margin: 1.5rem;
}

.feedlist_midnav {
	width: 100%;
	height: 30px;
}

a {
	cursor: pointer;
}

/* mdfeed 리스트 section css*/
.mdfeed_section {
	order: 2;
}

/* 피드 리스트 section css*/
.feedlist_section {
	order: 4;
	padding: 20px;
	padding: 1.250rem;
}

/* 피드 리스트 */
.feed_list img {
	width: 100%;
	max-width: 100%;
	border-radius: 5px;
}

.feed_list img:hover {
	opacity: 0.5;
}

.feed_list .feed {
	margin-top: 20px;
	margin-top: 1.250rem;
}

.feed_list .feed:first-child {
	margin-top: 0;
}

.feed .content {
	margin-top: 0.25rem; width : 100%;
	height: 100%;
	width: 100%;
}

.feed .comment {
	margin-top: 0.25rem;
	width: 100%;
	height: 100%;
	border-top: 1px solid black;
}

/* 태블릿(768px이상)*/
@media all and ( min-width : 768px) {
	/* mdfeed 리스트 section css*/
	.mdfeed_section {
		order: 2;
	}

	/* 피드 리스트 section css*/
	.feedlist_section {
		order: 4;
		padding: 40px;
		padding: 2.500rem;
	}
	.feed_list {
		display: flex;
		flex-wrap: wrap;
		justify-content: space-between;
	}
	.feed_list .feed {
		width: 45%;
	}
	.feed_list .feed:nth-child(2) {
		margin-top: 0;
	}
	.feed .content {
		margin-top: 0.25rem;
		width: 100%;
		height: 30px;
	}
	.feed .comment {
		margin-top: 0.25rem;
		width: 100%;
		height: 30px;
		border-top: 1px solid black;
	}
}

/* pc(960px이상)*/
@media all and ( min-width : 960px) {
	/* mdfeed 리스트 section css*/
	.mdfeed_section {
		order: 2;
	}

	/* 피드 리스트 section css*/
	.feedlist_section {
		order: 4;
		padding: 60px;
		padding: 3.750rem;
	}
	.feed_list .feed {
		width: 24%;
		margin-top: 15px;
		margin-top: 0.750rem;
	}
	.feed_list .feed:nth-child(3), .feed_list .feed:nth-child(4) {
		margin-top: 0;
	}
	.feed .content {
		margin-top: 0.25rem;
		width: 100%;
		height: 30px;
	}
	.feed .comment {
		margin-top: 0.25rem;
		width: 100%;
		height: 30px;
		border-top: 1px solid black;
	}
}

/* 피드 상세페이지 관련(modal)*/
.modal-dialog {
	position: relative;
	width: auto;
	margin: 10px;
}

@media ( min-width : 576px) {
	.modal-dialog {
		max-width: 800px;
		margin: 30px auto;
	}
}
</style>

</head>
<body>

	<!-- 스타일피드 페이지 -->
	<div id="wrap">
		<section class="eventpage_section">
			<!-- 이벤트페이지 -->
			<div class="slide_section">
				이미지 슬라이드 <span class="prev_btn"> </span> <span class="next_btn">
				</span>
			</div>
		</section>

		<!-- 		<section class="mdfeed_section"> -->
		<div class="mdfeed" id="mdfeed_event">관리자 피드 1</div>
		<div class="mdfeed" id="mdfeed_feed">관리자 피드 2</div>
		<div class="mdfeed" id="mdfeed_feed">관리자 피드 3</div>
		<div class="mdfeed" id="mdfeed_ad">관리자 피드 4</div>
		<!--  		</section>-->
		<section class="feedlist_midnav">
			<p>지금의 트렌드</p>
		</section>
		<section class="feedlist_section">
			<div class="feed_list">
				<div class="feed">
					<a href="#"><img class="card-img-top"
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed content">
						<span>피드 내용</span>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<a href="#" class="feedpage" data-toggle="modal"
						data-target="#feedModal"><img
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed content">
						<!-- <button type="button" data-toggle="modal" data-target="#feedModal">클릭</button>
						 -->
						<span>피드 내용</span>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<a href="#"><img
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed content">
						<span>피드 내용</span>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<a href="http://google.com"><img
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed_content">
						<span>피드 내용</span>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<a href="http://google.com"><img
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed_content">
						<span>피드 내용</span>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<a href="http://google.com"><img
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed_content">
						<span>피드 내용</span>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<a href="http://google.com"><img
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed_content">
						<span>피드 내용</span>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<a href="http://google.com"><img
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed_content">
						<span>피드 내용</span>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<a href="http://google.com"><img
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed_content">
						<span>피드 내용</span>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<a href="http://google.com"><img
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed_content">
						<span>피드 내용</span>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<a href="http://google.com"><img
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed_content">
						<span>피드 내용</span>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<a href="http://google.com"><img
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed_content">
						<span>피드 내용</span>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!-- 	피드 상세페이지 (modal) -->
	<div id="feedModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- 상세페이지 내용(modal content) -->
			<div class="modal-content">
				<div class="modal-img"></div>
				<div class="modal-"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>

	</div>
	<script type="text/javascript">
		$(".feedpage").hover(function() {
			$(this).toggleClass("feedpage_hover");
		});
	</script>

</body>
<!-- footer -->
<%@ include file="footer.jsp"%>
<!-- /.footer -->
</html>