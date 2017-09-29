<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#idChk').click(function() {
			if ($('#mem_id').val() == "") {
				$('#result').text(" 아이디를 입력해주세요");
				$('#mem_id').focus();
				return false;
			}
			var sendData = "mem_id=" + $('#mem_id').val();
			$.post('idChk.do', sendData, function(data) {
				$('#result').text(data);
			});
		});
	});
</script>
<body>
	<!-- Page Content -->
	<div class="container">
		<h2 class="text-primary">회원가입</h2>
		<form action="join.do" method="post">
			<table class="table table-bordered" style="table-layout:fixed;">
				<tr>
					<td style="width:15%;">아이디</td>
					<td><input type="text" name="mem_id" required="required" id="mem_id"
						autofocus="autofocus"><input type="button" class="btn btn-info" value="중복확인"
						id="idChk" style="margin-left:15px;"><span id="result"></span></td>
				</tr>
				<tr>
					<td>암호</td>
					<td><input type="password" name="mem_pw" required="required"></td>
				</tr>
<!-- 				<tr>
					<td>암호 확인</td>
					<td><input type="password" name="mem_pw" required="required"></td>
				</tr> -->
				<tr>
					<td>이름</td>
					<td><input type="text" name="mem_name" required="required"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="mem_email" required="required"></td>
				</tr>
				<tr>
					<td>생일</td>
					<td><input type="date" name="mem_birth" required="required"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="mem_phone" required="required"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="mem_addr" required="required"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" class="btn btn-info" value="가입하기"></td>
				</tr>
			</table>
		</form>
	</div>

	<!-- /.container -->
	<!-- footer -->
	<%@ include file="../footer.jsp"%>
	<!-- /.footer -->
</html>
