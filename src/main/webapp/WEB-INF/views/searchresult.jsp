
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<link href="resources/css/overlay.css" type="text/css" rel="stylesheet" />
<style type="text/css">

/*검색결과 검색단어 강조*/
 .found { background-color: #ff0; } 
 
/*모달 새창*/
#dialog-background {
    display: none;
    position: fixed;
    top: 0; left: 0;
    width: 100%; height: 100%;
    background: black;
    opacity:0.6;
    z-index: 900;
}
#my-dialog {
    display: none;
    position: fixed;
    left: calc( 50% - 300px ); top: calc( 50% - 170px );
    width: 600px; height: 340px; 
    background: #fff;
    z-index: 1000;
    padding: 10px;
}

/*모바일용 css*/

/* 공통  css*/
body {
	margin: 0px;
	background-color: #E3E3E3;
}

/* textarea {
	vertical-align: middle;
	font-size: 1em;
	color: #333;
} */

/* ::-webkit-scrollbar {
display:none;
} */

/* .container {
	width: 90%;
} */

/* .wrap {
	width: auto;
	margin: 0 auto;
	max-width: 1140px;
} */
/* 피드 리스트 section css*/
.feedlist_section {
	order: 4;
	padding: 20px;
	padding: 1.250rem;
	border: 6px solid #f8f9fa;
	margin-bottom: 10px;
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
	font-size:14px;
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
	display:inline-block;
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
	margin-right: 65px;
}
.feed_icon_area .feed_icon:first-child{
	margin-left: 15px;
}.feed_icon_area .feed_icon:last-child{
	margin-right: 15px;
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
	width:100%;
	position: relative;
	background-color: #F7F7F7;
	border-radius: 0px 0px 5px 5px;
	overflow-y:hidden;
	display: inline-block;
}
.comment_list{
	display: flex;
	height: 35px;
	justify-content: space-between;
	overflow: hidden;
}
.feed_list #feedreply_writer {
	display: inline-block;
	font-size: 13px;
	cursor: pointer;
	margin-left:5px;
	font-weight: bold;
	width:70px;
	padding-top: 9px;
	text-overflow: ellipsis;
	overflow:hidden; 
}

.feed_comment .feed_writer_img {
	display:table;
	padding-top:5px;
	padding-left:5px;
	width: 30px;
	height: 30px;
	float: left;
}
.feed_comment .feed_writer_img > img{
	width:30px;
	height: 30px;
}
.feed_list .comment_txt{
	position:relative;
	padding-top:9px;
	width:197px;
	height:30px;
	font-size:13px;
	display: table;
	overflow-y:auto; 
}

.feed_list #feedreply_content {
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
/*피드 상세페이지 공통*/
.feed_detail {
	border-bottom: 2px solid #7F7F7F;
	height: 120px;
	margin-bottom: 10px;
}

#feeedpage_content {
	word-wrap: break-word;
	display:inline-block;
	overflow-y:hidden;
	width: 100%;
	height: 80px;
	font-size:14px;
	color: #AAAAAA;
	float: left;
	padding-left: 2.5%;
	-ms-overflow-style: none;
}


.feed_writer_img{
width: 40px; 
height: 40px;
float: left;

}
.feed_writer_info{
	display: flex;
}

#feedpage_writer{
 display: inline-block; 
 font-weight: bold; 
 cursor: pointer; 
 margin-left: 5%;
}

#ts_regdate{
 display:inline-block;
 right:10px;
 float: right; 
 height: 40px; 
 position: absolute;
 font-size: 15px; 
 text-align: right;
}

.feed_reply{
margin-top: 10px; 
height:220px;
overflow-y:auto;
}
#feed_like_btn{
	cursor: pointer;
}

#feedpage_replyList{
	margin-top: 5px;
	font-size:13px;
	display: flex;
	height: 25px;
}

#feed_reply_content{
 width: 230px;
 height: 33px; 
 vertical-align: middle;

}
#feedpage_replyList .replywriter_img {
	width: 25px;
	height: 25px;
}

