<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="view_container">
		<div class="row">
			<div class="card h-100">
				<img src="${path}/resources/images/goods/${goods.goods_img}"><br>
				상품명 ${goods.goods_name}<br> 상품브랜드 ${goods.goods_brand}<br>
				가격 ${goods.goods_price}<br> 배송비 ${goods.goods_delprice}<br>
				재고수량 ${stock.stock_qty}<br>
			</div>
			<div class="card-body">
				<form name="form1" method="post" action="cartinsert.do">
					<input type="hidden" name="goods_id" id="goods_id" value="${goods.goods_id}" >
					<c:choose>
						<c:when test="${stock.stock_qty == 0}">
								수량이 없습니다.
						</c:when>
						<c:when test="${stock.stock_qty >= 10}">
							<select name="goods_qty"  id="cart">
								<c:forEach begin="1" end="10" var="sto">
									<option value="${sto}">${sto}</option>
								</c:forEach>
							</select>&nbsp;개 <input type="submit" value="장바구니에 담기">
						</c:when>
						<c:when test="${stock.stock_qty < 10}">
							<select name="goods_qty"  id="cart">
								<c:forEach begin="1" end="${stock.stock_qty}" var="sto">
									<option value="${sto}">${sto}</option>
								</c:forEach>
							</select>&nbsp;개 <input type="submit" value="장바구니에 담기">
						</c:when>
					</c:choose>
				</form>
				<span id="result"></span>
			</div>
		</div>
	</div>
</body>
</html>