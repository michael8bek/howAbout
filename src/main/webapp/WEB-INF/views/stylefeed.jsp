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

<!-- <link href="resources/css/bootstrap.min.css" rel="stylesheet">
 -->
<!-- <script src="resources/css/bootstrap.min.css"></script> -->
<link href="resources/css/overlay.css" type="text/css" rel="stylesheet" />



<style type="text/css">
/*모바일용 css*/

/* 공통  css*/
body {
	margin: 0px;
	background-color: #E3E3E3;
}

textarea {
	vertical-align: middle;
	font-size: 1em;
	color: #333;
}

::-webkit-scrollbar {
display:none;
}

/* .container {
	width: 90%;
} */

/* .wrap {
	width: auto;
	margin: 0 auto;
	max-width: 1140px;
} */

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
	padding-top: 2%;
}

/* mdfeed 리스트 section css*/
.mdfeed_section {
	order: 2;
	padding: 20px;
	padding: 1.250rem;
	padding-top: 0.500rem;
	padding-bottom: 0.500rem;
}

/* mdfeed */
.mdfeed {
	width: 100%;
	height: auto;
	border-radius: 5px;
	margin-bottom: 1.000rem;
}

.mdfeed_content {
	width: 100%;
	height: 60px;
	background-color: white;
	border-radius: 0px 0px 5px 5px;
}

/* 피드 리스트 section css*/
.feedlist_section {
	order: 4;
	padding: 20px;
	padding: 1.250rem;
}

