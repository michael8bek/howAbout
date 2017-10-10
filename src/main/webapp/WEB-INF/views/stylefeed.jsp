<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 -->
<script type="text/javascript">
	/* 이벤트배너 슬라이드 */

	/* 캐러쉘*/
	$('.carousel').carousel();

	/* 이미지 마우스 갖다 되면 투명하게 */
	$(".feedpage").hover(function() {
		$(this).toggleClass("feedpage_hover");
	});
	
	/* 피드 새창 띄울 시 배경(body)스크롤 막기*/
</script>
<!-- <link href="resources/css/bootstrap.min.css" rel="stylesheet"> 
 -->
<link href="resources/css/overlay.css" type="text/css" rel="stylesheet" />
<style type="text/css">
/*모바일용 css*/

/* 공통  css*/
/* .container{
	width:90%;
}
 */.wrap {
	width: auto;
	margin: 0 auto;
	max-width: 1140px;
}

.wrap section {
	box-sizing: border-box;
}
/*이벤트 배너 캐러쉘*/
.carousel {
	position: relative
}

.carousel-inner {
	position: relative;
	width: 100%;
	overflow: hidden
}

.carousel-inner>.item {
	position: relative;
	display: none;
	-webkit-transition: .6s ease-in-out left;
	-o-transition: .6s ease-in-out left;
	transition: .6s ease-in-out left
}

.carousel-inner>.item>a>img, .carousel-inner>.item>img {
	line-height: 1;
	width: 100%;
}

@media all and (transform-3d) , ( -webkit-transform-3d ) {
	.carousel-inner>.item {
		-webkit-transition: -webkit-transform .6s ease-in-out;
		-o-transition: -o-transform .6s ease-in-out;
		transition: transform .6s ease-in-out;
		-webkit-backface-visibility: hidden;
		backface-visibility: hidden;
		-webkit-perspective: 1000;
		perspective: 1000
	}
	.carousel-inner>.item.active.right, .carousel-inner>.item.next {
		left: 0;
		-webkit-transform: translate3d(100%, 0, 0);
		transform: translate3d(100%, 0, 0)
	}
	.carousel-inner>.item.active.left, .carousel-inner>.item.prev {
		left: 0;
		-webkit-transform: translate3d(-100%, 0, 0);
		transform: translate3d(-100%, 0, 0)
	}
	.carousel-inner>.item.active, .carousel-inner>.item.next.left,
		.carousel-inner>.item.prev.right {
		left: 0;
		-webkit-transform: translate3d(0, 0, 0);
		transform: translate3d(0, 0, 0)
	}
}

.carousel-inner>.active, .carousel-inner>.next, .carousel-inner>.prev {
	display: block
}

.carousel-inner>.active {
	left: 0
}

.carousel-inner>.next, .carousel-inner>.prev {
	position: absolute;
	top: 0;
	width: 100%
}

.carousel-inner>.next {
	left: 100%
}

.carousel-inner>.prev {
	left: -100%
}

.carousel-inner>.next.left, .carousel-inner>.prev.right {
	left: 0
}

.carousel-inner>.active.left {
	left: -100%
}

.carousel-inner>.active.right {
	left: 100%
}

.carousel-control {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	width: 15%;
	font-size: 20px;
	color: #fff;
	text-align: center;
	text-shadow: 0 1px 2px rgba(0, 0, 0, .6);
	filter: alpha(opacity = 50);
	opacity: .5
}

.carousel-control.left {
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, .5) 0,
		rgba(0, 0, 0, .0001) 100%);
	background-image: -o-linear-gradient(left, rgba(0, 0, 0, .5) 0,
		rgba(0, 0, 0, .0001) 100%);
	background-image: -webkit-gradient(linear, left top, right top, from(rgba(0, 0, 0, .5)),
		to(rgba(0, 0, 0, .0001)));
	background-image: linear-gradient(to right, rgba(0, 0, 0, .5) 0,
		rgba(0, 0, 0, .0001) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000',
		endColorstr='#00000000', GradientType=1);
	background-repeat: repeat-x
}

.carousel-control.right {
	right: 0;
	left: auto;
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, .0001) 0,
		rgba(0, 0, 0, .5) 100%);
	background-image: -o-linear-gradient(left, rgba(0, 0, 0, .0001) 0,
		rgba(0, 0, 0, .5) 100%);
	background-image: -webkit-gradient(linear, left top, right top, from(rgba(0, 0, 0, .0001)),
		to(rgba(0, 0, 0, .5)));
	background-image: linear-gradient(to right, rgba(0, 0, 0, .0001) 0,
		rgba(0, 0, 0, .5) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000',
		endColorstr='#80000000', GradientType=1);
	background-repeat: repeat-x
}