#feed_reply_btn{
 width: 50px; 
 height: 33px; 
 font-size: 12px;
}
.replywriter_img>img{
	border-radius:20px;
}
#feeedpage_content{	
	width:120px;
    display: inline-block;
    overflow-y: hidden;
    height: 70px;
}
.feedreply_regdate{
	position: relative;
}
#feedpage_replyList .feed_writer{
	overflow:hidden;
	text-overflow:ellipsis;
	width: 50px;
	margin-left: 5px;
	cursor: pointer;
}
#feedpage_replyList .feedreply_text{
	width:120px;
	font-size: 13px;
	overflow: auto;
	position: relative;
	margin-left:15px;
}
#overlayFrame{
	display: inline-block;
}
@media all and (max-width:767px) {
	/*피드 리스트*/
	.feed_list #feedlist_writer{
		font-size: 13px;
	}
	.feed_list #feedlist_date{
		font-size: 13px;
	}
	/*피드 상세페이지 새창(overray)*/
	#myOverlay2 {
		width:310px;
	}
	.feeddetail_img {
		width: 310px;
		height: 310px;
	}
	/* 	.feed_detail {
		width: 100%;
		height: 25%;
		display: inline;
		border-bottom: 1px solid red;
	}*/
	.feed_textarea {
		padding: 10px;
	}
	
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
		/* height: 450px; */
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
/* 	.feed .feed_comment {
		width: 100%;
		height: 120px;
	}
 */
	/*피드 상세페이지*/
	#overlayFrame{
	width:650px;
}
	#myOverlay2 {
		width:650px;
		max-width: 700px;
		display: flex;
		height: 450px;
	}
	.feeddetail_img {
		width: 320px;
		height: 320px;
	}
	.myOverlay2-side-position {
		padding: 15px;
		padding-bottom: 20px;
		width: 320px;
	}
	.feed_textarea{
	width:330px;
	}
	.feed_detail{
		height:160px;
	}
	.feed_reply_write{
		padding-top: 5px;
	}
	#feeedpage_content{
		width: 310px;
	}
}
/* pc(960px이상)*/
@media all and ( min-width : 992px) and ( max-width:1199px) {s
	
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
.feed_icon{
	margin:5px;
	height:24px;
	float:left;
	margin-right: 50px;
}
.feed_icon_area .feed_icon:first-child{
	margin-left: 15px;
}.feed_icon_area .feed_icon:last-child{
	margin-right: 15px;
}
	/*피드 상세페이지*/
	#myOverlay2 {
		width:650px;
		max-width: 700px;
		display: flex;
		height: 450px;
	}
	.feeddetail_img {
		width: 320px;
		height: 320px;
	}
	.myOverlay2-side-position {
		padding: 15px;
		padding-bottom: 20px;
		width: 320px;
	}
	.feed_textarea{
	width:330px;
	}
	.feed_detail{
		height:160px;
	}

	.feed_reply_write{
		padding-top: 5px;
	}
		#feeedpage_content{
		width: 310px;
	}
}

