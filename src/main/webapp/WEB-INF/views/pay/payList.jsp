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
				<table class="table" style="text-align: center;">					
					<tr style="background-color: #E7E7E7;">
						<th></th>
						<th style="text-align: center;">주문상품</th>
						<th style="text-align: center;">수량</th>
						<th style="text-align: center;">상품금액</th>
						<th style="text-align: center;">상품할인</th>
						<th style="text-align: center;">배송비</th>
						<th style="text-align: center;">결제금액</th>
						<th></th>
					</tr>
				<c:if test="${not empty payList }">
				<c:forEach var="payList" items="${payList}">
				<%-- <c:forEach var="cartList" items="${cartList}"> --%>
				<%-- <c:if test="${payList.mem_id==cartList.mem_id || payList.goods_id == cartList.goods_id }"> --%>
					
					<tr>
						<td style="border-right: 1px solid #FFFFFF; width: 10%; vertical-align: middle;">
						<img src="resources/images/goods/${payList.goods_img }" style="width:100%;"></td>
						<td style="vertical-align: middle;">${payList.goods_name}<p>
							Color : ${payList.goods_color } / Size : ${payList.goods_size }
						</td>
						<td style="vertical-align: middle;">${payList.goods_qty }</td>
						<td style="vertical-align: middle;">${payList.goods_price }</td>
						<td style="vertical-align: middle;">${payList.cp_benefit }</td>
						<td style="vertical-align: middle;">${payList.goods_delprice}</td>
						<td style="vertical-align: middle;">${payList.goods_price*payList.goods_qty-payList.cp_benefit +payList.goods_delprice} </td>
						<!--${payList.goods_price*payList.goods_qty-payList.cp_benefit +payList.goods_delprice}  -->
						<td style="vertical-align: middle;"><a href="uploadFeedImg.do" class="btn btn-warning">후기작성</a></td>
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