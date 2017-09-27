<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
ul, li {
	list-style: none;
}

section {
	border: 1px solid black;
	margin-bottom: 1.5rem;
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

.mdfeed_section {
	display: flex; width : 100%;
	height: 200px;
	margin-top: 1.5rem;
	margin-bottom: 1.5rem;
	width: 100%;
}

.feedlist_midnav {
	width: 100%;
	height: 30px;
}

.feedlist_section {
	display:-webkit-flex;
	display: flex;
	justify-content : space-around;
	width: 100%;
	height: 60%;
}

a {
	cursor: pointer;
}

div[class="mdfeed"] {
	width: 20%;
	height: 100px;
	border: 1px solid black;
	margin: 1.5rem;
}

.feedarea {
	margin: 1.5rem;
	width: 20%;
	height: 300px;
	position: relative;
	box-sizing: inherit;
}

div[class="feed"] {
	border: 1px solid black;
	width: 100%;
	height: 100%;
}
.feed .comment{
	border-top: 1px solid black;
}

img {
	width: 100%;
}
</style>
</head>
<body>

	<!-- 스타일피드 페이지 -->
	<div class="container">
		<section class="eventpage_section">
			<!-- 이벤트페이지 -->
			<div class="slide_section">
				이미지 슬라이드 <span class="prev_btn"> </span> <span class="next_btn">
				</span>
			</div>
		</section>

		<section class="mdfeed_section">
			<div class="mdfeed" id="mdfeed_event">관리자 피드 1</div>
			<div class="mdfeed" id="mdfeed_feed">관리자 피드 2</div>
			<div class="mdfeed" id="mdfeed_feed">관리자 피드 3</div>
			<div class="mdfeed" id="mdfeed_ad">관리자 피드 4</div>
		</section>
		<section class="feedlist_midnav">
			<p>지금의 트렌드</p>
		</section>
		<section class="feedlist_section">
			<div class="feedarea">
				<div class="feed">
					<a href="#"><img class="card-img-top"
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed content">
						<p>피드 내용</p>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
			</div>
			<div class="feedarea">
				<div class="feed">
					<a href="#"><img class="card-img-top"
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed content">
						<p>피드 내용</p>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
			</div>
						<div class="feedarea">
				<div class="feed">
					<a href="#"><img class="card-img-top"
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed content">
						<p>피드 내용</p>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
			</div>
						<div class="feedarea">
				<div class="feed">
					<a href="#"><img class="card-img-top"
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed_content">
						<p>피드 내용</p>
					</div>
					<div class="comment">
						<p>피드 관련 댓글</p>
					</div>
				</div>
			</div>
		</section>
	</div>

</body>
<!-- footer -->
<%@ include file="footer.jsp"%>
<!-- /.footer -->
</html>