/* pc 큰화면(1200px이상) */
@media all and ( min-width : 1200px) {
	/*이벤트 배너 캐러쉘 section*/
	.event_slide {
		order: 1;
		padding: 1.000rem;
		padding-bottom: 1.000rem;
		padding-top: 2%;
	}

	/* mdfeed 리스트 section css*/
	.mdfeed_section {
		order: 2;
		padding: 1.000rem;
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
.feed_icon{
	margin:5px;
	height:24px;
	float:left;
	margin-right: 40px;
}
.feed_icon_area .feed_icon:first-child{
	margin-left: 15px;
}.feed_icon_area .feed_icon:last-child{
	margin-right: 15px;
}
	.feed_list #feedreply_writer {
	font-size: 13px;
	margin-left:10px;
	font-weight: bold;
	width:70px;
	padding-top: 9px;
    }
    .feed_list .comment_txt{
	width:142px;
	height:30px;
	font-size:13px;
	display: inline-block;
	overflow-y:auto; 
}
	/*피드 상세페이지*/
	#myOverlay2 {
		width:650px;
		max-width: 700px;
		display: flex;
		height: 450px;
	}
	.feeddetail_img {
		width: 320px;
		height: 320px;
	}
	.myOverlay2-side-position {
		padding: 15px;
		padding-bottom: 20px;
		width: 320px;
	}
	.feed_textarea{
	width:330px;
	}
	.feed_detail{
		height:160px;
	}
	.feed_reply_write{
		padding-top: 5px;
	}
		#feeedpage_content{
		width: 310px;
	}
}
</style>
</head>
<body>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3" style="color: red;">${search}
			<small style="color: black;">검색결과</small>
		</h1>

		<ol class="breadcrumb" style="width: 150px; text-align: center; background-color: #f8f9fa; ">
			<li class="breadcrumb-item active" style="font-weight: bold; color:#17a2b8;font-size: larger;">트렌드쉐어</li>
		</ol>

		
		<!-- <div class="feed_result" style="margin-bottom: 10%; border: 1px solid red; display: inline-block;" > -->
				<section class="feedlist_section">
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
								data-writer="${feed.mem_id }">${feed.mem_name }
							</div>
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
									<p class="icon_txt">${feed.reply_count }</p>
								</div>
								<div class="feed_icon">
									<img class="icon_img" src="resources/images/icons/feed_read.png">
									<p class="icon_txt">${feed.ts_readcount }</p>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="feed_more" style="text-align: center;">
				<button class="btn btn-danger" id="feed_more_btn" data-pageNum="">more</button>
			</div> 
		</section>
	<!-- 	</div> -->
	<!-- 피드 상세페이지(새창) -->
	<div style="display: none;">
		<!-- Each overlay needs an id. The aria-labelledby is not required but is best practice -->
		<div id="myOverlay2" aria-labelledby="myOverlay2Heading"
			data-overlay-container-class="slide-down" role="region">
			<div class="#myOverlay2-body" style="display: none;">
				<p>여기는 상품링크??</p>
			</div>
		</div>
	</div>
	</div>
	<!-- /.container -->
	<script type="text/javascript" src="resources/js/Overlay.js"></script>
	<script type="text/javascript">
	var errImg = "'http://howmadareyou.com/wp-content/themes/MAD/images/default_profile_image.png'"; //이미지 로딩 에러시 뜰 사진
	 window.onload = searchColor();
	   function pageLoad(){
			// 검색어
			var pattern = '${search}';
			console.log("트렌드쉐어 페이지 실행");
			$.ajax({
						url : "searchresult.do",
						type : "POST",
						data : {
							search : search
						}, 
						async : true,
						dataType : "json",
						timeout:100000,
						success : function(data) {
							console.log("최신순 정렬 ajax 함수 success");
							/*ajax로 데이터 가져온 데이터를 append 함수로 tag 출력 후 JavaScript 이벤트 동작 안하는 문제 해결*/
							var overlayjs = document.createElement('script');
							overlayjs.src = "resources/js/Overlay.js";
							document.getElementsByTagName('head')[0].appendChild(overlayjs);
							/*ajxx밭은 data 출력하기*/
							var mem_id = "";
							var mem_name = "";
							var ts_content = "";
							var ts_img = ""; /*ts_img_path+ts_img_name*/
							var ts_regdate = "";
							$.each(data, function(index, feed) {
								$("#user_feed").append('<div class="feed">'
														+ '<div class="feed_imgbox">'
														+ '<a class="feedpage" id="overlayTrigger2" data-seq="'+$(feed).attr('ts_id')+'"data-overlay-trigger="myOverlay2">'
														+ '<img class="feed-img" '
														+ 'onerror="this.src='+errImg+';"'
														+ 'src="'+$(feed).attr('ts_img_path')+$(feed).attr('ts_img_name')+'"alt=""></a>'
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
														+ '</p></div>'
														+'<div class="feed_icon">'
														+ '<img class="icon_img" src="resources/images/icons/feed_msg.png">'
														+ '<p class="icon_txt">'+$(feed).attr('reply_count')
														+ '</p></div>'
														+'<div class="feed_icon">'
														+ '<img class="icon_img" src="resources/images/icons/feed_read.png">'
														+ '<p class="icon_txt">'+$(feed).attr('ts_readcount')
														+'</p></div>'
														+'</div></div>'
														+ '<div class="feed_comment" data-seq="'+$(feed).attr('ts_id')
														+ '"></div>');
/* 														
							$.each(data.rlist, function(index, reply) {
								if($(feed).attr('ts_id')==$(reply).attr('ts_id')){
								$(".feed_comment[data-seq="+$(feed).attr('ts_id')+"]").append('<div class="comment_list"'
								+'data-tsid="'+$(feed).attr('ts_id')+'" data-replyid="'+$(reply).attr('reply_id')+'">'
								+ '<div class="feed_writer_img">'
								+ '<img alt="" src="http://www.whitepaper.co.kr/news/photo/201510/47008_25930_5622.png"'
								+ 'width="100%" height="100%"></div>'
								+ '<div class="feed_writer" id="feedreply_writer" data-writer="'+$(reply).attr("mem_id")
								+ '">'+$(reply).attr("mem_name")
								+ '</div><div class="comment_txt" style="padding-top: 9px" data-tsid="'+$(reply).attr("ts_id")
								+'">'
								+ $(reply).attr("reply_content")+'</div>'
								/* +'<div class="feedreply_regdate">'+$(reply).attr('reply_regdate')+'</div>' 
								+'</div>'); 
								}
							}); */
							//console.log("검색결과뽑기:",test);
					});
							
						$('#feed_more_btn').attr('data-pageNum','1');
						},beforeSend:function(){
							$("#user_feed").html(" ");
					        $('.feed_loading').removeClass('display-none');
					    },complete:function(){
					    	$('.feed_loading').addClass('display-none');
					    	$("#order_recent").css('color','blue');
					    	$("#order_like").css('color','black');
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
   };
   
 //피드 클릭시 새창 띄우며 ajax로 데이터 불러오기$(".feedpage").bind("click",function() {
	$(document).on('click','.feedpage',function() {
		console.log("피드창 띄우기");
		 	/* var overlayjs = document.createElement('script');
			overlayjs.src = "/howAbout/resources/js/Overlay.js";
			document.getElementsByTagName('head')[0].appendChild(overlayjs); */
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
										console.log("클릭성공");
										console.log(data);
										console.log(data.list);
										$.each(data.list,function(index,feed) {
										console.log("상세페이지 데이터:",feed);
											$("#myOverlay2").html('<img class="feeddetail_img" id="ts_img"'
												+'onerror="this.src='+errImg+';"'  
												+ 'src="'+$(feed).attr('ts_img_path')+$(feed).attr('ts_img_name')+'"alt="">'
												+'<div class="feed_textarea" style="padding:10px;">'
												+'<div class="feed_detail"><div class="feed_writer_info">'
												+'<div class="feed_writer_img">'
												+'<img alt="" src="http://www.whitepaper.co.kr/news/photo/201510/47008_25930_5622.png" width="100%" height="100%">'
												+'</div><div class="feed_writer" id="feedpage_writer" data-writer="'+$(feed).attr('mem_id')+'">'+$(feed).attr('mem_name')+'</div>'
												+'<div class="feed_date" id="ts_regdate">'+$(feed).attr('ts_regdate')+'</div>'
												+'</div><div class="feed_content" id="feeedpage_content">'+$(feed).attr('ts_content')+'</div>'
												+'<div class="feed_icon_area" id="feed_icon"><div class="feed_icon">'
												+'<img class="icon_img" id="feed_like_btn" src="resources/images/icons/feed_heart.png">'
												+'<p class="icon_txt" id="feed_like_icon">'+$(feed).attr('ts_like')+'</p></div><div class="feed_icon">'
												+'<img class="icon_img" src="resources/images/icons/feed_msg.png">'
												+'<p class="icon_txt" id="reply_count">'+$(feed).attr('reply_count')+'</p></div>'
												+'<div class="feed_icon">'
												+ '<img class="icon_img" src="resources/images/icons/feed_read.png">'
												+ '<p class="icon_txt">'+$(feed).attr('ts_readcount')
												+'</p></div>'
												+'</div></div>'
												+'<form name="feed_reply_write" class="feed_reply_write"><input type="hidden" value="'+$(feed).attr('ts_id')+'" id="ts_id" name="ts_id">'
												+'<input type="hidden" value="${member.mem_id}" name="mem_id"> <input type="hidden" value="${member.mem_name}" name="mem_name">' 
												+'<div style="display:none"><input type="submit" onclick="return false;" />'
												+'<input type="text"/></div>'
												+'<c:if test="${not empty member }">'
												+'<input type="text" id="feed_reply_content" name="reply_content"  placeholder="댓글을 입력하세요">'
												+'<input type="button" class="btn btn-danger" id="feed_reply_btn" onClick="return replyuploadChk();" value="확인">' 
												+'</c:if>'
												+'<c:if test="${empty member }">'
												+'<input type="text" id="feed_reply_content" name="reply_content" style="width:100%;" placeholder="댓글을 입력하려면 로그인하세요.">'
												+'</c:if>'
												+'</form><div class="feed_reply"></div>');
											
											$.each(data.rlist, function(index, reply) {
												 $(".feed_reply").append('<div id="feedpage_replyList">'
												+'<div class="feed_writer_img" style="width: 30px; height: 30px;">'
												+'<img alt="" src="http://www.whitepaper.co.kr/news/photo/201510/47008_25930_5622.png" width="100%" height="100%">'
												+'</div><div class="feed_writer" id="feedreply_writer" data-writer='+$(reply).attr('mem_id')+'>'+$(reply).attr('mem_name')+'</div>'
												+'<div class="feedreply_text">'+$(reply).attr('reply_content')+'</div>'
												+'<div class="feedreply_regdate">'+$(reply).attr('reply_regdate')+'</div>'
												+'</div></div></div>');
											});
										});
										searchColor_page();
									}
						});
	});
	/*닉네임 클릭하면 mypage로 이동*/
	$(document).on('click','.feed_writer',function() {
		var mem_id = $(this).data('writer');
		console.log("mem_id는" + mem_id);
		location.href = 'mypage.do?mem_id=' + mem_id
	});
	//검색결과 중 검색어에 노란색으로 하이라이트 표시
	function searchColor(){
		//검색어
		var pattern = '${search}';
		var re = new RegExp(pattern, "g");

		$('.feed').each(function() {
			console.log($(this).find('.feed_content').text());
	 	//검색결과
		var searchString=$(this).find('.feed_content').text();
		//치환하기
		var resultString = searchString.replace(re, "<span class='found'>$&</span>");
		// 화면에 출력
		$(this).find('.feed_content').html(resultString);
        });
	};
	function searchColor_page(){
		//검색어
		var pattern = '${search}';
		var re = new RegExp(pattern, "g");

		$('.feed_detail').each(function() {
			console.log($(this).find('.feed_content').text());
	 	//검색결과
		var searchString=$(this).find('.feed_content').text();
		//치환하기
		var resultString = searchString.replace(re, "<span class='found'>$&</span>");
		// 화면에 출력
		$(this).find('.feed_content').html(resultString);
        });
	};

	</script>
</body>
	<!-- footer -->
	<%@ include file="footer.jsp"%>
	<!-- /.footer -->
</html>
