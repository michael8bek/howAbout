<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰작성</title>
<script type="text/javascript">
</script>
</head>
<body>
<div class="container">
	<h2 class="text-primary" style="padding-top: 3%;">리뷰작성</h2>
	<form action="review.do" method="post">
	<input type="hidden" name="pay_id" value="${pay_id }">
	<table class="table" >
		<tr ><th style="text-align: center;" >리뷰 제목</th><th><input type="text" name="review_title" required="required" autofocus="autofocus" style="width: 100%; height: 100%;"></th></tr>
		<tr ><th style="text-align: center; vertical-align: middle;">내용</th>
		<th ><textarea name="review_content" rows="10" cols="10" required="required" style="width: 100%; height: 100%;"></textarea></th></tr>
		<tr><td colspan="2"><input type="submit" value="확인" class="btn btn-info" style="width:100%; height: 100%;"></td></tr>
	</table>
	</form>
</div>
</body>
<%@ include file="../footer.jsp"%>
</html>