<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
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

		<div class="card mx-auto mt-10 col-lg-12">
			<div class="card-header">회원에게 쿠폰을 등록 하세요</div>
			<div class="card-body">
				<form action="registercoupon.do" method="post" id="frm"
					class="col-lg-12">
					<input id="cplist_regdate" value="20170101" type="hidden">
					<input id="cplist_use" value="n" type="hidden">
					<input id="cp_benefit" value="0" type="hidden">
					
					<table title="쿠폰등록" class="table col-lg-12 dataTable">
						<tr>
							<td>
								<label class="col-lg-4" for="mem_id">회원명</label></td>
							<td><select name="mem_id" title="mem_id" class="col-lg-6">
									<c:forEach var="memlist" items="${listAll }">
										<option value="${memlist.mem_id }">${memlist.mem_name }</option>
									</c:forEach>
							</select></td>
							<td><label class="col-lg-4" for="cp_id">쿠폰명</label></td>
							<td><select class="col-lg-6" name="cp_id" title="cp_id">
									<c:forEach var="cp" items="${cpAll }">
										<option value="${cp.cp_id }">${cp.cp_id }//${cp.cp_benefit }원
											할인</option>
									</c:forEach>
							</select></td>
						</tr>
						<tr>
							<td><label class="col-lg-4" for="cplist_expire">만료날짜</label></td>
							<td><input required="required" id="cplist_expire"
								class="dataTables_filter input form-control col-lg-6"
								name="cplist_expire" type="date"></td>

						</tr>
					</table>
					<div class="btn btn-block">
						<input class="btn btn-primary btn-block" type="submit"
							value="Register">
					</div>
				</form>
			</div>
		</div>
	</div>
	<footer class="sticky-footer">
		<div class="text-center">
			<small><%@ include file="footerText.jsp"%></small>
		</div>
	</footer>
	<!-- Bootstrap core JavaScript-->
	<script src="${path}/resources/sbAdmin/vendor/jquery/jquery.min.js"></script>
	<script src="${path}/resources/sbAdmin/vendor/popper/popper.min.js"></script>
	<script
		src="${path}/resources/sbAdmin/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script
		src="${path}/resources/sbAdmin/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