.carousel-control:focus, .carousel-control:hover {
	color: #fff;
	text-decoration: none;
	filter: alpha(opacity = 90);
	outline: 0;
	opacity: .9
}

.carousel-control .glyphicon-chevron-left, .carousel-control .glyphicon-chevron-right,
	.carousel-control .icon-next, .carousel-control .icon-prev {
	position: absolute;
	top: 50%;
	z-index: 5;
	display: inline-block
}

.carousel-control .glyphicon-chevron-left, .carousel-control .icon-prev
	{
	left: 50%;
	margin-left: -10px
}

.carousel-control .glyphicon-chevron-right, .carousel-control .icon-next
	{
	right: 50%;
	margin-right: -10px
}

.carousel-control .icon-next, .carousel-control .icon-prev {
	width: 20px;
	height: 20px;
	margin-top: -10px;
	font-family: serif;
	line-height: 1
}

.carousel-control .icon-prev:before {
	content: '\2039'
}

.carousel-control .icon-next:before {
	content: '\203a'
}

.carousel-indicators {
	position: absolute;
	bottom: 10px;
	left: 50%;
	z-index: 15;
	width: 60%;
	padding-left: 0;
	margin-left: -30%;
	text-align: center;
	list-style: none
}

.carousel-indicators li {
	display: inline-block;
	width: 10px;
	height: 10px;
	margin: 1px;
	text-indent: -999px;
	cursor: pointer;
	background-color: #000 \9;
	background-color: rgba(0, 0, 0, 0);
	border: 1px solid #fff;
	border-radius: 10px
}

.carousel-indicators .active {
	width: 12px;
	height: 12px;
	margin: 0;
	background-color: #fff
}

.carousel-caption {
	position: absolute;
	right: 15%;
	bottom: 20px;
	left: 15%;
	z-index: 10;
	padding-top: 20px;
	padding-bottom: 20px;
	color: #fff;
	text-align: center;
	text-shadow: 0 1px 2px rgba(0, 0, 0, .6)
}

.carousel-caption .btn {
	text-shadow: none
}

/*이벤트 배너 캐러쉘*/
.carousel-inner>.item>a>img, .carousel-inner>.item>img, .img-responsive,
	.thumbnail a>img, .thumbnail>img {
	display: block;
	max-width: 100%;
	height: auto
}

a {
	cursor: pointer;
}

/*이벤트 배너 캐러쉘 section*/
.event_slide {
	order: 1;
	padding: 20px;
	padding: 1.250rem;
	padding-bottom: 0.500rem;
}

/* mdfeed 리스트 section css*/
.mdfeed_section {
	order: 2;
	padding: 20px;
	padding: 1.250rem;
	padding-top: 0.500rem;
}

/* mdfeed */
.mdfeed {
	width: 100%;
	height: auto;
	border-radius: 5px;
	margin-bottom: 0.250rem;
}

.mdfeed_content {
	width: 100%;
	height: 20%;
}

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

.feed_thumbnail {
	margin-top: 0.25rem;
	width: 100%;
	height: 100%;
}

.feed .feed_comment {
	position: relative;
	margin-top: 0.25rem;
	height: auto;
	border: 1px solid black;
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

/*피드 상세페이지 새창(modal)*/
.feed_textarea {
	width: 100%;
	height: 400px;
	border: 1px solid black;
	padding: 10px;
}

.feed_detail {
	width: 100%;
	height: 25%;
	display: inline;
	border-bottom: 1px solid red;
}

#overlayContainer #overlayFrame {
	/* 	width: 370px; */
	margin: 5px;
	position: relative;
	display: inline-block;
	vertical-align: middle;
	background-color: #F5F5F5;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	padding: 0;
	border-radius: 8px;
	-moz-border-radius: 8px;
	-webkit-border-radius: 8px;
	box-shadow: 0 0 16px #000000;
	-moz-box-shadow: 0 0 16px #000000;
	-webkit-box-shadow: 0 0 16px #000000;
	text-align: left;
	transition: top 0.5s, left 0.5s;
	-moz-transition: top 0.5s, left 0.5s;
	-webkit-transition: top 0.5s, left 0.5s;
	outline: none;
	position: relative;
	position: relative;
}

#myOverlay2 {
	flex-flow: column nowrap;
	display: flex;
}

.modal-img-slide {
	max-width: 600px;
}

.modal-img-slide>img {
	width: 320px;
	height: 320px;
}

