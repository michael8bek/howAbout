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
	<h2 class="text-primary" style="padding-top: 3%;">결제 완료 상품</h2>
				<p>
				<table class="table table-bordered" style="">					
					<tr style="background-color: #E7E7E7;">
						<th>주문상품</th>
						<th>수량</th>
						<th>상품금액</th>
						<th>상품할인</th>
						<th>배송비</th>
						<th>결제금액</th>
					</tr>
				<c:if test="${not empty payList }">
				<c:forEach var="payList" items="${payList}">
					<tr >
						<td style="vertical-align: middle;">${payList.goods_name}<p>
							Color : ${payList.goods_color } / Size : ${payList.goods_size }
						</td>
						<td style="vertical-align: middle;">${payList.goods_qty }</td>
						<td style="vertical-align: middle;">${payList.goods_price }</td>
						<td style="vertical-align: middle;">${payList.couponlist_benefit }</td>
						<td style="vertical-align: middle;">${payList.goods_delprice}</td>
						<td style="vertical-align: middle;">${payList.goods_price*payList.goods_qty-payList.couponlist_benefit +payList.goods_delprice}</td>
					</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty payList }">
					<tr>
						<td colspan="6">주문상품 내역이 아직없어요. 구매해주세요 ㅜㅜ</td>
					</tr>
				</c:if>
				</table>
</div>
</body>
<%@ include file="../footer.jsp"%>
</html>