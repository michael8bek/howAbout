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
주문 아이디 : ${orders.orders_id}<p>
상품 아이디 : ${orders.cart_id}<p>
주문 날   짜 : ${orders.orders_date}<p>
</body>
<%@ include file="../footer.jsp" %>
</html>