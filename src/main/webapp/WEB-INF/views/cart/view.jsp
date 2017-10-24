<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="view_container" style="text-align: center">
		<h5 style="color: #aaa">${goods.goods_brand}</h5>
		<h2 style="font-weight: bold;">${goods.goods_name}</h2>
		<img src="${path}/resources/images/goods/${goods.goods_img}"
			style="width: 100%; max-width: 400px;">
		<div class="card-body">
			<h3 class="text-primary" style="margin-left: 7px; text-align: left;">${goods.goods_price}
				원</h3>
			<p style="margin-left: 7px; text-align: left;">
				남은수량 : ${stock.stock_qty}<br> 배송비 : ${goods.goods_delprice}
			</p>
			<form name="form1" method="post" id="viewform">  <!-- action="cartinsert.do" --> 
				<input type="hidden" name="goods_price" id="goods_price" value="${goods.goods_price }"> 
				<input type="hidden" name="goods_delprice" id="goods_delprice" value="${goods.goods_delprice }"> 
				<input type="hidden" name="goods_id" id="goods_id" value="${goods.goods_id}">
				<input type="hidden" id="goods_pri_del" value="${goods.goods_delprice+goods.goods_price }">

				<c:choose>

					<c:when test="${stock.stock_qty == 0}">
								수량이 없습니다.
					</c:when>

					<c:when test="${stock.stock_qty >= 10}">
						<div style="margin-left: 7px; float: left">
							수량&nbsp;&nbsp;<select name="goods_qty" id="cart">
								<c:forEach begin="1" end="10" var="sto">
									<option value="${sto}">${sto}</option>
								</c:forEach>
							</select>
						</div>
						<div style="margin-right: 7px; float: right">
							총 결제 금액 : <b id='price'></b>
						</div>
						<br>
						<hr>
						<!-- <input type="submit" class="btn btn-info" value="장바구니에 담기"> -->
						<button type="button" class="btn btn-info" id="cartinsert">장바구니에 담기</button>
						<button type="button" class="btn btn-info" id="orderinsert">바로구매</button>
					</c:when>

					<c:when test="${stock.stock_qty < 10}">
						<div style="margin-left: 7px; float: left">
							수량&nbsp;&nbsp;<select name="goods_qty" id="cart">
								<c:forEach begin="1" end="${stock.stock_qty}" var="sto">
									<option value="${sto}">${sto}</option>
								</c:forEach>
							</select>
						</div>
						<div style="margin-right: 7px; float: right">
							총 결제 금액 : <b id='price'></b>
						</div>
						<br>
						<hr>
						<button type="button" class="btn btn-info" id="cartinsert">장바구니에 담기</button>
						<button type="button" class="btn btn-info" id="orderinsert">바로구매</button>
					</c:when>

				</c:choose>

			</form>
			<span id="result"></span>
		</div>
	</div>
</body>
</html>