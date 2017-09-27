<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h2 class="text-primary">장바구니 목록</h2>
<table class="table table-bordered">
	<tr><th>주문상품</th><th>담은날짜</th><th>배송비</th><th>상품금액</th></tr>
<c:forEach var="cart" items="${list }">
	<tr><td>${cart.cart_id }</td>
		<td><a href="" class="btn btn-default">
			${cart.cart_date}</a></td><td>${cart.goods_id}</td>
		<td><a href="" 
			class="btn btn-warning">${cart.cart_editdate}</a></td></tr>
</c:forEach></table>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>