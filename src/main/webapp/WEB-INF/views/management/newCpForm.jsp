<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container"></div>

	<!-- header -->
	<div class="modal-header">
		<!-- 닫기(x) 버튼 -->
		<button type="button" class="close" data-dismiss="modal">×</button>
		<!-- header title -->
		<h4 class="modal-title">Header</h4>
	</div>
	<!-- body -->
	<div class="modal-body">
		Body
		<form action="addCoupon.do"?cp_id=#{cp_id }&cp_benefit=#{cp_benefit }>
			<table class="table">
				<tr>
					<th>쿠폰이름</th>
					<th>쿠폰할인혜택</th>
				</tr>
				<tr>
					<td><input id="cp_id" type="text" placeholder="쿠폰이름을 입력하세요"></td>
					<td><input id="cp_benefit" type="text" placeholder="예)10000"></td>
				</tr>

			</table>
			<input type="submit" value="새로운 쿠폰 등록">
		</form>

	</div>
	<!-- Footer -->
	<div class="modal-footer">
		Footer
		<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	</div>


</body>
</html>