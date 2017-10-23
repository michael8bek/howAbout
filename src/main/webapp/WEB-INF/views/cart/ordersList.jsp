<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container1 {
	width: 100%;
	display: flex;
}

.container2 {
	width: 100%;
	display: flex;
	margin-top: 4%;
}

.container3 {
	width: 100%;
	display: flex;
	margin-top: 4%;
}

.container1_1 {
	float: left;
	width: 100%;
}

.container1_2 {
	float: left;
	width: 100%;
}

.container1_3 {
	float: left;
	width: 65%;
	flex-direction: row;
	justify-content: center;
	align-items: center;
}

.container1_4 {
	float: left;
	width: 35%;
	padding: 0 5% 5% 5%;
	flex-direction: row;
	justify-content: center;
	align-items: center;
}
</style>
<script type="text/javascript">
	/* 페이지 로딩시 결제내역에 계산됨 */
	window.onload = function() {
		var sum = 0;
		var sum1 = 0;
		var salesum = 0;
		var count = frm.cart_id.length;
		/* 상품이 하나일때 */
		if (count == undefined) {
			sum = parseInt(frm.goods_price.value * frm.goods_qty.value);
			sum1 = parseInt(frm.goods_delprice.value);
			salesum = parseInt(frm.cp_benefit.value * frm.goods_qty.value);
		}
		for (var i = 0; i < count; i++) {
			sum += parseInt(frm.goods_price[i].value * frm.goods_qty[i].value);
			sum1 += parseInt(frm.goods_delprice[i].value);
			salesum += parseInt(frm.cp_benefit[i].value
					* frm.goods_qty[i].value);
		}
		if (sum >= 50000) {
			sum1 = "무료배송";
			frm.total_sum.value = sum;
			frm.delprice.value = sum1;
			frm.saleprice.value = salesum;
			frm.pay_total.value = sum - salesum - frm.couponsale.value;
		} else {
			frm.total_sum.value = sum;
			frm.delprice.value = sum1;
			frm.saleprice.value = salesum;
			frm.pay_total.value = sum + sum1 - salesum - frm.couponsale.value;
		}
		if (frm.pay_total.value < 0) {
			frm.pay_total.value = 0;
		}
	}
	/* 쿠폰 클릭시 가격이 계산됨 */
	function coupon(val1) {
		var element = val1;
		var cp_benefit = element.split('-')[0];
		var cplist_id = element.split('-')[1];
		
		console.log("변수 element = ", element);
		console.log("변수 cp_benefit = ", cp_benefit);
		console.log("변수 cplist_id = ", cplist_id);
		
		$('#cplist_id').val(cplist_id);
		
		frm.couponsale.value = cp_benefit;
		/* console.log("변수 cplist_id = ", frm.cplist_id.val); */
		var sum = 0;
		var sum1 = 0;
		var salesum = 0;
		var count = frm.goods_price.length;
		if (count == undefined) {
			sum = parseInt(frm.goods_price.value * frm.goods_qty.value);
			sum1 = parseInt(frm.goods_delprice.value);
			salesum = parseInt(frm.cp_benefit.value * frm.goods_qty.value);
		}
		for (var i = 0; i < count; i++) {
			sum += parseInt(frm.goods_price[i].value * frm.goods_qty[i].value);
			sum1 += parseInt(frm.goods_delprice[i].value);
			salesum += parseInt(frm.cp_benefit[i].value
					* frm.goods_qty[i].value);
		}

		if (sum >= 50000) {
			sum1 = "무료배송";
			frm.total_sum.value = sum;
			frm.delprice.value = sum1;
			frm.saleprice.value = salesum;
			frm.pay_total.value = sum - salesum - frm.couponsale.value;
			if (frm.pay_total.value < 0) {
				frm.pay_total.value = 0;
			}
		} else {
			frm.total_sum.value = sum;
			frm.delprice.value = sum1;
			frm.saleprice.value = salesum;
			frm.pay_total.value = sum + sum1 - salesum - frm.couponsale.value;
			if (frm.pay_total.value < 0) {
				frm.pay_total.value = 0;
			}

		}
	}

	/* 주문자 정보 ajax */
	function memajax() {
		$.ajax({
			type : "GET",
			url : "memorders.do",
			async : false,
			dataType : "json",
			contentType : 'application/json; charset=utf-8',
			error : function(request) {
				alert("[[error]]" + request.responseText);
				event.preventDefault();
			},
			success : function(data) {
				if ($("input[name=chk]").prop("checked")) {
					$("#mem_id").val(data.mem_id);
					$("#mem_phone").val(data.mem_phone);
					$("#mem_email").val(data.mem_email);
				} else {
					$("#mem_id").val("");
					$("#mem_phone").val("");
					$("#mem_email").val("");
				}

			}
		});
	}
	/* 배송지 정보 ajax */
	function memajax1() {
		$.ajax({
			type : "GET",
			url : "memorders.do",
			async : false,
			dataType : "json",
			contentType : 'application/json; charset=utf-8',
			error : function(request) {
				alert("[[error]]" + request.responseText);
				event.preventDefault();
			},
			success : function(data) {
				if ($("input[name=chk1]").prop("checked")) {
					$("#delmem_id").val(data.mem_id);
					$("#delmem_addr").val(data.mem_addr);
					$("#delmem_phone").val(data.mem_phone);
				} else {
					$("#delmem_id").val("");
					$("#delmem_addr").val("");
					$("#delmem_phone").val("");
				}
			}
		});
	}
	/* 마일리지 숫자 입력할때 가격에 적용 */
	 function mempoint(){
		
		var point = parseInt(document.getElementById("mem_usepoint").value);
		if(point > frm.mem_point1.value){
			alert("최대 가능 마일리지입니다");
			frm.mem_usepoint.value = parseInt(frm.mem_point1.value);
		}
		/* isNaN체크 */
		 if(isNaN(point) == true){
			point = 0;
		} 
		var sum = 0;
		var sum1 = 0;
		var salesum = 0;
		var count = frm.goods_price.length;
		 /* 상품이 하나일때  */
		if (count == undefined) {
			sum = parseInt(frm.goods_price.value * frm.goods_qty.value);
			sum1 = parseInt(frm.goods_delprice.value);
			salesum = parseInt(frm.cp_benefit.value * frm.goods_qty.value);
		}
		for (var i = 0; i < count; i++) {
			sum += parseInt(frm.goods_price[i].value * frm.goods_qty[i].value);
			sum1 += parseInt(frm.goods_delprice[i].value);
			salesum += parseInt(frm.cp_benefit[i].value
					* frm.goods_qty[i].value);
		}
		if (sum >= 50000) {
			sum1 = "무료배송";
			frm.total_sum.value = sum;
			frm.delprice.value = sum1;
			frm.saleprice.value = salesum;
			frm.pay_total.value = sum - salesum - frm.couponsale.value - point;
		} else {
			frm.total_sum.value = sum;
			frm.delprice.value = sum1;
			frm.saleprice.value = salesum;
			frm.pay_total.value = sum + sum1 - salesum - frm.couponsale.value- point;
		}
		if (frm.pay_total.value < 0) {
			frm.pay_total.value = 0;
		}
	}
	
	/* 이미지 클릭시 상품 상세정보  */
	 $('.onlynumber').keyup(function () {
		 this.value = this.value.replace(/[^0-9]/g,'');
			});
	 
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
	<form name="frm" action="payInsert.do" method="post" id="">
		 <input type="hidden" id="mem_point1" name="mem_point1" value="${member.mem_point}">  
		<div class="container">
			<div class="container1">
				<div class="container1_1">
					<h2 class="text-primary" style="padding-top: 3%;">주문 / 결제</h2>
					회원할인이 적용되는 경우 실제 상품가와 판매가가 노출되며,
					<p>주문시 쿠폰할인 및 적립을 사용하실 경우 실제 결제금액에 따라 적립금이 적용됩니다.
					<p>
				</div>
			</div>
			<div class="container2">
				<div class="container1_2">
					<h5>1. 주문상품 내역</h5>
					<table class="table" style="text-align: center;">
						<tr style="background-color: #E7E7E7;">
							<td
								style="border-right: 1px solid #EAEAEA; width: 10%; vertical-align: middle;">
							<th style="text-align: center;">주문상품</th>
							<th style="text-align: center;">수량</th>
							<th style="text-align: center;">상품금액</th>
							<th style="text-align: center;">상품할인</th>
							<th style="text-align: center;">배송비</th>
							<th style="text-align: center;">주문금액</th>
							<th style="text-align: center;">주문관리</th>
						</tr>
						<c:if test="${not empty listOrders }">
							<c:forEach var="cart" items="${listOrders}" varStatus="status">
								<input type="hidden" name="goods_price"
									value="${cart.goods_price }">
								<input type="hidden" name="goods_delprice"
									value="${cart.goods_delprice }">
								<input type="hidden" name="goods_qty" value="${cart.goods_qty }">
								<input type="hidden" name="cp_benefit"
									value="${cart.cp_benefit }">
								<input type="hidden" name="cart_id" value="${cart.cart_id }">
								<input type="hidden" name="goods_id" value="${cart.goods_id }">
								<tr>
									<td
										style="border-right: 1px solid #FFFFFF; width: 10%; vertical-align: middle;">
										<a data-toggle="modal" data-target=".bd-example-modal-lg">
									<img src="${path}/resources/images/goods/${cart.goods_img }" alt="${cart.goods_id}" class="card-img-top" style="width: 100%;">
								</a>
									<div class="modal fade bd-example-modal-lg" tabindex="-1"
									role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
										<div class="modal-dialog modal-lg" style="width: 100%; max-width: 450px;">
											<div class="modal-content">
											<%@ include file="view.jsp"%>
											</div>
										</div>
									</div> 
								</td>
									<td style="vertical-align: middle;">${cart.goods_name}<p>
											Color : ${cart.goods_color } / Size : ${cart.goods_size }</td>
									<td style="vertical-align: middle;">${cart.goods_qty }</td>
									<td style="vertical-align: middle;">${cart.goods_price }</td>
									<td style="vertical-align: middle;">${cart.cp_benefit*cart.goods_qty}</td>
									<td style="vertical-align: middle;">${cart.goods_delprice }</td>
									<td style="vertical-align: middle;">${cart.goods_price*cart.goods_qty-cart.cp_benefit*cart.goods_qty+cart.goods_delprice}</td>
									<td style="vertical-align: middle; width: 10%;"><a
										href="ordersDelete.do?cart_id=${cart.cart_id }"
										class="btn btn-danger">삭제</a></td>

								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty listOrders }">
							<tr>
								<td colspan="7">주문상품 내역이 아직없어요. 구매해주세요 ㅜㅜ</td>
							</tr>
						</c:if>
					</table>
				</div>
			</div>
			<div class="container3">
				<div class="container1_3">
					<h5>2. 쿠폰 할인</h5>
					<input type="hidden" name="cplist_id" id="cplist_id" value="">
					
					<table class="table" style="width: 100%;">
						<tr>
							<th style="width: 25%;">쿠폰 선택</th>
							<th><select onclick="coupon(this.value);" name="cp">
									<option value="0-0" style="text-align: center;" selected="selected">사용안함</option>
									<c:forEach var="couponlist" items="${listCoupon }"
										varStatus="status">
										<option
											value="${couponlist.cp_benefit}-${couponlist.cplist_id }">${couponlist.cp_id }(-${couponlist.cp_benefit }할인)</option>
									</c:forEach>
							</select></th>
						</tr>
						<tr>
							<th>마일리지 사용</th>
							<!-- 마일리지 숫자만 입력받게 함 -->
							<th> <input type="text" name="mem_usepoint" id="mem_usepoint"  oninput="mempoint()"  onKeypress="if(event.keyCode < 45 || event.keyCode > 57) event.returnValue = false;" style="IME-MODE:disabled;" >
							&nbsp;사용가능 마일리지 : ${member.mem_point }</th>
							
						</tr>
						<tr>
							<th colspan="2">
									- 마일리지 1 = 1원으로, 현금처럼 사용 가능합니다.
									<br> - 마일리지는 3000점 이상부터 사용가능합니다.
									<br> - 마일리지는 10점 단위로 사용 가능합니다.

								
							</th>
						</tr>
					</table>
					<h5 style="margin-top: 4%;">3. 주문자 정보</h5>
					<input type="checkbox" onclick="memajax();" name="chk">주문자
					정보와 동일
					<table class="table" style="width: 100%; float: left;">
						<tr>
							<th style="width: 25%;">이름 *</th>
							<th><input type="text" required="required" name="pay_name"
								id="mem_id"></th>
						</tr>
						<tr>
							<th>연락처 *</th>
							<th><input type="tel" required="required" name="pay_phone"
								id="mem_phone"></th>
						</tr>
						<tr>
							<th>이메일 *</th>
							<th><input type="email" required="required" name="pay_email"
								id="mem_email"></th>
						</tr>
						<tr>
							<th colspan="2">구매내역을 이메일과 SMS로 안내해 드립니다.
								<p>정확한 이메일과 휴대폰번호를 입력해 주십시오.
							</th>
						</tr>
					</table>
					<h5 style="margin-top: 4%;">4. 배송지 정보</h5>
					<input type="checkbox" onclick="memajax1();" name="chk1">주문자
					정보와 동일
					<table class="table" style="width: 100%;">
						<tr>
							<th style="width: 25%;">받는분 *</th>
							<th><input type="text" required="required" name="pay_rename"
								id="delmem_id"></th>
						</tr>
						<tr>
							<th>배송주소 *</th>
							<th><input type="text" required="required" name="pay_addr"
								id="delmem_addr"></th>
						</tr>
						<tr>
							<th>연락처 *</th>
							<th><input type="tel" required="required" name="pay_rephone"
								id="delmem_phone"></th>
						</tr>
						<tr>
							<th>배송 요청사항</th>
							<th><textarea rows="3" name="pay_required"></textarea></th>
						</tr>
						<tr>
							<th colspan="2">구매내역을 이메일과 SMS로 안내해 드립니다.
								<p>정확한 이메일과 휴대폰번호를 입력해 주십시오.
							</th>
						</tr>
					</table>
					<!-- <h5 style="margin-top: 4%;">5. 결제수단 선택</h5>
				<table class="table" style="width: 100%;">
					<tr><th colspan="2"><input type="radio" value="" checked="checked">무통장</th>
					</tr>
					<tr>
						<th style="width: 25%;">입금자명 *</th>
						<th><input type="text"></th>
					</tr>
					<tr>
						<th>입금은행 *</th>
						<th><input type="text"></th>
					</tr>
					<tr>
						<th colspan="2">
						· 무통장 입금은 입금 후 1시간 이내에 확인되며, 입금 확인시 배송이 이루어 집니다.
						· 무통장 주문 후 7일 이내에 입금이 되지 않으면 주문은 자동으로 취소됩니다. 한정 상품 주문 시 유의하여 주시기 바랍니다.
						· 사업자, 현금영수증카드, 휴대폰 번호가 유효하지 않으면 발급되지 않습니다.
						</th>
					</tr>
				</table> -->
				</div>
				<div class="container1_4">
					<h5>결제내역</h5>
					<table class="table"
						style="margin-top: 5%; border: 5px solid #1993A8;">
						<tr>
							<th style="width: 55%;">총 상품금액</th>
							<th><input name="total_sum" type="text" readonly
								style="width: 100%; margin: 0; padding: 0;" class="btn"></th>
						</tr>
						<tr>
							<th>총 상품할인</th>
							<th><input name="saleprice" type="text" readonly
								style="width: 100%; margin: 0; padding: 0;" class="btn"></th>
						</tr>
						<tr>
							<th>쿠폰할인</th>
							<th><input name="couponsale" type="text" readonly
								style="width: 100%; margin: 0; padding: 0;" class="btn"></th>
						</tr>
						<tr>
							<th>총 배송비</th>
							<th><input name="delprice" type="text" readonly
								style="width: 100%; margin: 0; padding: 0;" class="btn"></th>
						</tr>
						<tr>
							<th>총 결제금액</th>
							<th><input name="pay_total" type="text" readonly
								style="width: 100%; margin: 0; padding: 0;" class="btn"></th>
						</tr>
					</table>
					<table class="table">
						<!-- style="margin-top: 5%; border: 5px solid #1993A8;" -->
						<tr>
							<th colspan="2">
								<c:if test="${not empty listOrders }">
									<input type="submit" value="주문하기" id=""
									style="width: 100%; height: 100%;" class="btn btn-info">
								</c:if>
								<c:if test="${empty listOrders }">
								<input type="submit" value="주문하기" id="" disabled="disabled"
								style="width:100%; height: 100%;" class="btn btn-info">
								</c:if>
							</th>
						</tr>
					</table>
				</div>
			</div>
	
			<div align="center">
			<c:if test="${not empty listOrders }">
				<input type="submit" value="주문하기" id=""
					style="width: 100%; height: 100%;" class="btn btn-info">
			</c:if>
			<c:if test="${empty listOrders }">
				<input type="submit" value="주문하기" id="" disabled="disabled"
					style="width: 100%; height: 100%;" class="btn btn-info">
			</c:if>
			</div>
		</div>
	</form>
</body>
<%@ include file="../footer.jsp"%>
</html>