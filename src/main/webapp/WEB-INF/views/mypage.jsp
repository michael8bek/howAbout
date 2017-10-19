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
	background-color: #E3E3E3;
}
::-webkit-scrollbar {
display:none;
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
/* 피드 리스트 section css*/
.feedlist_section {
	order: 4;
	padding: 20px;
	padding: 1.250rem;
}

/*피드 로딩 이미지효과 관련*/
.feed_loading { /*화면 전체를 어둡게 합니다.*/
	position: fixed;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	background: rgba(0, 0, 0, 0.2); /*not in ie */
	filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#20000000',
		endColorstr='#20000000'); /* ie */
}

.feed_loading div { /*로딩 이미지*/
	position: fixed;
	top: 50%;
	left: 50%;
	margin-left: -21px;
	margin-top: -21px;
}

.display-none {
	display: none;
}

/* 피드 리스트 */
.feed_imgbox {
	position: relative;
	overflow: hidden;
}

.feed_list .feed_writer_img {
	width: 40px;
	height: 40px;
	float: left;
}

.feed_list .feed-img {
	width: 100%;
	height: 270px;
	border-radius: 5px 5px 0px 0px;
}

.feed_imgbox .caption_box {
	position: absolute;
	display: block;
	bottom: -70%;
	width: 100%;
	height: 60px;
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

.caption_box.active {
	bottom: 0px;
}
/* .feed_imgbox:hover .caption_box {
	bottom: 0;
} */
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

.feed_list #feedlist_writer {
	display: inline-block;
	float: left;
	margin-left: 5%;
	cursor: pointer;
	font-weight: bold;
}

#feedlist_content {
	word-wrap: break-word;
	display: inline-block;
	overflow-y: auto;
	width: 100%;
	height: 80px;
	color: #AAAAAA;
	float: left;
	padding-left: 2.5%;
	-ms-overflow-style: none;
}

#feedlist_date {
	float: right;
	height: 40px;
	margin-right: 10px;
	font-size: 15px;
	text-align: right;
}

.feed_thumbnail {
	background-color: white;
	margin-top: 0.25rem;
	width: 100%;
	height: 160px;
	padding: 2%;
	flex: auto;
}

.feed_icon_area {
	word-wrap: break-word;
	width: 100%;
	height: 20%;
	color: #AAAAAA;
	float: left;
}

.feed_icon {
	margin: 5px;
	height: 24px;
	float: left;
	margin-right: 15%;
}

.icon_img {
	margin-right: 5px;
	float: left;
}

.icon_txt {
	float: left;
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

/*피드 글쓰기 버튼*/
.write_btn {
	width: 50px;
	height: 50px;
	position: fixed;
	right: 10%;
	bottom: 5%;
	z-index: 1000;
}

/*피드 글쓰기 창(#myOverlay3)*/
#myOverlay3 {
	width: 600px;
}

/*피드 상세페이지 공통*/
.feed_detail {
	border-bottom: 2px solid #7F7F7F;
	height: 130px;
}

#feeedpage_content {
	display: inline-block;
	overflow-y: scroll;
	height: 70px;
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
	#feeedpage_content {
		width: 100%;
		height: 20%;
		margin-top: 10px;
		display: flex
	}
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
		padding: 2.000rem;
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
		margin-top: 15px;
		margin-top: 0.750rem;
		/* height: 500px; */
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
		height: 160px;
	}
	.feed .feed_comment {
		width: 100%;
		height: 120px;
	}

	/*피드 상세페이지*/
	#myOverlay2 {
		max-width: 700px;
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
		padding: 2.000rem;
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
		height: 160px;
	}
	.feed .feed_comment {
		width: 100%;
		height: 150px;
	}
	/*피드 상세페이지*/
	#myOverlay2 {
		max-width: 700px;
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
		padding: 1.000rem;
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
		height: 160px;
	}
	.feed .feed_comment {
		width: 100%;
		height: 150px;
	}
	/*피드 상세페이지*/
	#myOverlay2 {
		max-width: 700px;
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
			<div class="feed_menu" style="height: 35px;">
				<div class="card-text"
					style="font-weight: bold; font-size: 20px; vertical-align: super;; display: inline-block;">내 피드</div>
				<div class="card-text"
					style="font-weight: bold; font-size: 20px; vertical-align: super;; display: inline-block; margin-left: 30px">방명록</div>
				<!-- <div class="list_option" id="order_recent"
					style="display: inline-block; float: right; margin-right: 10px; font-weight: bold; cursor: pointer;">최신순</div>
				<div class="list_option" id="order_like"
					style="display: inline-block; float: right; margin-right: 10px; font-weight: bold; cursor: pointer;">인기순</div> -->
			</div>
			<%-- onclick="location.href='feeddetail.do?mem_id=${feed.mem_id}'" --%>
			<div class="feed_loading display-none">
				<div>
					<img src="resources/images/icons/ajax_loading.gif" />
				</div>
			</div>
			<div class="feed_list" id="user_feed">
				<c:forEach var="feed" items="${list }" varStatus="status">
					<div class="feed">
						<div class="feed_imgbox">
							<a class="feedpage" id="overlayTrigger2"
								data-seq="${feed.ts_id }" data-overlay-trigger="myOverlay2"><img
								class="feed-img" src="${feed.ts_img_path}${feed.ts_img_name}"
								alt=""> <!-- 이미지 캡션 --> </a>
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
									<img class="icon_img"
										src="resources/images/icons/feed_heart.png">
									<p class="icon_txt">${feed.ts_like }</p>
								</div>
								<div class="feed_icon">
									<img class="icon_img" src="resources/images/icons/feed_msg.png">
									<p class="icon_txt">0</p>
								</div>
							</div>
						</div>
						<div class="feed_comment">
							<p class="card-text">피드 관련 댓글</p>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="feed_more" style="text-align: center;">
				<button class="btn btn-danger" id="feed_more_btn"
					data-ts_id="${feed.ts_id }">more</button>
			</div>
		</section>
		<section id="mypage_footer"></section>
	</div>
	
		<script type="text/javascript"
		src="resources/js/trendshare.js"></script>
</body>
<!-- footer -->
<%@ include file="footer.jsp"%>
</html>