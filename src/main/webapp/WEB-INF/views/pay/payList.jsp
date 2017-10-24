<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결제내역 리스트</title>
<script type="text/javascript">

/* 이미지 클릭시 상품 상세정보  */
$(document).on('click', '.card-img-top', function() {

		var goods_id = $(this).attr("alt");

		$.ajax({
			url : "view.do",
			method : "POST",

			//위에서 클릭한 goods_id 데이터를 url로 넘겨주고
			data : {
				goods_id : goods_id
			},
			success : function(data) {

				//성공하면 view.do에서 뿌린 데이터를 data 변수에 담아 모달에 붙여라
				$('.view_container').html(data);
				var sumpri = $('#goods_pri_del').val();
				$('#price').append().text(sumpri);
				$(function() {
					$('#cart').on('change', function() {
						var qty = $('#cart').val();
						var price1 = $('#goods_price').val();
						var price2 = $('#goods_delprice').val();
						var total_price = parseInt(price2)+parseInt(price1)*parseInt(qty);
						$('#price').append().text(total_price);
					});
				});
			}
		});
	});
</script>
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
				<c:if test="${not empty cartList }">
				<c:forEach var="cartList" items="${cartList}">
					<tr>
						<td style="border-right: 1px solid #FFFFFF; width: 10%; vertical-align: middle;">
						<a data-toggle="modal" data-target=".bd-example-modal-lg">
									<img src="${path}/resources/images/goods/${cartList.goods_img }" alt="${cartList.goods_id}" class="card-img-top" style="width: 100%;">
								</a>
									<div class="modal fade bd-example-modal-lg" tabindex="-1"
									role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
										<div class="modal-dialog modal-lg" style="width: 100%; max-width: 450px;">
											<div class="modal-content">
											<%@ include file="../goods/view.jsp"%>
											</div>
										</div>
									</div> 
								</td> 
						<td style="vertical-align: middle;">${cartList.goods_name}<p>
							Color : ${cartList.goods_color } / Size : ${cartList.goods_size }
						</td>
						<td style="vertical-align: middle;">${cartList.goods_qty }</td>
						<td style="vertical-align: middle;">${cartList.goods_price }</td>
						<td style="vertical-align: middle;">${cartList.cp_benefit }</td>
						<td style="vertical-align: middle;">${cartList.goods_delprice}</td>
						<%-- ${cartList.goods_price*cartList.goods_qty-cartList.cp_benefit +cartList.goods_delprice} --%>
					<c:forEach var="paymentList" items="${paymentList}">
					<c:if test="${cartList.cart_id == paymentList.cart_id  }">
						<td style="vertical-align: middle;">${paymentList.pay_total }<p>
						(사용 마일리지 : ${paymentList.mem_usepoint})</td>
						<td style="vertical-align: middle;"><a href="reviewForm.do?pay_id=${paymentList.pay_id}" class="btn btn-warning">후기작성</a></td>
					</c:if>
					</c:forEach>
					</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty cartList }">
					<tr>
						<td colspan="6">주문상품 내역이 아직없어요. 구매해주세요 ㅜㅜ</td>
					</tr>
				</c:if>
				</table>
</div>
</body>
<%@ include file="../footer.jsp"%>
</html>
