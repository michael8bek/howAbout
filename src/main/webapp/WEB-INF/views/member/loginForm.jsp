﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h2 class="text-primary">로그인</h2>
	<form action="login.do" method="post">
	<table class="table table-bordered">
		<tr><td>아이디</td><td><input type="text" name="mem_id" 
		required="required" autofocus="autofocus"></td></tr>
		<tr><td>암호</td><td><input type="password" name="mem_pw" required="required"></td></tr>
		<tr><td colspan="2"><input type="submit" value="확인"></td></tr>
	</table></form>
	<a href="joinForm.do" class="btn btn-info">회원가입</a>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>