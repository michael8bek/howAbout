<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<h2>상품 상세정보</h2>
		<table border="1">
			<tr>
				<td><img src="${path}/goodsimages/${goods.goods_img}"
					width="340" height="300"></td>
				<td>
					<table border="1" style="height: 300px; width: 400px;">
						<tr align="center">
							<td>상품명</td>
							<td>${goods.goods_name}</td>
						</tr>
						<tr align="center">
							<td>가격</td>
							<td>${goods.goods_price}</td>
						</tr>
						<tr align="center">
							<td>상품소개</td>
							<td>${goods.goods_name}</td>
						</tr>
						<%-- 					<tr align="center">
						<td colspan="2">
							<form name="form1" method="post"
								action="${path}/shop/cart/insert.do">
								<input type="hidden" name="productId" value="${vo.goods_id}">
								<select name="amount">
									<c:forEach begin="1" end="10" var="i">
										<option value="${i}">${i}</option>
									</c:forEach>
								</select>&nbsp;개 <input type="submit" value="장바구니에 담기">
							</form> <a href="${path}/shop/product/list.do">상품목록</a>
						</td>
					</tr> --%>
					</table>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>