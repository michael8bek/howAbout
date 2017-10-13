<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container1 {
	width: 100%;
	display: flex;
}

.container1_1 {
	float: left;
	width: 65%;
	flex-direction: row;
	justify-content: center;
	align-items: center;
}
.container1_2 {
	float: left;
	width: 35%;
	padding: 5%;
	margin-top: 3.5%;	
	flex-direction: row;
	justify-content: center;
	align-items: center;
}
</style>
<script type="text/javascript">
/* 개별 체크박스 클릭시 */
  function itemSum() {
	var sum =0;
	var count = frm.chk.length;
	if (count == undefined) {
		sum += parseInt(frm.goods_price.value);
	} else {
		for (var i = 0; i < count; i++) {
			if (frm.chk[i].checked==true) {
				 sum += parseInt(frm.goods_price[i].value);
			}
		}
	}
	frm.total_sum.value = sum;
	 frm.total_sum1.value = sum; 
}
  /* 전체선택 체크박스 클릭시 */
function ckeckAll() {
	var sum = 0;
	var sum1 = 0;
	var count = frm.chk.length;
	if (count == undefined) {
		sum += parseInt(frm.goods_price.value);
	}
	if ($("#checkbox_1").is(':checked')) {
			$("input[name=chk]").prop("checked", true);
		for (var i = 0; i < count; i++) {
			sum += parseInt(frm.goods_price[i].value);
		}
		frm.total_sum.value = sum;
		 frm.total_sum1.value = sum; 
	}else {
		$("input[name=chk]").prop("checked", false);
		frm.total_sum.value ="";		
		frm.total_sum1.value ="";
		frm.delprice.value="";
	}
}  
 function mySubmit(index) {
	  var count = frm.chk.length;
	  var ck = false;
	  
	  for (var i = 0; i < frm.chk.length;i++) {
		  if (frm.chk[i].checked==true) {
			  ck = true; break;
		  }
	  }
	  if (count == undefined) {
		  ck=true;
	  }
	  if (ck==false) {
		  alert("선택후 작업하세요");
		  return false;
	  } 
      if (index == 1) {
        document.frm.action='delSelect.do';
      }   else if (index == 2) {
          document.frm.action='ordersSelect.do';
       }  else{}
} 


</script>
</head>
<body>
<form name="frm" action="" method="post">
	<div class="container">
			<div class="container1">
				<div class="container1_1">
					<h2 class="text-primary" style="padding-top: 3%;">장바구니 목록</h2>
					담아둔 상품이 품절됐을 시 장바구니에서 자동 삭제되오니 참고 바랍니다.
					<p>
					<table class="table table-bordered" style="">
						<tr>
							<th colspan="3"><input id="checkbox_1" type="checkbox"
								onclick="ckeckAll()" value="">전체선택</th>
							<th><button onclick="mySubmit(1)" class="btn btn-info" style="">선택삭제</button></th>
						</tr>
						
							<tr style="background-color: #E7E7E7;">
								<th style="width: 40%">주문상품</th>
								<th>상품금액</th>
								<th>배송비</th>
								<th style="width: 15%">주문관리</th>
							</tr>

     					
						<c:if test="${not empty listCart }">
						<c:forEach var="cart" items="${listCart }">
							<tr>
								<td><input type="checkbox" name="chk"
								value="${cart.cart_id}" onclick="itemSum()">${cart.goods_name}<p>
								<input type="hidden" name="goods_price" value="${cart.goods_price }">
						  		&nbsp;&nbsp;&nbsp;Color : ${cart.goods_color } / Size : ${cart.goods_size }
									</td>
								<td>${cart.goods_price}</td>
								<td>${cart.goods_delprice}</td>
								<td><a href="buyOne.do?cart_id=${cart.cart_id }" class="btn btn-success" style="width: 100%; ">바로구매</a><p>
									<a href="cartDelete.do?cart_id=${cart.cart_id }" class="btn btn-danger" style="width: 100%; ">삭제</a>
								</td>
							</tr>
							<tr style="text-align:right;">
								<th colspan="4" style="text-align:right;">상품 ${cart.goods_price}원 + 배송
									${cart.goods_delprice} =
									${cart.goods_price+cart.goods_delprice}원</th>
							</tr>
						</c:forEach>
						</c:if>
						<c:if test="${empty listCart }">
							<tr>
								<td colspan="4">장바구니에 담긴 상품이 없습니다.</td>
							</tr>
						</c:if>
					</table>
				</div>
				<div class="container1_2">
					<table class="table table-striped"
						style="margin-top: 5%; border: 5px solid #1993A8;">
						<tr>
							<th style="width:55%; ">총 상품금액</th>
							<th><input name="total_sum" type="text" readonly style="width: 100%; margin: 0; padding: 0; " class="btn"></th>
						</tr>
						<tr>	
							<th>할인 금액</th>
							<th></th>
						</tr>
						<tr>
							<th>총 배송비</th>
							<th><input name="delprice" type="text" readonly style="width: 100%; margin: 0; padding: 0; " class="btn"></th>
						</tr>
						<tr>
							<th>총 결제금액</th>
							<th><input name="total_sum1" type="text" readonly style="width: 100%; margin: 0; padding: 0; " class="btn"></th>
						</tr>
					</table>
					<table class="table table-bordered">
						<!-- style="margin-top: 5%; border: 5px solid #1993A8;" -->
						<tr>
							<th colspan="2">
							<button onclick="mySubmit(2)" class="btn btn-info" style="width: 100%; height: 100%;">구매하기</button></th>
						</tr>
					</table>
				</div>
			</div>
		</div>
</form>
</body>
<%@ include file="../footer.jsp"%>
</html>