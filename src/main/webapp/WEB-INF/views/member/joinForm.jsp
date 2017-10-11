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
/* 
    $(function() { // HTML 문서를 모두 읽으면 포함한 코드를 실행

    	// 정규식을 변수에 할당
    	// 정규식을 직접 작성할 줄 알면 참 좋겠지만
    	// 변수 우측에 할당된 정규식은 검색하면 쉽게 찾을 수 있다 
    	// 이 변수들의 활약상을 기대한다
    	// 변수 이름을 're_'로 정한것은 'Reguar Expression'의 머릿글자
    	var re_id = /^[a-z0-9_-]{5,20}$/; // 아이디 검사식
    	var re_pw = /^[a-z0-9_-]{5,20}$/; // 비밀번호 검사식
    	var re_tel = /^[0-9]{8,11}$/; // 전화번호 검사식
    
    	$('#form').submit( function() {
    		if (re_id.test($('#mem_id').val()) != true) { // 아이디 검사
    			alert('유효한 ID를 입력해 주세요.');
    			$('#mem_id').focus();
    			return false;
    		} else if(re_pw.test($('#mem_pw').val()) != true) { // 비밀번호 검사
    			alert('유효한 PW를 입력해 주세요.');
    			$('#mem_pw').focus();
    			return false;
    		} else if($('#mem_pw').val() != $('#mem_pw2').val()) { // 비밀번호 검사
    			alert('암호를 제대로 확인해주세요.');
    			$('#mem_pw2').focus();
    			return false;
    		} else if(re_tel.test($('#mem_phone').val()) != true) { // 전화번호 검사
    			alert('유효한 전화번호를 입력해 주세요.');
    			$('#mem_phone').focus();
    			return false;
    		}
		});
    });
 */
</script>
<body>
	<!-- Page Content -->
	<div class="container">
		<h2 class="text-primary">회원가입</h2>
		<form action="join.do" method="post" id="form">
			<table class="table table-bordered" style="table-layout: fixed;">
				<tr>
					<td style="width: 15%;">아이디</td>
					<td><input type="text" name="mem_id" required="required"
						id="mem_id" autofocus="autofocus" placeholder="영문,숫자 5~20자"><input type="button"
						class="btn btn-info" value="중복확인" id="idChk"
						style="margin-left: 15px;"><span id="result"></span></td>
				</tr>
				<tr>
					<td>암호</td>
					<td><input type="password" name="mem_pw" required="required" placeholder="영문,숫자 5~20자"></td>
				</tr>
<!-- 				<tr>
                    <td>암호 확인</td>
                    <td><input type="password" name="mem_pw2" required="required"></td>
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
					<td><input type="text" name="mem_phone" required="required" placeholder="숫자 9~11자"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="mem_addr" required="required"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" class="btn btn-info"
						value="가입하기" onclick="check()"></td>
				</tr>
			</table>
		</form>
	</div>


	<!-- /.container -->
	<!-- footer -->
	<%@ include file="../footer.jsp"%>
	<!-- /.footer -->
</html>
