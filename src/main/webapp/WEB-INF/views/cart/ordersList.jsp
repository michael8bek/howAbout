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
	padding:0 5% 5% 5%;
	flex-direction: row;
	justify-content: center;
	align-items: center;
}
</style>
<script type="text/javascript">
	window.onload = function() {
		var sum = 0;
		var count = frm.goods_price.length;
		for(var i = 0; i< count; i++){
			sum += parseInt(frm.goods_price[i].value);
		}
		frm.total_sum.value = sum;
		frm.total_sum1.value = sum;
	}
</script>
</head>
<body>
<form name="frm" action="" method="post">
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
				<input type="hidden" name="goods_price" value="${cart.goods_price }">
					<tr>
						<td>${cart.goods_name}<p>
							Color : ${cart.goods_color } / Size : ${cart.goods_size }
						</td>
						<td>${cart.goods_qty }</td>
						<td>${cart.goods_price }</td>
						<td>상품할인</td>
						<td>${cart.goods_price }-상품할인</td>
						<td>${cart.goods_delprice }</td>
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
		</div>
		<div class="container3">			
			<div class="container1_3">
				<h5>2. 쿠폰/추가 할인</h5>
				<table class="table table-bordered" style="">
					<tr><th>쿠폰 선택</th>
						<th><select>
							<option value="">브론즈</option>
							<option value="">실버</option>
							<option value="">골드</option>
						</select></th>
					</tr>
					<tr>
						<th>쿠폰 입력</th>
						<th><input type="text">&nbsp;<a href="" class="btn success" style="color: #1993A8; border: 1px solid #1993A8;">사용하기</a></th>
					</tr>
					<tr>
						<th>마일리지 사용</th>
						<th><input type="text">&nbsp;<a href="" class="btn success" style="color: #1993A8; border: 1px solid #1993A8;">내 마일리지</a></th>
					</tr>
					<tr>
						<th colspan="2">
						- 단추는 스타일쉐어만의 포인트 제도입니다.<p>
						- 단추 1개 = 1원으로, 현금처럼 사용 가능합니다.<br>
						- 단추는 10개 단위로 사용 가능합니다.
						</th>
					</tr>
				</table>
				<h5 style="margin-top: 4%;">3. 주문자 정보</h5>
				<table class="table table-bordered" style="">
					<tr><th>이름 *</th>
						<th><input type="text"></th>
					</tr>
					<tr>
						<th>연락처 *</th>
						<th><input type="tel"></th>
					</tr>
					<tr>
						<th>이메일 *</th>
						<th><input type="email"></th>
					</tr>
					<tr>
						<th colspan="2">
						구매내역을 이메일과 SMS로 안내해 드립니다.<p>
						정확한 이메일과 휴대폰번호를 입력해 주십시오.
						</th>
					</tr>
				</table>
				<h5 style="margin-top: 4%;">4. 배송지 정보</h5><input type="checkbox">주문자 정보와 동일
				<table class="table table-bordered" style="">
					<tr><th>받는분 *</th>
						<th><input type="text"></th>
					</tr>
					<tr>
						<th>배송주소 *</th>
						<th><input type="tel"></th>
					</tr>
					<tr>
						<th>연락처 *</th>
						<th><input type="tel"></th>
					</tr>
					<tr>
						<th>배송 요청사항</th>
						<th><textarea rows="3"></textarea></th>
					</tr>
					<tr>
						<th colspan="2">
						구매내역을 이메일과 SMS로 안내해 드립니다.<p>
						정확한 이메일과 휴대폰번호를 입력해 주십시오.
						</th>
					</tr>
				</table>
				<h5 style="margin-top: 4%;">5. 결제수단 선택</h5>
				<table class="table table-bordered" style="">
					<tr><th colspan="2"><input type="radio" value="">무통장</th>
					</tr>
					<tr>
						<th>입금자명 *</th>
						<th><input type="tel"></th>
					</tr>
					<tr>
						<th>입금은행 *</th>
						<th><input type="tel"></th>
					</tr>
					<tr>
						<th colspan="2">
						· 무통장 입금은 입금 후 1시간 이내에 확인되며, 입금 확인시 배송이 이루어 집니다.
						· 무통장 주문 후 7일 이내에 입금이 되지 않으면 주문은 자동으로 취소됩니다. 한정 상품 주문 시 유의하여 주시기 바랍니다.
						· 사업자, 현금영수증카드, 휴대폰 번호가 유효하지 않으면 발급되지 않습니다.
						</th>
					</tr>
				</table>
			</div>
			<div class="container1_4">
			<h5>결제내역</h5>
			<table class="table table-striped"
						style="margin-top: 5%; border: 5px solid #1993A8;">
						<tr>
							<th style="width:55%; ">총 상품금액</th>
							<th><input name="total_sum" type="text" readonly style="width: 100%; margin: 0; padding: 0; " class="btn"></th>
						</tr>
						<tr>	
							<th>할인 금액</th>
							<th><input name="delprice" type="text" readonly style="width: 100%; margin: 0; padding: 0; " class="btn"></th>
						</tr>
						<tr>
							<th>총 배송비</th>
							<th></th>
						</tr>
						<tr>
							<th>총 결제금액</th>
							<th><input name="total_sum1" type="text" readonly style="width: 100%; margin: 0; padding: 0; " class="btn"></th>
						</tr>
					</table>
					<table class="table table-bordered">
						<!-- style="margin-top: 5%; border: 5px solid #1993A8;" -->
						<tr>
							<th colspan="2"><input type="submit" value="주문하기"
								style="width: 100%; height: 100%;" class="btn btn-info"></th>
						</tr>
					</table>
			</div>
			</div>
			
			<input type="submit" value="주문하기"
								style="width: 100%; height: 100%;" class="btn btn-info">
		</div>
</form>
</body>
<%@ include file="../footer.jsp"%>
</html>