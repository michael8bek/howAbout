<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결제내역 리스트</title>
</head>
<body>
<div class="container">
	<h2 class="text-primary" style="padding-top: 3%;">주문 / 결제</h2>
				회원할인이 적용되는 경우 실제 상품가와 판매가가 노출되며,
				<p>주문시 쿠폰할인 및 적립을 사용하실 경우 실제 결제금액에 따라 적립금이 적용됩니다.
				<p>
				<h5>1.결제 완료 상품</h5>
				<table class="table table-bordered" style="">					
					<tr style="background-color: #E7E7E7;">
						<th>주문상품</th>
						<th>수량</th>
						<th>상품금액</th>
						<th>상품할인</th>
						<th>주문금액</th>
						<th>배송비</th>
					</tr>
				<c:if test="${not empty listOrders }">
				<c:forEach var="cart" items="${listOrders}">
					<tr >
						<td style="vertical-align: middle;">${cart.goods_name}<p>
							Color : ${cart.goods_color } / Size : ${cart.goods_size }
						</td>
						<td style="vertical-align: middle;">${cart.goods_qty }</td>
						<td style="vertical-align: middle;">${cart.goods_price }</td>
						<td style="vertical-align: middle;">${cart.couponlist_benefit }</td>
						<td style="vertical-align: middle;">${cart.goods_price*cart.goods_qty-cart.couponlist_benefit}</td>
						<td style="vertical-align: middle;">${cart.goods_delprice }</td>
					</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty listOrders }">
					<tr>
						<td colspan="6">주문상품 내역이 아직없어요. 구매해주세요 ㅜㅜ</td>
					</tr>
				</c:if>
				</table>
</div>
</body>
</html>