.modal-side-position {
	/* 	margin-right: -355px; */
	padding-top: 20px;
	padding-left: 20px;
	padding-right: 20px;
	padding-bottom: 20px;
	width: 320px;
}

/* 태블릿(768px이상)*/
@media all and ( min-width : 768px) {
	/*이벤트 배너 캐러쉘*/
	.carousel-control .glyphicon-chevron-left, .carousel-control .glyphicon-chevron-right,
		.carousel-control .icon-next, .carousel-control .icon-prev {
		width: 30px;
		height: 30px;
		margin-top: -15px;
		font-size: 30px
	}
	.carousel-control .glyphicon-chevron-left, .carousel-control .icon-prev
		{
		margin-left: -15px
	}
	.carousel-control .glyphicon-chevron-right, .carousel-control .icon-next
		{
		margin-right: -15px
	}
	.carousel-caption {
		right: 20%;
		left: 20%;
		padding-bottom: 30px
	}
	.carousel-indicators {
		bottom: 20px
	}

	/*이벤트 배너 캐러쉘 section*/
	.event_slide {
		order: 1;
		padding: 40px;
		padding: 2.500rem;
		padding-bottom: 1.000rem;
	}

	/* mdfeed 리스트 section css*/
	.mdfeed_section {
		order: 2;
		padding: 40px;
		padding: 2.500rem;
		padding-top: 1.000rem;
	}
	.mdfeed_section .feed_list {
		flex-flow: nowrap;
		display: flex;
	}
	/* mdfeed */
	.mdfeed {
		width: 50%;
		height: auto;
		margin-bottom: 0.500rem;
	}
	.mdfeed:first-child{
		margin-right: 1.000rem;
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
		width: 49%;
	}
	.feed_list .feed:nth-child(2) {
		margin-top: 0;
	}
	.feed_thumbnail {
		margin-top: 0.25rem;
		width: 100%;
		height: auto;
	}
	.feed .feed_comment {
		width: 100%;
		height: auto;
		border: 1px solid black;
		margin-top: 0.25rem;
	}

	/*피드 상세페이지(modal)*/
	#overlayContainer #overlayFrame {
		width: 740px;
	}
	#myOverlay2 {
		position: relative;
		display: flex;
		flex-flow: row wrap;
	}
	.modal-img-slide>img {
		width: 420px;
		height: 420px;
	}
}

/* pc(960px이상)*/
@media all and ( min-width : 992px) {
 	/*이벤트 배너 캐러쉘 section*/
	.event_slide {
		order: 1;
		padding: 60px;
		padding: 3.750rem;
		padding-bottom: 1.000rem;
	}
	/* mdfeed 리스트 section css*/
	.mdfeed_section {
		order: 2;
		padding: 60px;
		padding: 3.750rem;
		padding-top: 1.000rem;
		padding-bottom: 1.000rem;
	}
	/* 피드 리스트 section css*/
	.feedlist_section {
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
		height: 30px;
	}
	.feed .feed_comment {
		margin-top: 2.25rem;
		width: 100%;
		height: auto;
		border: 1px solid black;
	}
}
/* pc 큰화면(1200px이상) */
@media all and ( min-width : 1200px) {
	/*이벤트 배너 캐러쉘 section*/
	.event_slide {
		order: 1;
		padding: 60px;
		padding: 3.750rem;
		padding-bottom: 1.000rem;
	}
	/* mdfeed 리스트 section css*/
	.mdfeed_section {
		order: 2;
		padding: 60px;
		padding: 3.750rem;
		padding-top: 1.000rem;
		padding-bottom:0.500rem;
	}
	/* 피드 리스트 section css*/
	.feedlist_section {
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
		height: 30px;
	}
	.feed .feed_comment {
		margin-top: 2.25rem;
		width: 100%;
		height: auto;
		border: 1px solid black;
	}
}
</style>

