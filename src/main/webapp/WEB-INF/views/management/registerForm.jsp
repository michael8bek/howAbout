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


<body class="bg-dark">
	<div class="container">
		<div class="card card-register mx-auto mt-5">
			<div class="card-header">상품 등록</div>
			<div class="card-body">
				<form action="registergoods.do" method="post" id="frm">
					<table title="상품등록" class="tables">
						<tr>
							<td><input name="goods_id" value="0" hidden="true">
							<label for="goods_bigc">대분류</label> <select
								name="goods_bigc" title="goods_bigc" >
									<option value="men">남성용</option>
									<option value="women">여성용</option>
							</select></td>
							<td><label for="goods_smc">소분류</label> <select
								name="goods_smc" title="goods_smc">
									<option value="shirts">셔츠</option>
									<option value="suit">정장</option>
									<option value="t-shirts">티셔츠</option>
									<option value="blouse">블라우스</option>
									<option value="one-piece">원피스</option>
									<option value="pants">바지</option>
									<option value="leggings">레깅스</option>
									<option value="skirt">스커트</option>
									<option value="knitwear">니트</option>
									<option value="hood">후드</option>
									<option value="jeans">청바지</option>
									<option value="jacket">자켓</option>
									<option value="shoes">신발</option>
									<option value="bag">가방</option>
									<option value="accessory">기타잡화</option>
							</select></td>
						</tr>
						<tr>
							<td><label for="goods_price">가격</label> <input
								required="required" class="form-control" name="goods_price"
								type="text" placeholder="Enter Price"></td>
							<td><label for="goods_brand">goods_brand</label> <input
								required="required" class="form-control" name="goods_brand"
								type="text" placeholder="Enter Brand"></td>
						</tr>
						<tr>
							<td><label for="goods_color">goods_color</label> <select
								name="goods_color" title="goods_color">
									<option value="red">빨강</option>
									<option value="orange">주황</option>
									<option value="yellow">노랑</option>
									<option value="green">초록</option>
									<option value="blue">파랑</option>
									<option value="violet">보라</option>
									<option value="dark">검정</option>
									<option value="white">흰색</option>
									<option value="ivory">아이보리</option>
									<option value="burgundy">버건디</option>
							</select></td>
							<td><label for="goods_theme">goods_theme</label> <select
								name="goods_theme" title="goods_theme">
									<option value="office">직장</option>
									<option value="student">학생</option>
									<option value="picnic">소풍</option>
									<option value="daily">일상</option>
									<option value="love">러브</option>
							</select></td>
						</tr>
						<tr>
							<td><label for="goods_size">goods_size</label> <select
								name="goods_size" title="goods_size">
									<option value="0">Free</option>
									<option value="44">Small(W)</option>
									<option value="55">Medium(W)</option>
									<option value="66">Large(W)</option>
									<option value="77">X-Large(W)</option>
									<option value="90">X-Small(M)</option>
									<option value="95">Small(M)</option>
									<option value="100">Medium(M)</option>
									<option value="105">Large(M)</option>
									<option value="110">X-Large(M)</option>
							</select></td>
							<td><label for="goods_pat">goods_pattern</label> <select
								name="goods_pat" title="goods_pat">
									<option value="none">없음</option>
									<option value="stripe">줄무늬</option>
									<option value="dots">도트</option>
									<option value="check">체크</option>
									<option value="flower">꽃무늬</option>
							</select></td>
						</tr>
						<tr>
							<td colspan="2">
								<!-- <form name="goods_img" name="goods_img" method="post"
									enctype="multipart/form-data"> --><label for="goods_img">goods_img</label>
									<input type="file" name="goods_img" >
								</form>
							</td>
						</tr>
						<tr>
							<td><label for="goods_name">상품명</label> <input
								required="required" class="form-control" name="goods_name"
								type="text" placeholder="Enter Goods name"></td>
							<td><label for="goods_delprice">배송비</label> <input
								required="required" class="form-control" name="goods_delprice"
								type="text" placeholder="Enter 배송비"></td>
						</tr>
						<!-- 					<a class="btn btn-primary btn-block" href="loginManage.do">Register</a> -->
					</table>
					<input class="btn btn-primary btn-block" type="submit"
						value="Register">
				</form>
				<div class="text-center">
					<a class="d-block small mt-3" href="loginManage.do">Login Page</a>
					<a class="d-block small" href="forgot-password.do">Forgot
						Password?</a>
				</div>
			</div>
		</div>
	</div>
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
