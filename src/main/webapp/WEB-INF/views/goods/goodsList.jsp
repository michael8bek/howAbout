<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--  <c:forEach var="goods" items="${list }">
    	<a href="insertCart.do">카트에담기</a>${goods.goods_name }<p>
    	<a href="insertOrders.do">바로주문</a>${goods.goods_name }<p>
    </c:forEach> --%>

	<div class="container">
		<div class="row">
			<c:forEach var="goods" items="${list}">
				<div class="col-lg-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a href="${goods.goods_id}"><img class="card-img-top"
							src="${path}/goodsimages/${goods.goods_img}"></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">${goods.goods_name}</a>
							</h4>
							<p class="card-text">${goods.goods_price-goods.goods_delprice}</p>
							<p class="card-text"><s>${goods.goods_price}</s></p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<%-- 		<tr>
			<td>${goods.goods_id}</td>
			<td><img src="${goods.goods_img}" width="120px" height="100px"></td>
			<td>${goods.goods_name}</td>
			<td>${goods.goods_delprice}</td>
		</tr> --%>
</body>
<%@ include file="../footer.jsp"%>
</html>