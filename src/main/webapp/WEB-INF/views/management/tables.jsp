<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>HowAbout Manager</title>
<!-- 절대경로 -->
<c:set var="path" value="${pageContext.request.contextPath}"
	scope="application"></c:set>
<c:set value="${path}" var="path" scope="application" />
<!-- Bootstrap core CSS-->
<link
	href="${path}/resources/sbAdmin/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template-->
<link
	href="${path}/resources/sbAdmin/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Page level plugin CSS-->
<link
	href="${path}/resources/sbAdmin/vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="${path}/resources/sbAdmin/css/sb-admin.css" rel="stylesheet">
</head>


<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- Navigation-->
	<%@ include file="navigation.jsp"%>

	<div class="content-wrapper">
		<div class="container-fluid">
			<!-- Breadcrumbs-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
				<li class="breadcrumb-item active">Tables</li>
			</ol>
			<!-- Example DataTables Card-->
			<div class="card mb-3">
				<div class="card-header">
					<i class="fa fa-table"></i> 총 상품 페이지
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>상품아이디</th>
									<th>대분류</th>
									<th>소분류</th>
									<th>가격</th>
									<th>브랜드</th>
									<th>색상</th>
									<th>테마</th>
									<th>사이즈</th>
									<!-- <th>패턴</th> -->
									<th>사진</th>
									<th>상품이름</th>
									<th>배송비</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>상품아이디</th>
									<th>대분류</th>
									<th>소분류</th>
									<th>가격</th>
									<th>브랜드</th>
									<th>색상</th>
									<th>테마</th>
									<th>사이즈</th>
									<!-- <th>패턴</th> -->
									<th>사진</th>
									<th>상품이름</th>
									<th>배송비</th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach var="list" items="${list }">
									<tr>
										<td>${list.goods_id }</td>
										<td>${list.goods_bigc }</td>
										<td>${list.goods_smc }</td>
										<td>${list.goods_price }</td>
										<td>${list.goods_brand }</td>
										<td>${list.goods_color }</td>
										<td>${list.goods_theme }</td>
										<td>${list.goods_size }</td>
										<%-- <td>${list.goods_pattern }</td> --%>
										<td>${list.goods_img }</td>
										<td>${list.goods_name }</td>
										<td>${list.goods_delprice }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="card-footer small text-muted">
					Update DATA :  <span id="dateInfo"></span>
				</div>
			</div>
		</div>
		<!-- /.container-fluid-->
		<!-- /.content-wrapper-->
		<footer class="sticky-footer">
		<div class="container">
			<div class="text-center">
				<small><%@ include file="footerText.jsp"%></small>
			</div>
		</div>
		</footer>
		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fa fa-angle-up"></i>
		</a>
		<!-- Logout Modal-->
		<%@ include file="logoutModal.jsp"%>

		<!-- Bootstrap core JavaScript-->
		<script src="${path}/resources/sbAdmin/vendor/jquery/jquery.min.js"></script>
		<script src="${path}/resources/sbAdmin/vendor/popper/popper.min.js"></script>
		<script
			src="${path}/resources/sbAdmin/vendor/bootstrap/js/bootstrap.min.js"></script>
		<!-- Core plugin JavaScript-->
		<script
			src="${path}/resources/sbAdmin/vendor/jquery-easing/jquery.easing.min.js"></script>
		<!-- Page level plugin JavaScript-->
		<script
			src="${path}/resources/sbAdmin/vendor/datatables/jquery.dataTables.js"></script>
		<script
			src="${path}/resources/sbAdmin/vendor/datatables/dataTables.bootstrap4.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="${path}/resources/sbAdmin/js/sb-admin.min.js"></script>
		<!-- Custom scripts for this page-->
		<script src="${path}/resources/sbAdmin/js/sb-admin-datatables.min.js"></script>
		<!-- date current -->
		<script>
			document.getElementById("dateInfo").innerHTML = Date();
		</script>
	</div>
</body>

</html>
