<%@page import="howAbout.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
<head>
<!-- 절대경로 -->
<c:set var="path" value="${pageContext.request.contextPath}"
	scope="application"></c:set>
<c:set value="${path}" var="path" scope="application" />

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS link-->
<link href="${path}/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${path}/resources/css/modern-business.css" rel="stylesheet">
<style type="text/css">
.err {
	color: red;
}
</style>
<script src="${path}/js/jquery.js"></script>

<!-- Bootstrap core CSS -->
<script src="${path}/resources/vendor/bootstrap/css/bootstrap.min.css"></script>
<!-- Custom styles for this template -->
<script src="${path}/resources/css/modern-business.css"></script>

<title>How about</title>
<script type="text/javascript">
	
</script>
</head>
<body>
	<!-- Navigation -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="main.do">MAIN</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">

				<ul class="navbar-nav ml-auto">
					<c:if test="${not empty member }">
					<li class="nav-item"><a class="nav-link" href="">${member.mem_name }</a>
					</li>
					</c:if>
					<c:if test="${empty member }">
					 <li class="nav-item"><a class="nav-link" href="">손님</a>
					</li> 
					</c:if>
					<li class="nav-item"><a class="nav-link" href="cartList.do">장바구니</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="stylefeed.do">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownPortfolio" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Portfolio </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item" href="portfolio-1-col.jsp">1 Column
								Portfolio</a> <a class="dropdown-item" href="portfolio-2-col.jsp">2
								Column Portfolio</a> <a class="dropdown-item"
								href="portfolio-3-col.jsp">3 Column Portfolio</a> <a
								class="dropdown-item" href="portfolio-4-col.jsp">4 Column
								Portfolio</a> <a class="dropdown-item" href="portfolio-item.jsp">Single
								Portfolio Item</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Blog </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="blog-home-1.jsp">Blog Home 1</a> <a
								class="dropdown-item" href="blog-home-2.jsp">Blog Home 2</a> <a
								class="dropdown-item" href="blog-post.jsp">Blog Post</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Other Pages </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<c:if test="${empty member }">
							<a class="dropdown-item" href="loginForm.do">로그인</a> 
							</c:if>
							<c:if test="${not empty member }">
							<a class="dropdown-item" href="logout.do">로그아웃</a> 
							</c:if>
							<a class="dropdown-item" href="faq.jsp">FAQ</a> <a
								class="dropdown-item" href="404.jsp">404</a> <a
								class="dropdown-item" href="joinForm.do">Join page</a> 
								<c:if test="${member.mem_name==master }">
								<a class="dropdown-item" href="indexManage.do">Manager</a>
								</c:if>
						</div></li>

				</ul>
			</div>
		</div>
	</nav>

	<header>
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<!-- Slide One - Set the background image for this slide in the line below -->
				<!-- img size 1900x1080 -->

				<!-- Slide Two - Set the background image for this slide in the line below -->
				<div class="carousel-item"
					style="background-image: url('http://88nn.info/uploads/fotos/37/img_359482.jpg')">
					<div class="carousel-caption d-none d-md-block">
						<h3>Second Slide</h3>
						<p>This is a description for the second slide.</p>
					</div>
				</div>
				<!-- Slide Three - Set the background image for this slide in the line below -->
				<div class="carousel-item"
					style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRQrAexCob8coMCirC8mM3sK73lVzo-qSTrgSav59oefGHewVQ')">
					<div class="carousel-caption d-none d-md-block">
						<h3>Third Slide</h3>
						<p>This is a description for the third slide.</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</header>

</body>
</html>