</head>
<body>

	<!-- 스타일피드 페이지 -->
	<div class="container">
		<!-- 이벤트페이지 -->
		<section class="event_slide">
			<div id="carousel-example-generic" class="carousel slide">
				<!-- 버튼 -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>
				<!-- 이벤트 이미지 -->
				<div class="carousel-inner">
					<div class="item active">
						<img
							src="https://usercontents-c.styleshare.kr/images/22780049/708x394"
							alt="First slide">
					</div>
					<div class="item">
						<img
							src="https://usercontents-c.styleshare.kr/images/22780100/708x394"
							alt="Second slide">
					</div>
					<div class="item">
						<img
							src="https://usercontents-c.styleshare.kr/images/22780126/708x394"
							alt="Third slide">
					</div>
				</div>
				<!-- 슬라이드 컨트롤러 -->
				<a class="left carousel-control" href="#carousel-example-generic"
					data-slide="prev"> <span class="icon-prev"></span>
				</a> <a class="right carousel-control" href="#carousel-example-generic"
					data-slide="next"> <span class="icon-next"></span>
				</a>
			</div>


		</section>





		<!-- 		<section class="w3-display-container">
			<div class="event_list">
				<img
					src="https://usercontents-c.styleshare.kr/images/22780049/708x394"
					class="mySlides"> <img
					src="https://usercontents-c.styleshare.kr/images/22780100/708x394"
					class="mySlides"> <img
					src="https://usercontents-c.styleshare.kr/images/22780126/708x394"
					class="mySlides">
			</div>
			<a class="w3-button w3-black w3-display-left"
				onclick="plusDivs(-1)">&#10094;</a>
			<a class="w3-button w3-black w3-display-right"
				onclick="plusDivs(1)">&#10095;</a>
		</section> -->



		<section class="mdfeed_section">
			<div class="feed_list">
				<div class="mdfeed">
					<a href="#"> <img class="card-img-top"
						src="https://usercontents-c.styleshare.kr/images/22937491/460x288"
						alt="">
					</a>
					<div class="mdfeed_content">
						<span>여기는 작성자, 좋아요 갯수</span>
					</div>
				</div>
				<div class="mdfeed">
					<a href="#"> <img class="card-img-top"
						src="https://usercontents-c.styleshare.kr/images/22828389/460x288"
						alt="">
					</a>
					<div class="mdfeed_content">
						<span>여기는 작성자, 좋아요 갯수</span>
					</div>
				</div>
			</div>
		</section>

		<section class="feedlist_section">
			<div class="feed_menu">
				<p class="card-text">지금의 트렌드</p>
			</div>
			<div class="feed_list">
				<div class="feed">
					<c:forEach var="feed" items="${list }">
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
							<div class="feed_writer" style="width: 140px; margin-left: 80px">${feed.mem_id }</div>
							<div class="feed_content"
								style="width: 100%; height: 20%; margin-top: 10px; margin-left: 80px">피드
								${feed.ts_content }</div>
						</div>
					</c:forEach>
					<div class="feed_comment">
						<p class="card-text">피드 관련 댓글</p>
					</div>
				</div>
<!-- 				<div class="feed">
					<div class="feed_imgbox">
						<a href="#"><img class="card-img-top"
							src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
							alt=""> 이미지 캡션 <span class="caption_box"> <span
								class="title">캡션 타이틀</span> <span class="info">캡션 내용</span>
						</span> </a>
					</div>
					<div class="feed_thumbnail">
						<div class="feed_writer_img" style="width: 80px; float: left">사진</div>
						<div class="feed_writer" style="width: 140px; margin-left: 80px">작성자</div>
						<div class="feed_content"
							style="width: 100%; height: 20%; margin-top: 10px; margin-left: 80px">피드
							작성글 본문</div>
					</div>
					<div class="feed_comment">
						<p class="card-text">피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<div class="feed_imgbox">
						<a href="#"><img class="card-img-top"
							src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
							alt=""> 이미지 캡션 <span class="caption_box"> <span
								class="title">캡션 타이틀</span> <span class="info">캡션 내용</span>
						</span> </a>
					</div>
					<div class="feed_thumbnail">
						<div class="feed_writer_img" style="width: 80px; float: left">사진</div>
						<div class="feed_writer" style="width: 140px; margin-left: 80px">작성자</div>
						<div class="feed_content"
							style="width: 100%; height: 20%; margin-top: 10px; margin-left: 80px">피드
							작성글 본문</div>
					</div>
					<div class="feed_comment">
						<p class="card-text">피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<div class="feed_imgbox">
						<a href="#"><img class="card-img-top"
							src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
							alt=""> 이미지 캡션 <span class="caption_box"> <span
								class="title">캡션 타이틀</span> <span class="info">캡션 내용</span>
						</span> </a>
					</div>
					<div class="feed_thumbnail">
						<div class="feed_writer_img" style="width: 80px; float: left">사진</div>
						<div class="feed_writer" style="width: 140px; margin-left: 80px">작성자</div>
						<div class="feed_content"
							style="width: 100%; height: 20%; margin-top: 10px; margin-left: 80px">피드
							작성글 본문</div>
					</div>
					<div class="feed_comment">
						<p class="card-text">피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<div class="feed_imgbox">
						<a href="#"><img class="card-img-top"
							src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
							alt=""> 이미지 캡션 <span class="caption_box"> <span
								class="title">캡션 타이틀</span> <span class="info">캡션 내용</span>
						</span> </a>
					</div>
					<div class="feed_thumbnail">
						<div class="feed_writer_img" style="width: 80px; float: left">사진</div>
						<div class="feed_writer" style="width: 140px; margin-left: 80px">작성자</div>
						<div class="feed_content"
							style="width: 100%; height: 20%; margin-top: 10px; margin-left: 80px">피드
							작성글 본문</div>
					</div>
					<div class="feed_comment">
						<p class="card-text">피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<div class="feed_imgbox">
						<a href="#"><img class="card-img-top"
							src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
							alt=""> 이미지 캡션 <span class="caption_box"> <span
								class="title">캡션 타이틀</span> <span class="info">캡션 내용</span>
						</span> </a>
					</div>
					<div class="feed_thumbnail">
						<div class="feed_writer_img" style="width: 80px; float: left">사진</div>
						<div class="feed_writer" style="width: 140px; margin-left: 80px">작성자</div>
						<div class="feed_content"
							style="width: 100%; height: 20%; margin-top: 10px; margin-left: 80px">피드
							작성글 본문</div>
					</div>
					<div class="feed_comment">
						<p class="card-text">피드 관련 댓글</p>
					</div>
				</div>
				<div class="feed">
					<div class="feed_imgbox">
						<a href="#"><img class="card-img-top"
							src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
							alt=""> 이미지 캡션 <span class="caption_box"> <span
								class="title">캡션 타이틀</span> <span class="info">캡션 내용</span>
						</span> </a>
					</div>
					<div class="feed_thumbnail">
						<div class="feed_writer_img" style="width: 80px; float: left">사진</div>
						<div class="feed_writer" style="width: 140px; margin-left: 80px">작성자</div>
						<div class="feed_content"
							style="width: 100%; height: 20%; margin-top: 10px; margin-left: 80px">피드
							작성글 본문</div>
					</div>
					<div class="feed_comment">
						<p class="card-text">피드 관련 댓글</p>
					</div>
				</div> -->