/*피드 로딩 이미지효과 관련*/
.feed_loading{ /*화면 전체를 어둡게 합니다.*/
    position: fixed;
    left:0;
    right:0;
    top:0;
    bottom:0;
    background: rgba(0,0,0,0.2); /*not in ie */
    filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#20000000', endColorstr='#20000000');    /* ie */
}
.feed_loading div{ /*로딩 이미지*/
    position: fixed;
    top:50%;
    left:50%;
    margin-left: -21px;
    margin-top: -21px;
}
.display-none{ 
        display:none;
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
	display:inline-block;
	overflow-y:auto;
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
.feed_icon{
	margin:5px;
	height:24px;
	float:left;
	margin-right: 15%;
}

.icon_img{
	margin-right: 5px;
	float:left;
}

.icon_txt{
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

#feeedpage_content{
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
		padding: 2.000rem;
		padding-bottom: 1.000rem;
		padding-top: 2%;
	}

	/* mdfeed 리스트 section css*/
	.mdfeed_section {
		order: 2;
		padding: 2.000rem;
		padding-top: 1.000rem;
		padding-bottom: 1.000rem;
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
	.mdfeed:first-child {
		margin-right: 1.000rem;
	}

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
	/*이벤트 배너 캐러쉘 section*/
	.event_slide {
		order: 1;
		padding: 2.000rem;
		padding-bottom: 1.000rem;
		padding-top: 2%;
	}

	/* mdfeed 리스트 section css*/
	.mdfeed_section {
		order: 2;
		padding: 2.000rem;
		padding-top: 1.000rem;
		padding-bottom: 1.000rem;
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
	.mdfeed:first-child {
		margin-right: 1.000rem;
	}

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
	/*이벤트 배너 캐러쉘 section*/
	.event_slide {
		order: 1;
		padding: 2.000rem;
		padding-bottom: 1.000rem;
		padding-top: 2%;
	}

	/* mdfeed 리스트 section css*/
	.mdfeed_section {
		order: 2;
		padding: 2.000rem;
		padding-top: 1.000rem;
		padding-bottom: 1.000rem;
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
	.mdfeed:first-child {
		margin-right: 1.000rem;
	}
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


		<section class="mdfeed_section">
			<div class="feed_menu">
				<p class="card-text"
					style="font-weight: bold; font-size: 20px; margin-bottom: 1.000rem;">MD추천
					피드</p>
			</div>
			<div class="feed_list">
				<div class="mdfeed">
					<a href="mypage.do"> <img class="card-img-top"
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
		<!-- 피드리스트 글 -->
		<section class="feedlist_section">
			<div class="feed_menu" style="height: 35px;">
				<div class="card-text"
					style="font-weight: bold; font-size: 20px; vertical-align: super;; display: inline-block;">최신
					트렌드</div>
				<div class="list_option" id="order_recent"
					style="display: inline-block; float: right; margin-right: 10px; font-weight: bold; cursor: pointer;">최신순</div>
				<div class="list_option" id="order_like"
					style="display: inline-block; float: right; margin-right: 10px; font-weight: bold; cursor: pointer;">인기순</div>
			</div>
			<%-- onclick="location.href='feeddetail.do?mem_id=${feed.mem_id}'" --%>
				<div class="feed_loading display-none">
					 <div><img src="resources/images/icons/ajax_loading.gif" /></div>
				</div>
			<div class="feed_list" id="user_feed">
				<c:forEach var="feed" items="${list }" varStatus="status">
					<div class="feed">
						<div class="feed_imgbox">
							<a class="feedpage" id="overlayTrigger2"
								data-seq="${feed.ts_id }" data-overlay-trigger="myOverlay2"><img
								class="feed-img" onerror="this.src='http://howmadareyou.com/wp-content/themes/MAD/images/default_profile_image.png';" src="${feed.ts_img_path}${feed.ts_img_name}"
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
							<p class="card-text">피드 관련 댓글</p>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="feed_more" style="text-align: center;">
				<button class="btn btn-danger" id="feed_more_btn" data-ts_id="${feed.ts_id }">more</button>
			</div> 
		</section>
		<div class="write_btn">
			<a class="feedwrite" id="overlayTrigger2" href="#myOverlay3"
				data-overlay-trigger> <c:if test="${not empty member }">
					<button class="btn btn-success">글쓰기</button>
				</c:if>
			</a>
		</div>
	</div>


	<!-- 피드 상세페이지(새창) -->
	<div style="display: none;">
		<!-- Each overlay needs an id. The aria-labelledby is not required but is best practice -->
		<div id="myOverlay2" aria-labelledby="myOverlay2Heading"
			data-overlay-container-class="slide-down" role="region">
			<img class="feeddetail_img" id="ts_img" alt="" src="">
			<div class="myOverlay2-side-position">
				<div class="feed_textarea">
					<div class="feed_detail">
						<div class="feed_writer_info" style="display: flex;">
							<div class="feed_writer_img"
								style="width: 40px; height: 40px; float: left;">
								<img alt=""
									src="http://www.whitepaper.co.kr/news/photo/201510/47008_25930_5622.png"
									width="100%" height="100%">
							</div>
							<div class="feed_writer" id="feedpage_writer"
								style="display: inline-block; font-weight: bold; cursor: pointer; margin-left: 20px;"
								data-writer=""></div>
							<div class="feed_date" id="ts_regdate"
								style="width: 37%; float: right; height: 40px; margin-left: 70px; margin-right: 0px; font-size: 15px; text-align: right;"></div>
						</div>
						<div class="feed_content" id="feeedpage_content">피드</div>
					</div>
					<div class="feed_reply" style="margin-top: 10px;">
						<form name="feed_reply_write">
							<input type="hidden" value="" id="ts_id" name="ts_id"> <input
								type="hidden" value="${member.mem_id}" name="mem_id"> <input
								type="hidden" value="${member.mem_name}" name="mem_name">
							<input type="text" id="feed_reply_content" name="reply_content"
								style="width: 230px; height: 33px; vertical-align: middle;"
								placeholder="댓글을 입력하세요"> <input type="button"
								class="btn btn-danger" id="feed_reply_btn" value="확인"
								style="width: 50px; height: 33px; font-size: 12px">

						</form>
					</div>
				</div>
			</div>
			<div class="#myOverlay2-body" style="display: none;">
				<p>여기는 상품링크??</p>
			</div>
			<%-- <%@ include file="feeddetail.jsp" %> --%>
		</div>
	</div>
	<!-- 피드 글쓰기창(새창) -->
	<div style="display: none;">
		<div id="myOverlay3" aria-labelledby="myOverlay2Heading"
			data-overlay-container-class="slide-down" role="region"
			style="width: 600px; height: 340px">
			<div class="feedwrite_head"
				style="width: 100%; height: 40px; border-bottom: 1px solid grey; padding-left: 15px; line-height: 35px">
				<span style="font-weight: bold;">패션 공유 업로드</span>
			</div>
			<form name="uploadForm" method="post" action="uploadFeedImg.do"
				enctype="multipart/form-data" style="width: 100%; height: 300px;">
				<input type="hidden" value="${member.mem_id}" name="mem_id">
				<input type="hidden" value="${member.mem_name}" name="mem_name">
				<div class="feedwrite_body"
					style="width: 100%; height: 300px; display: flex">
					<div class="img_upload_area"
						style="width: 220px; height: 300px; margin: 10px;">
						<div class="img_preview"
							style="width: 100%; height: 200px; border: 1px solid red; text-align: center;">
							<img id="img" width="100%" height="100%" style="z-index: 1000" />
						</div>
						<input type="file" id="input_img" name="input_img"
							style="margin-top: 15px;"> <br> <a id="clear">사진초기화</a>
						<!-- 					<!--<div class="img_upload_btn"
						style="position: absolute; left: 50%; margin-left: -245px; bottom: 30px">
						<button class="btn btn-success">이미지 업로드</button>
					</div> -->
					</div>
					<div class="text_upload_area" style="width: 340px; height: 220px;">
						<div class="content_upload"
							style="width: 320px; height: 50px; margin: 10px;">
							<textarea class="content_upload_text" id="input_content"
								name="input_content" rows="8" cols="45">
						</textarea>
						</div>
						<div class="content_upload_btn"
							style="position: absolute; right: 50%; margin-right: -140px; bottom: 30px">
							<input type="submit" class="btn btn-success"
								onClick="return uploadChk();" value="등록">
						</div>
					</div>
				</div>
			</form>
			<div class="feedwrite_footer"></div>
		</div>
	</div>


	<script type="text/javascript" src="resources/js/Overlay.js"></script>
	<script type="text/javascript"
		src="resources/vendor/bootstrap/js/bootstrap.js"></script>
	<!-- <script src="resources/js/jquery.js"></script> -->
	<script type="text/javascript"
		src="resources/vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="resources/js/trendshare.js"></script>
	<script type="text/javascript">
		//피드 업로드할 사진 선택안하고 글 올릴 시 alert 
		function uploadChk() {
			console.log("uploadchk함수 실행");
			var f = document.uploadForm;
			console.log(f);

			/* 		var content_length = f.getElementById("input_content").value.length;
			 console.log(content_length); */
			var imgUp = document.getElementById('input_img').value; //input file 
			if (imgUp == "") {
				console.log("이미지x");
				alert("이미지를 첨부하세요");
				return false;
			}
			if (textUp == "") {
				console.log("텍스트x");
				alert("피드글을 입력하세요");
				textUp.focus();
				return false;
			}
			/*			return false;
			 if(f.input_img.value==""){
			 console.log("이미지 선택하고 업로드해");
			 }; */
			/* var feedUp = $("form[name=uploadForm]");
			var imgUp = feedUp.find("[not_null]");
			
			if(imgUp.val() == ""){
				alert("이미지 고르고 업로드 하시오");
				return false;
			} */
		};

		$(document)
				.ready(
						function() {
							/* 이벤트배너 슬라이드 */

							/* 캐러쉘 광고 슬라이드*/
							$('.carousel').carousel();

							/* 이미지 마우스 갖다 되면 투명하게 */
							$(".feedpage").hover(function() {
								$(this).toggleClass("feedpage_hover");
							});

							/* 피드 새창 띄울 시 배경(body)스크롤 막기*/
							/* 피드 새글 작성시 이미지 업로드 미리보기*/
							var sel_file;

							$("#input_img").on("change", handleImgFileSelect);

							function handleImgFileSelect(e) {
								var files = e.target.files;
								var filesArr = Array.prototype.slice
										.call(files);

								filesArr.forEach(function(f) {
									if (!f.type.match("image.*")) {
										alert("이미지 확장자만 업로드 가능합니다.");
										return;
									}
									sel_file = f;
									var reader = new FileReader();
									reader.onload = function(e) {
										$("#img").attr("src", e.target.result);
									}
									reader.readAsDataURL(f);
								});
							}

							/* 피드 새글 작성시 이미지 업로드 취소버튼*/
							var inputBtn = $("#input_img");
							var clearBtn = $("#clear");

							//사진초기화 버튼 함수
							clearBtn
									.on(
											"click",
											function() {
												if (/(MSIE|Trident)/
														.test(navigator.userAgent)) {
													// ie 일때 input[type=file] init.
													$("#input_img")
															.replaceWith(
																	$(
																			"#input_img")
																			.clone(
																					true));
												} else {
													// other browser 일때 input[type=file] init.
													$("#input_img").val("");
												}
												console.log("사진초기화 버튼 클릭");
												$("#img").removeAttr("src");
											});

							/* 	clearBtn.on("click", function(){
								inputBtn.replaceWith(inputBtn.val('').clone(true));
								//초기화 시킨 후 다시 사진 업로드 할 수 있는 상태로 되돌림
								$("#input_img").on("change", handleImgFileSelect);
							}); */
							//사진업로드 버튼 작동여부 및 상태 확인용
							inputBtn.on({
								change : function() {
									console.log("Changed")
								},
								focus : function() {
									console.log("Focus")
								}
							});

							/* $("#input_img").blur(function(){
								if(!$(this).val()){
									console.log("사진 선택하세요");
								}
							}); */

							//피드 리스트 인기순(DB의 ts_like순) 정렬
							$("#order_like").bind("click",function() {
												console.log("인기순정렬 JS함수 실행");
												$.ajax({
															url : "feedorder.do",
															type : "POST",
															data : {
																listType : "like"
															},
															async : true,
															dataType : "json",
															timeout:100000,
															success : function(data) {
																console.log("인기순 정렬 ajax 함수 success");
																/*ajax로 데이터 가져온 데이터를 append 함수로 tag 출력 후 JavaScript 이벤트 동작 안하는 문제 해결*/
																var overlayjs = document.createElement('script');
																overlayjs.src = "/howAbout/resources/js/Overlay.js";
																document.getElementsByTagName('head')[0].appendChild(overlayjs);
																/*ajxx밭은 data 출력하기*/
																console.log(data);
																var mem_id = "";
																var mem_name = "";
																var ts_content = "";
																var ts_img = ""; /*ts_img_path+ts_img_name*/
																var ts_regdate = "";
																	$.each(data,function(index,feed) {
																						$("#user_feed").append('<div class="feed">'
																												+ '<div class="feed_imgbox">'
																												+ '<a class="feedpage" id="overlayTrigger2" data-seq="'+$(feed).attr('ts_id')+'"data-overlay-trigger="myOverlay2">'
																												+ '<img class="feed-img" src="'+$(feed).attr('ts_img_path')+$(feed).attr('ts_img_name')+'"alt=""></a>'
																												+ '<div class="caption_box">'
																												+ '<a><img class="feed_icon" src="resouces/images/icons/feed_heart.png"></a>'
																												+ '</div></div>'
																												+ '<div class="feed_thumbnail">'
																												+ '<div class="feed_writer_img">'
																												+ '<img alt="" src="http://www.whitepaper.co.kr/news/photo/201510/47008_25930_5622.png"width="100%" height="100%">'
																												+ '</div><div class="feed_writer" id="feedlist_writer" data-writer="'+$(feed).attr('mem_id')+'">'
																												+ $(feed).attr('mem_name')
																												+ '</div>'
																												+ '<div class="feed_date" id="feedlist_date">'
																												+ $(feed).attr('ts_regdate')
																												+ '</div>'
																												+ '<div class="feed_content" id="feedlist_content">'
																												+ $(feed).attr('ts_content')
																												+ '</div>'
																												+ '<div class="feed_icon_area" id="feed_icon">'
																												+ '<div class="feed_icon">'
																												+ '<img class="icon_img" src="resources/images/icons/feed_heart.png">'
																												+ '<p class="icon_txt">'+$(feed).attr('ts_like')
																												+ '</p></div><div class="feed_icon">'
																												+ '<img class="icon_img" src="resources/images/icons/feed_msg.png">'
																												+ '<p class="icon_txt">'+$(feed).attr('ts_like')
																												+ '</p></div></div></div>'
																												+ '<div class="feed_comment">'
																												+ '<p class="card-text">피드 관련 댓글</p></div></div>')
																		});
															},beforeSend:function(){
																$("#user_feed").html(" ");
														        $('.feed_loading').removeClass('display-none');
														    },complete:function(){
														    	$('.feed_loading').addClass('display-none');
															},error : function(request,status,error) {
																console.log("code:"+ request.status
																				+ "\n"
																				+ "message:"
																				+ request.responseText
																				+ "\n"
																				+ "error:"
																				+ error);
															}
														});
											});
							
							//피드 리스트 최신순(DB의 ts_regdate순) 정렬
							$("#order_recent").bind("click",function() {
												console.log("최신순정렬 JS함수 실행");
												$.ajax({
															url : "feedorder.do",
															type : "POST",
															data : {
																listType : "recent"
															},
															async : true,
															dataType : "json",
															timeout:100000,
															success : function(data) {
																console.log("최신순 정렬 ajax 함수 success");
																/*ajax로 데이터 가져온 데이터를 append 함수로 tag 출력 후 JavaScript 이벤트 동작 안하는 문제 해결*/
																var overlayjs = document.createElement('script');
																overlayjs.src = "/howAbout/resources/js/Overlay.js";
																document.getElementsByTagName('head')[0].appendChild(overlayjs);
																/*ajxx밭은 data 출력하기*/
																console.log(data);
																var mem_id = "";
																var mem_name = "";
																var ts_content = "";
																var ts_img = ""; /*ts_img_path+ts_img_name*/
																var ts_regdate = "";
																	$.each(data,function(index,feed) {
																						$("#user_feed").append('<div class="feed">'
																												+ '<div class="feed_imgbox">'
																												+ '<a class="feedpage" id="overlayTrigger2" data-seq="'+$(feed).attr('ts_id')+'"data-overlay-trigger="myOverlay2">'
																												+ '<img class="feed-img" src="'+$(feed).attr('ts_img_path')+$(feed).attr('ts_img_name')+'"alt=""></a>'
																												+ '<div class="caption_box">'
																												+ '<a><img class="feed_icon" src="resouces/images/icons/feed_heart.png"></a>'
																												+ '</div></div>'
																												+ '<div class="feed_thumbnail">'
																												+ '<div class="feed_writer_img">'
																												+ '<img alt="" src="http://www.whitepaper.co.kr/news/photo/201510/47008_25930_5622.png"width="100%" height="100%">'
																												+ '</div><div class="feed_writer" id="feedlist_writer" data-writer="'+$(feed).attr('mem_id')+'">'
																												+ $(feed).attr('mem_name')
																												+ '</div>'
																												+ '<div class="feed_date" id="feedlist_date">'
																												+ $(feed).attr('ts_regdate')
																												+ '</div>'
																												+ '<div class="feed_content" id="feedlist_content">'
																												+ $(feed).attr('ts_content')
																												+ '</div>'
																												+ '<div class="feed_icon_area" id="feed_icon">'
																												+ '<div class="feed_icon">'
																												+ '<img class="icon_img" src="resources/images/icons/feed_heart.png">'
																												+ '<p class="icon_txt">'+$(feed).attr('ts_like')
																												+ '</p></div><div class="feed_icon">'
																												+ '<img class="icon_img" src="resources/images/icons/feed_msg.png">'
																												+ '<p class="icon_txt">'+$(feed).attr('ts_like')
																												+ '</p></div></div></div>'
																												+ '<div class="feed_comment">'
																												+ '<p class="card-text">피드 관련 댓글</p></div></div>')
																		});
															},beforeSend:function(){
																$("#user_feed").html(" ");
														        $('.feed_loading').removeClass('display-none');
														    },complete:function(){
														    	$('.feed_loading').addClass('display-none');
															},error : function(request,status,error) {
																console.log("code:"+ request.status
																				+ "\n"
																				+ "message:"
																				+ request.responseText
																				+ "\n"
																				+ "error:"
																				+ error);
															}
														});
											});

							//피드 클릭시 새창 띄우며 ajax로 데이터 불러오기$(".feedpage").bind("click",function() {
							$(document).on('click','.feedpage',function() {
								console.log("피드창 띄우기");
								/* var jquery = document.createElement('script');
								jquery.src = "/howAbout/resources/js/Overlay.js";
								document.getElementsByTagName('head')[0].appendChild(jquery); */
												var ts_id = $(this).data('seq');
												console.log("피드페이지 클릭");
												$.ajax({url : "feeddetail.do",
														type : "POST",
														data : {ts_id : ts_id},
															async : true,
															dataType : "json",
															success : function(data) {
																var mem_id = "";
																var mem_name = "";
																var ts_content = "";
																var ts_id="";
																var ts_img = ""; /*ts_img_path+ts_img_name*/
																var ts_regdate = "";
																$.each(data,function(index,feed) {
																					console.log("success");
																					mem_id = feed.mem_id;
																					mem_name = feed.mem_name;
																					ts_content = feed.ts_content;
																					ts_id=feed.ts_id;
																					ts_regdate = feed.ts_regdate;
																					ts_img = feed.ts_img_path
																							+ feed.ts_img_name;});
																$('#feedpage_writer')
																		.html(mem_name);
																$('#feedpage_writer')
																		.attr('data-writer',mem_id)
																$('#feeedpage_content').html(ts_content);
																$('#ts_regdate').html(ts_regdate);
																$('#ts_img').attr("src",ts_img);
																$('#ts_id').val(ts_id);
															}
														});
							});

							/*피드 상세페이지 내 댓글작성 및 출력(ajax)*/
							$("#feed_reply_btn").bind("click", function() {
								var feedReplyData = $("form[name=feed_reply_write]").serialize();
								console.log(feedReplyData);
								$.ajax({
									url : "feedreplywrite.do",
									type : "POST",
									data : feedReplyData,
									async : true,
									dataType : "json",
									success : function(data){
										console("댓글등록ajax메소드");
									},
									error : function(
											request,
											status,
											error) {
										console
												.log("code:"
														+ request.status
														+ "\n"
														+ "message:"
														+ request.responseText
														+ "\n"
														+ "error:"
														+ error);
									}
									
							});
						});
							
							/*피드 더보기 기능(ajax)*/
							$("#feed_more_btn").bind("click",function(){
								var ts_id = $(".feed_list > .feed:last-child").data('seq');
								console.log("더보기 클릭"+ts_id);
							});
							
							
							/*닉네임 클릭하면 mypage로 이동*/
							$(".feed_writer").bind("click", function() {
								var mem_id = $(this).data('writer');
								console.log("mem_id는" + mem_id);
								location.href = 'mypage.do?mem_id=' + mem_id
							});

						})
	</script>


</body>

<!-- footer -->
<%@ include file="footer.jsp"%>
</html>
