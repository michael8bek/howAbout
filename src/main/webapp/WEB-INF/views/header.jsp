<%@page import="howAbout.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
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
<script src="resources/js/jquery.js"></script>

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
			<div class="col-lg-2">
			<a class="navbar-brand" href="main.do">How About Style</a>
</div>
			<!--search 창 줄어들었을때 나오는 버튼 -->
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#searchResponsive"
				aria-controls="searchResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<div class="w3-padding w3-xlarge w3-teal">
					<i class="material-icons">search</i>

				</div>
			</button>
			<!--./search창 줄어들었을때 나오는 버튼 -->

			<!-- search 창 form -->
			<div class="collapse col-lg-3 navbar-collapse">
			<form class="form-inline my-2 my-lg-0 mr-lg-2">
				<div class="input-group ">
					<input class="form-control" type="text" placeholder="Search for...">
					<span class="input-group-btn">
						<button class="btn btn-primary" type="button" value="">Search
						</button>
					</span>
				</div>
			</form>
			</div>
			<%-- <div class="collapse navbar-collapse" id="searchResponsive">
				<form class="form-inline sm-auto">
					<div class="form-group">
						<input type="text" class="form-control form-row " id="search"
							placeholder="Search Items">
						<button type="submit" class="btn btn-primary btn-sm active">Search</button>
					</div>
				</form>
			</div> --%>
			<!-- /.search 창 form -->

			<!-- 창 줄어들었을때 나오는 버튼 -->
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!--./창 줄어들었을때 나오는 버튼 -->

			<div class="collapse col-lg-7 navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
				<c:if test="${not empty member.mem_id }">
						<li class="nav-item nav-link">${member.mem_name }</li>
					</c:if>
                    
					<li class="nav-item"><a class="nav-link" href="stylefeed.do">스타일피드</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownPortfolio" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> 추천 </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item" href="listMdtext.do">MD추천</a> 
							<a class="dropdown-item" href="mdtextInsertForm.do">MD추천 입력</a>
							<a class="dropdown-item" href="portfolio-3-col.jsp">3
								Column Portfolio</a> <a class="dropdown-item"
								href="portfolio-4-col.jsp">4 Column Portfolio</a> <a
								class="dropdown-item" href="portfolio-item.jsp">Single
								Portfolio Item</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Other Pages </a>
							
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<c:if test="${not empty member }">
								<a class="dropdown-item" href="logout.do">로그아웃</a>
							</c:if>
							<c:if test="${not empty member }">
							<a class="dropdown-item" href="ordersList.do?mem_id=${member.mem_id }">주문페이지</a> 
							</c:if>
							<c:if test="${empty member }">
							<a class="dropdown-item" href="ordersList.do?mem_id=${member.mem_id }" data-toggle="modal" data-target=".bd-example-modal-lg">주문페이지</a> 
							</c:if>
							<a class="dropdown-item" href="goodsList.do">상품페이지</a>
							 <c:if test="${not empty member }">
							<a class="dropdown-item" href="cartList.do?mem_id=${member.mem_id }">장바구니</a>
							</c:if>
							<c:if test="${ empty member }">
							<a class="dropdown-item" href="cartList.do?mem_id=${member.mem_id }" data-toggle="modal" data-target=".bd-example-modal-lg">장바구니</a>
							</c:if>
							<c:if test="${empty member }">
								<a class="dropdown-item" href="joinForm.do">Join page</a>
							</c:if>
							<c:if test="${member.mem_name=='master' }">
								<a class="dropdown-item" href="indexManage.do">Manager</a>
							</c:if>
						</div></li>
					<c:if test="${empty member }">
                    	<a class="btn btn-info" href="loginForm.do" data-toggle="modal" data-target=".bd-example-modal-lg">로그인</a> 
                    	<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                    		<div class="modal-dialog modal-lg">
                    			<div class="modal-content">
                    				<%@ include file="member/loginForm.jsp" %>
                    			</div>
                    		</div>
                    	</div>
                    </c:if>

				</ul>
			</div>
		</div>
	</nav>

</body>
</html>
