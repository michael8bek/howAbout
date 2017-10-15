<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">



/* 공통  css*/
body {
	margin: 0px;
	padding: 0px;
	background-color: #E3E3E3;
}
/* 
.container {
	width: 90%;
} */

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
/* 피드 리스트 section css*/
.feedlist_section {
	order: 4;
	padding: 20px;
	padding: 1.250rem;
}

/* 피드 리스트 */
.feed_imgbox {
	position: relative;
	overflow: hidden;
}

.feed_list .feed-img {
	width: 100%;
	height: 270px;
	border-radius: 5px 5px 0px 0px;
}

.feed_imgbox .caption_box {
	position: absolute;
	display: block;
	/* 	bottom: -210px;
 */
	bottom: -70%;
	width: 100%;
	height: 80px;
	/* height: 30%; */
	background:
		url("https://farm2.staticflickr.com/1506/24777648315_4df8d88375_o.png")
}

.caption_box .title {
	color: white;
	position: absolute;
	left: 0px;
	bottom: 30px;
	display: block; /* 인라인 요소를 블록속성으로 */
	font-size: 18px;
	font-weight: bold;
	padding: 10px;
	position: absolute;
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

.feed_writer_img>img {
	border-radius: 20px;
}

.feed .feed_comment {
	position: relative;
	height: 100px;
	background-color: #F7F7F7;
	padding: 2%;
	border-radius: 0px 0px 5px 5px;
}
@media all and (max-width:767px) {
	/*피드 상세페이지 새창(overray)*/
	#myOverlay2 {
		max-width: 310px;
	}
	.feeddetail_img {
		width: 100%;
		height: 310px;
	}
	/* 	.feed_detail {
		width: 100%;
		height: 25%;
		display: inline;
		border-bottom: 1px solid red;
	}
	.feed_textarea {
		width: 100%;
		height: 400px;
		padding: 10px;
	}
	*/
	.myOverlay2-side-position {
		padding: 15px;
		padding-bottom: 20px;
		width: 320px;
	}
}

/* 태블릿(768px이상)*/
@media all and ( min-width : 768px) and (max-width:991px) {
	/* 피드 리스트 section css*/
	.feedlist_section {
		order: 4;
		padding: 40px;
		padding: 2.500rem;
		padding-top: 1.000rem;
	}
	.feed_list {
		display: flex;
		flex-wrap: wrap;
		justify-content: baseline;
	}
	.feed_list .feed {
		width: 49.2%;
		/* min-width:300px; */
		height: 500px;
		margin-left: 1.6%;
		/* 		margin-left: 1.000rem; */
	}
	.feed_list .feed:nth-child(2n-1) {
		margin-left: 0px;
		margin-left: 0rem;
	}
	.feed_list .feed:nth-child(-n+2) {
		margin-top: 0;
	}
	.feed .feed_imgbox {
		width: 100%;
	}
	.feed_list .feed-img {
		width: 100%;
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

	/*피드 상세페이지*/
	#myOverlay2 {
		max-width: 700px;
	}
	.overlay-content {
		display: flex;
	}
	.feeddetail_img {
		width: 350px;
		height: 350px;
	}
	.myOverlay2-side-position {
		padding: 15px;
		padding-bottom: 20px;
		width: 320px;
	}
}


/* pc(960px이상)*/
@media all and ( min-width : 992px) and ( max-width:1199px) {
	/* 피드 리스트 section css*/
	.feedlist_section {
		order: 4;
		padding: 60px;
		padding: 3.750rem;
		padding-top: 1.000rem;
	}
	.feed_list {
		display: flex;
		flex-wrap: wrap;
		justify-content: baseline;
	}
	.feed_list .feed {
		width: 32.3%;
		margin-top: 15px;
		margin-top: 0.750rem;
		margin-left: 1.5%;
	}
	.feed_list .feed:nth-child(3n-2) {
		margin-left: 0px;
		margin-left: 0rem;
	}
	.feed_list .feed:nth-child(-n+3) {
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
	/*피드 상세페이지*/
	#myOverlay2 {
		max-width: 700px;
	}
	.overlay-content {
		display: flex;
	}
	.feeddetail_img {
		width: 350px;
		height: 350px;
	}
	.myOverlay2-side-position {
		padding: 15px;
		padding-bottom: 20px;
		width: 320px;
	}
}
/* pc 큰화면(1200px이상) */
@media all and ( min-width : 1200px) {
	/* 피드 리스트 section css*/
	.feedlist_section {
		order: 4;
		padding: 60px;
		padding: 3.750rem;
		padding-top: 1.000rem;
	}
	.feed_list {
		display: flex;
		flex-wrap: wrap;
		justify-content: baseline;
	}
	.feed_list .feed {
		width: 23.8%;
		margin-top: 15px;
		margin-top: 0.750rem;
		margin-left: 1.5%;
	}
	.feed_list .feed:nth-child(4n-3) {
		margin-left: 0px;
		margin-left: 0rem;
	}
	.feed_list .feed:nth-child(-n+4) {
		margin-top: 0;
	}
	.feed_date {
		font-size: 14px;
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
	/*피드 상세페이지*/
	#myOverlay2 {
		max-width: 700px;
	}
	.overlay-content {
		display: flex;
	}
	.feeddetail_img {
		width: 350px;
		height: 350px;
	}
	.myOverlay2-side-position {
		padding: 15px;
		padding-bottom: 20px;
		width: 320px;
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
		<section class="feedlist_section">
			<div class="feed_list">
				<c:forEach var="feed" items="${list }">
					<div class="feed">
						<div class="feed_imgbox">
							<a class="feedpage" id="overlayTrigger2" data-seq="${feed.ts_id }"
								data-overlay-trigger="myOverlay2"><img class="feed-img"
								src="${feed.ts_img_path}${feed.ts_img_name}" alt=""> <!-- 이미지 캡션 -->
								<span class="caption_box"> <span class="title">좋아요/공유/</span>
									<span class="info">캡션 내용</span>
							
							</span> </a>
						</div>
						<div class="feed_thumbnail" style="flex: auto;">
							<div class="feed_writer_img"
								style="width: 15%; height: 40px; float: left;">
								<img alt=""
									src="http://www.whitepaper.co.kr/news/photo/201510/47008_25930_5622.png"
									width="100%" height="100%">
							</div>
							<div class="feed_writer" 
								style="display: inline-block;float: left; margin-left: 5%; cursor:pointer ;font-weight: bold;" data-writer="${feed.mem_id }">${feed.mem_name }</div>
							<div class="feed_date"
								style="float: right; height: 40px; margin-right: 10px; font-size: 15px; text-align: right;">${feed.ts_regdate }</div>
							<div class="feed_content"
								style="width: 100%; height: 20%; color: #AAAAAA; float: left;">
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