<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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

/* .eventpage_section {
	margin-top: 1.5rem;
	margin-bottom: 1.5rem;
	width: 100%;
	height: 250px;
	padding: 5px;
	position: relative;
} */
/* .slide_section {
	position: absolute;
	bottom: 1.5rem;
	border: 1px solid black;
	margin-top: auto;
	margin-left: 30%;
	width: 40%;
	height: 15%;
} */

/* div[class="mdfeed"] {
	display: inline-block;
	width: 220px;
	height: 100px;
	border: 1px solid black;
	margin: 1.5rem;
} */
/* .feedlist_midnav {
	width: 100%;
	height: 30px;
}
 */
a {
	cursor: pointer;
}
/* event리스트 section css*/
.eventpage_section {
	order: 1;
	padding: 20px;
	padding: 1.250rem;
}

.event_list {
	display: inline;
	width: 100%;
}

.event_list img {
	width: 100%;
	max-width: 100%;
	height: auto;
	border-radius: 5px;
	display: none;
}

.pagination {
	position: absolute;
	right: 0;
	bottom: 0;
	background-color: #222;
	color: white;
}

/* mdfeed 리스트 section css*/
.mdfeed_section {
	order: 2;
	padding: 20px;
	padding: 1.250rem;
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
	margin-top: 0.25rem;
	width: 100%;
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
	/* event리스트 section css*/
	.eventpage_section {
		order: 1;
		padding: 40px;
		padding: 2.500rem;
	}
	.event_list {
		display: inline;
		width: 100%;
	}

	/* mdfeed 리스트 section css*/
	.mdfeed_section {
		order: 2;
		padding: 40px;
		padding: 2.500rem;
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
	/* event리스트 section css*/
	.eventpage_section {
		order: 1;
		padding: 60px;
		padding: 3.750rem;
	}
	.event_list {
		display: inline;
		width: 100%;
	}

	/* mdfeed 리스트 section css*/
	.mdfeed_section {
		order: 2;
		padding: 60px;
		padding: 3.750rem;
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

			<div class="w3-content w3-display-container">
				<div class="event_list">
					<img
						src="https://usercontents-c.styleshare.kr/images/22780049/708x394"
						class="mySlides"> <img
						src="https://usercontents-c.styleshare.kr/images/22780100/708x394"
						class="mySlides"> <img
						src="https://usercontents-c.styleshare.kr/images/22780126/708x394"
						class="mySlides">
					<button class="w3-button w3-black w3-display-left"
						onclick="plusDivs(-1)">&#10094;</button>
					<button class="w3-button w3-black w3-display-right"
						onclick="plusDivs(1)">&#10095;</button>
				</div>
			</div>
		</section>


		<section class="mdfeed_section">
			<div class="feed_list">
				<div class="feed">
					<a href="#" class="feedpage" data-toggle="modal"
						data-target="#feedModal"><img
						src="https://usercontents-c.styleshare.kr/images/22845826/440x586"
						alt=""></a>
					<div class="feed content">
						<!-- <button type="button" data-toggle="modal" data-target="#feedModal">클릭</button>
						 -->
						<span>md피드 내용</span>
					</div>
				</div>
				<div class="feed">
					<a href="#" class="feedpage" data-toggle="modal"
						data-target="#feedModal"><img
						src="https://usercontents-c.styleshare.kr/images/22845826/440x586"
						alt=""></a>
					<div class="feed content">
						<!-- <button type="button" data-toggle="modal" data-target="#feedModal">클릭</button>
						 -->
						<span>피드 내용</span>
					</div>
				</div>
				<div class="feed">
					<a href="#" class="feedpage" data-toggle="modal"
						data-target="#feedModal"><img
						src="https://usercontents-c.styleshare.kr/images/22845826/440x586"
						alt=""></a>
					<div class="feed content">
						<!-- <button type="button" data-toggle="modal" data-target="#feedModal">클릭</button>
						 -->
						<span>피드 내용</span>
					</div>
				</div>
				<div class="feed">
					<a href="#" class="feedpage" data-toggle="modal"
						data-target="#feedModal"><img
						src="https://usercontents-c.styleshare.kr/images/22845826/440x586"
						alt=""></a>
					<div class="feed content">
						<!-- <button type="button" data-toggle="modal" data-target="#feedModal">클릭</button>
						 -->
						<span>피드 내용</span>
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
					<a href="#"><img class="card-img-top"
						src="https://usercontents-c.styleshare.kr/images/22835340/440x440"
						alt=""></a>
					<div class="feed content">
						<span>피드 내용</span>
					</div>
					<div class="comment">
						<p class="card-text">피드 관련 댓글</p>
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
						<p class="card-text">피드 관련 댓글</p>
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
						<p class="card-text">>피드 관련 댓글</p>
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
						<p class="card-text">>피드 관련 댓글</p>
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
						<p class="card-text">>피드 관련 댓글</p>
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
						<p class="card-text">피드 관련 댓글</p>
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
						<p class="card-text">피드 관련 댓글</p>
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
						<p class="card-text">피드 관련 댓글</p>
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
						<p class="card-text">피드 관련 댓글</p>
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
						<p class="card-text">피드 관련 댓글</p>
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
						<p class="card-text">피드 관련 댓글</p>
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
		/* 이벤트배너 슬라이드 */
		var slideIndex = 1;
		showDivs(slideIndex);

		function plusDivs(n) {
			showDivs(slideIndex += n);
		}

		function showDivs(n) {
			var i;
			var x = document.getElementsByClassName("mySlides");
			if (n > x.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = x.length
			}
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			x[slideIndex - 1].style.display = "block";
		}

		/* 이미지 마우스 갖다 되면 투명하게 */
		$(".feedpage").hover(function() {
			$(this).toggleClass("feedpage_hover");
		});
	</script>

</body>
<!-- footer -->
<%@ include file="footer.jsp"%>
<!-- /.footer -->
</html>