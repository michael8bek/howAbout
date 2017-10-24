<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
/*모달 새창*/
#dialog-background {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: black;
	opacity: 0.6;
	z-index: 900;
}

#my-dialog {
	display: none;
	position: fixed;
	left: calc(50% - 300px);
	top: calc(50% - 170px);
	width: 600px;
	height: 340px;
	background: #fff;
	z-index: 1000;
	padding: 10px;
}
</style>

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
				<li class="breadcrumb-item"><a href="#">관리자</a></li>
				<li class="breadcrumb-item active">쿠폰</li>
			</ol>
			<!-- Example DataTables Card-->
			<div class="card mb-3">
				<div class="card-header">
					<div style="float: left; vertical-align: middle; margin-top: 8px;">
						<i class="fa fa-table"></i> 쿠폰 목록
					</div>
					<div style="float: right;">
						<button type="button" class="btn btn-info btn-lg"
							data-toggle="modal" data-target="#myModal">신규등록</button>
						<!-- 
						<a data-toggle="modal" data-target=".modal-body">
							<button class="btn btn-info" id="newCp">신규등록</button> -->
						</a>
						<!-- <a class="btn btn-success" href="#" onclick="goodsEditFunc()"
							id="goods_edit" style="align-content: flex-end;">수정</a> <a
							class="btn btn-danger" id="goods_delete"
							style="align-items: right">삭제</a> -->
					</div>
				</div>

				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable"
							style="width: 100%">
							<thead>
								<tr>
									<th width="15"></th>
									<th align="center">쿠폰명</th>
									<th align="center" style="vertical-align: middle;">혜택</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th></th>
									<th align="center" style="vertical-align: middle;">쿠폰명</th>
									<th align="center" style="vertical-align: middle;">혜택</th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach var="cp" items="${cpAll }" begin="1">
									<tr>
										<td align="center" style="vertical-align: middle;"><input
											type="checkbox" name="chk_goods_id" value="${cp.cp_id }"></td>
										<td align="center" style="vertical-align: middle;">${cp.cp_id }</td>
										<td align="center" style="vertical-align: middle;">${cp.cp_benefit }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="card-footer small text-muted">
					Update DATE : <span id="dateInfo"></span>
				</div>
			</div>
		</div>
		<!-- /.container-fluid-->

		<!-- Modal -->
		<div id="myModal" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">새로운 쿠폰 등록</h4>
					</div>
					<div class="modal-body">
						<form action="addCoupon.do">
							<table class="table">
								<tr>
									<th>쿠폰이름</th>
									<th>쿠폰할인혜택</th>
								</tr>
								<tr>
									<td><input style="width: 100%" id="cp_id" type="text" name="cp_id"
										placeholder="쿠폰이름을 입력하세요"></td>
									<td><input style="width: 100%" id="cp_benefit" name="cp_benefit" type="text"
										placeholder="예)10000"></td>
								</tr>

							</table>
							<input style="width: 100%" class="btn btn-success" type="submit" value="새로운 쿠폰 등록">
						</form>
					</div>
					<!-- <div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div> -->
				</div>

			</div>
		</div>
<!-- 
		<div id="my-dialog">
			<form action="addCoupon.do">
				<table class="table">
					<tr>
						<th>쿠폰이름</th>
						<th>쿠폰할인혜택</th>
					</tr>
					<tr>
						<td><input id="cp_id" type="text" name="cp_id"
							placeholder="쿠폰이름을 입력하세요"></td>
						<td><input id="cp_benefit" type="text" placeholder="예)10000"></td>
					</tr>

				</table>
				<input type="submit" value="새로운 쿠폰 등록">
			</form>
		</div>
		<div id="dialog-background"></div> -->
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
			document.getElementById("dateInfo").innerHTML = Date()
		</script>
	</div>
</body>

</html>
