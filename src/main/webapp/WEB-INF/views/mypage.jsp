<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	background-color: #E3E3E3;
}

.container {
	width: 90%;
}

.mypage_header {
	order: 1;
	padding: 60px;
	padding: 3.750rem;
	padding-bottom: 1.000rem;
	padding-top: 0;
}

.mypage_header_area {
	width: 100%;
	border: 1px solid red;
	display: flex;
}

.mypage_header_left {
	width: 250px;
	height: 450px;
	border: 1px solid blue;
	left: 0;
	top: 0;
	bottom: 0;
}

.mypage_header_center {
	border: 1px solid yellow;
	float: left;
	width: 490px;
	height: 450px;
}

.mypage_header_right {
	width: 250px;
	height: 450px;
	border: 1px solid green;
	float: left;
	right: 0;
	top: 0;
	bottom: 0;
}
/*mypage body부분*/
/* 피드 리스트 */
.feed_imgbox {
	position: relative;
	overflow: hidden;
}

.feed_list img {
	width: 100%;
	max-width: 100%;
	border-radius: 5px;
}

.feed_imgbox .caption_box {
	position: absolute;
	display: block;
	/* 	bottom: -210px;
 */
	bottom: -70%;
	width: 100%;
	height: 30%;
	background:
		url("https://farm2.staticflickr.com/1506/24777648315_4df8d88375_o.png")
}

.caption_box .title {
	position: absolute;
	left: 0px;
	bottom: 30px;
	display: block; /* 인라인 요소를 블록속성으로 */
	font-size: 18px;
	font-weight: bold;
	padding: 10px;
}

.caption_box .info {
	position: absolute;
	left: 0px;
	bottom: 0px;
	display: block;
	font-size: 12px;
	padding: 10px;
}

.feed_imgbox:hover .caption_box {
	bottom: 0;
}
/* .feed_list .card-img-top:hover {
	opacity: 0.5;
} */
.feed_list .feed {
	margin-top: 20px;
	margin-top: 1.250rem;
}

.feed_list .feed:first-child {
	margin-top: 0;
}

.feed_content {
	word-wrap: break-word;
}

.feed_thumbnail {
	background-color: white;
	margin-top: 0.25rem;
	width: 100%;
	height: 100px;
	padding: 2%;
}

.feed .feed_comment {
	position: relative;
	height: 100px;
	background-color: #F7F7F7;
	padding: 2%;
	border-radius: 0px 0px 5px 5px;
}

/* 태블릿(768px이상)*/
@media all and ( min-width : 768px) {
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
		width: 49%;
	}
	.feed_list .feed:nth-child(2) {
		margin-top: 0;
	}
	.feed_thumbnail {
		margin-top: 0.25rem;
		width: 100%;
		height: 120px;
	}
	.feed .feed_comment {
		width: 100%;
		height: 120px;
	}
}

/* pc(960px이상)*/
@media all and ( min-width : 992px) {
	/* 피드 리스트 section css*/
	.mypage_body {
		order: 4;
		padding: 60px;
		padding: 3.750rem;
		padding-top: 1.000rem;
	}
	.feed_list .feed {
		width: 32%;
		margin-top: 15px;
		margin-top: 0.750rem;
	}
	.feed_list .feed:nth-child(2), .feed_list .feed:nth-child(3) {
		margin-top: 0;
	}
	.feed_thumbnail {
		margin-top: 0.25rem;
		width: 100%;
		height: 150px;
	}
	.feed .feed_comment {
		width: 100%;
		height: 150px;
	}
}
/* pc 큰화면(1200px이상) */
@media all and ( min-width : 1200px) {
	/* 피드 리스트 section css*/
	.mypage_body {
		order: 4;
		padding: 60px;
		padding: 3.750rem;
		padding-top: 1.000rem;
	}
	.feed_list .feed {
		width: 24%;
		margin-top: 15px;
		margin-top: 0.750rem;
	}
	.feed_list .feed:nth-child(4) {
		margin-top: 0;
	}
	.feed_thumbnail {
		margin-top: 0.25rem;
		width: 100%;
		height: 150px;
	}
	.feed .feed_comment {
		width: 100%;
		height: 150px;
	}
}
</style>
</head>
<body>
	<div class="container">
		<section class="mypage_header">
			<div class="mypage_header_area">
				<div class="mypage_header_left"></div>
				<div class="mypage_header_center"
					style="text-align: center; align-content: space-around;">
					<h2 style="font-weight: bold;">여기는 마이페이지!!!!</h2>
				</div>
				<div class="mypage_header_right"></div>
			</div>
		</section>
		<section class="mypage_body">
			<div class="feed_list">
				<c:forEach var="feed" items="${list }">
					<div class="feed">
						<div class="feed_imgbox">
							<a class="feedpage" id="overlayTrigger2" href="#myOverlay2"
								data-overlay-trigger><img class="card-img-top"
								src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
								alt=""> <!-- 이미지 캡션 --> <span class="caption_box">
									<span class="title">좋아요/공유/</span> <span class="info">캡션
										내용</span>
							</span> </a>
						</div>
						<div class="feed_thumbnail">
							<div class="feed_writer_img" style="width: 80px; float: left">사진</div>
							<div class="feed_writer"
								style="width: 140px; height: 40px; margin-left: 80px; font-weight: bold;">${feed.mem_id }</div>
							<div class="feed_content"
								style="width: 100%; height: 20%; color: #AAAAAA">
								${feed.ts_content }</div>
						</div>
						<div class="feed_comment">
							<p class="card-text">피드 관련 댓글</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</section>
		<section id="mypage_footer"></section>
	</div>
</body>
<!-- footer -->
<%@ include file="footer.jsp"%>
</html>