<!-- 				<div class="feed">
					<div class="feed_imgbox">
						<a href="#"><img class="card-img-top"
							src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
							alt=""> 이미지 캡션 <span class="caption_box"> <span
								class="title">좋아요/공유/</span> <span class="info">캡션 내용</span>
						</span> </a>
					</div>
					<div class="feed_thumbnail">
						<div class="feed_writer_img" style="width: 80px; float: left">사진</div>
						<div class="feed_writer" style="width: 140px; margin-left: 80px">작성자</div>
						<div class="feed_content"
							style="width: 100%; height: 20%; margin-top: 10px; margin-left: 80px">피드
							작성글 본문</div>
					</div>
					<div class="feed_comment">
						<p class="card-text">피드 관련 댓글</p>
					</div>
				</div> -->
			</div>
		</section>
		<div class="write_btn">
			<button class="btn btn-success">글쓰기</button>
		</div>
	</div>
	<!-- 피드 상세페이지(새창) -->
	<div style="display: none;">
		<!-- Each overlay needs an id. The aria-labelledby is not required but is best practice -->
		<div id="myOverlay2" aria-labelledby="myOverlay2Heading"
			data-overlay-container-class="slide-down" role="region">
			<div class="modal-img-slide">
				<img class="feeddetail_img" alt=""
					src="https://usercontents-c.styleshare.kr/images/22926901/640x640"
					width="320" height="320">
			</div>
			<div class="modal-side-position">
				<div class="feed_textarea">
					<div class="feed_detail">
						<div class="feed_writer_img"
							style="width: 80px; border-right: 1px solid blue; float: left">작성자
							사진</div>
						<div class="feed_writer" style="width: 140px">작성자 이름</div>
						<div class="feed_content"
							style="width: 100%; height: 20%; margin-top: 10px; border: 1px solid black">피드
							작성글 본문</div>
					</div>
					<div class="feed_reply"
						style="border-top: 1px solid red; margin-top: 10px">여기는 피드 글
						관련 댓글</div>
				</div>
			</div>
			<div class="modal-body">
				<p>여기는 상품링크??</p>
			</div>
		</div>
	</div>
	<!-- 피드 글쓰기창(새창) -->
	<div style="display: none;"></div>


	<script type="text/javascript" src="resources/js/Overlay.js"></script>

</body>
<!-- footer -->
<%@ include file="footer.jsp"%>
<!-- /.footer -->
</html>