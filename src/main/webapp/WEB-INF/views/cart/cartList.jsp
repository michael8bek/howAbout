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
.goods_qty1:hover {
	cursor:pointer;
	text-decoration: none;
}
</style>
<script type="text/javascript">

	/*개별 체크 박스 클릭시  */
  function itemSum() {
	var sum =0;
	var sum1 = 0;
	var count = frm.chk.length;
	if (count == undefined) {
		if($("input[name=chk]").prop("checked")){
		sum += parseInt(frm.goods_price.value*frm.goods_qty.value);
		sum1 += parseInt(frm.goods_delprice.value);
		}else{
			sum = "";
			sum1 = "";
		}
			
	} else {
		for (var i = 0; i < count; i++) {
			if (frm.chk[i].checked==true) {
				 sum += parseInt(frm.goods_price[i].value*frm.goods_qty[i].value);
				 sum1 += parseInt(frm.goods_delprice[i].value);
			}
		}
	}
	if(sum >= 50000){
		sum1 = "무료배송";
		frm.total_sum.value = sum;
		frm.delprice.value = sum1;
		frm.total_sum1.value = sum;
	}else{
		frm.total_sum.value = sum;
		frm.delprice.value = sum1;
		frm.total_sum1.value = sum+sum1;
	}
	
	
}
  /* 전체선택 체크박스 클릭시 */
function ckeckAll(index) {
	var sum = 0;
	var sum1 = 0;
	var count = frm.chk.length;
	if (count == undefined) {
		sum += parseInt(frm.goods_price.value*frm.goods_qty.value);
		sum1 += parseInt(frm.goods_delprice.value);
	}
	if ($("#checkbox_1").is(':checked')) {
			$("input[name=chk]").prop("checked", true);
		for (var i = 0; i < count; i++) {
			sum += parseInt(frm.goods_price[i].value*frm.goods_qty[i].value);
			sum1 += parseInt(frm.goods_delprice[i].value);
		}
		if(sum >= 50000){
			sum1 = "무료배송";
			frm.total_sum.value = sum;
			frm.delprice.value = sum1;
			frm.total_sum1.value = sum;
		}else{
			frm.total_sum.value = sum;
			frm.delprice.value = sum1;
			frm.total_sum1.value = sum+sum1;
		}
		
	}else {
		$("input[name=chk]").prop("checked", false);
		frm.total_sum.value ="";
		frm.total_sum1.value ="";
		frm.delprice.value = "";
	}
}

 /* 클릭시 수량 변경 -> 수량에 따라 가격 변동  */
function click_count(idx, n) {
	var num = parseInt($("#numberUpDown" + idx).val(), 10) + n;
	var num1 = parseInt($("#stock_qty" + idx).val(), 10);
	if(num<1){
		alert('더이상 줄일수 없습니다.');
		num = 1;
	} else if(num>num1) {
		alert('더이상 늘릴수 없습니다.');
		num = num1;
	}
	$("#numberUpDown" + idx).val(num);
	var sum =0;
	var sum1 = 0;
	var count = frm.chk.length;
	if (count == undefined) {
		sum += parseInt(frm.goods_price.value*frm.goods_qty.value);
		sum1 += parseInt(frm.goods_delprice.value);

	} else {
		for (var i = 0; i < count; i++) {
			if (frm.chk[i].checked==true) {
				 sum += parseInt(frm.goods_price[i].value*frm.goods_qty[i].value);
				 sum1 += parseInt(frm.goods_delprice[i].value);
			}
		}
	}
	if(sum >= 50000){
		sum1 = "무료배송";
		frm.total_sum.value = sum;
		frm.delprice.value = sum1;
		frm.total_sum1.value = sum;
	}else{
		frm.total_sum.value = sum;
		frm.delprice.value = sum1;
		frm.total_sum1.value = sum+sum1;
	}
	
}
 /* 장바구니 팝업시 상품이 모두 체크 */
  window.onload = function() {
	var sum = 0;
	var sum1 = 0;
	var count = frm.chk.length;
	$("input[name=chk]").prop("checked", true);
	if (count == undefined) {
		sum += parseInt(frm.goods_price.value*frm.goods_qty.value);
		sum1 += parseInt(frm.goods_delprice.value);
	}else{
		for (var i = 0; i < count; i++) {
			sum += parseInt(frm.goods_price[i].value*frm.goods_qty[i].value);
			sum1 += parseInt(frm.goods_delprice[i].value);
		}
	}
	if(sum >= 50000){
		sum1 = "무료배송";
		frm.total_sum.value = sum;
		frm.delprice.value = sum1;
		frm.total_sum1.value = sum;
	}else{
		frm.total_sum.value = sum;
		frm.delprice.value = sum1;
		frm.total_sum1.value = sum+sum1;
	}
 	

}

  /*선택된 항목 삭제,구매  */
  function mySubmit(index) {
 	  var count = frm.chk.length;
 	  var ck = false;
 	  var num = 0;
 	  for (var i = 0; i < frm.chk.length;i++) {
 		  if (frm.chk[i].checked==true) {
 			  num=i;
 			  ck = true; break;
 		  }
 	  }
 	  if (count == undefined){
 		 if($("input[name=chk]").prop("checked")){
 		 if (index == 1){
 	        document.frm.action='delSelect.do';
 		 }else if (index == 2){
 	     	document.frm.action='ordersSelect.do';
 	 	 }else if (index == 3){
 	   		document.frm.action='buyOne.do?cart_id='+frm.chk.value+'&goods_qty='+frm.goods_qty.value;
	     }
 		 ck = true;
 	  }else ck=false;
 	  }
 	  if (ck==false) {
 		  alert("선택후 작업하세요");
 		  return false;
 	  }
       if (index == 1){
         document.frm.action='delSelect.do';
       }else if (index == 2){
         document.frm.action='ordersSelect.do';
   	  }else if (index == 3){
   		document.frm.action='buyOne.do?cart_id='+frm.chk[num].value+'&goods_qty='+frm.goods_qty[num].value;
   	  }else{}

 }

</script>
</head>
<body>
<form name="frm" action="" method="post" >
	<div class="container">
			<div class="container1">
				<div class="container1_1">
					<h2 class="text-primary" style="padding-top: 3%;">장바구니 목록</h2>
					담아둔 상품이 품절됐을 시 장바구니에서 자동 삭제되오니 참고 바랍니다.
					<p>
					<table class="table" style="width: 100%; ">
						<tr>
							<th colspan="5"  style="border-top: 1px solid #FFFFFF;"><input id="checkbox_1" type="checkbox" checked="checked"
								onclick="ckeckAll()" value="">전체선택</th>
							<th  style="border-top: 1px solid #FFFFFF;"><button onclick="mySubmit(1)" class="btn btn-info" style="">선택삭제</button></th>
						</tr>

							<tr style="background-color: #E7E7E7;">
								<th colspan="2"></th>
								<th >주문상품</th>
								<th style="text-align: center;">상품금액</th>
								<th style="text-align: center;">배송비</th>
								<th style="width: 15%;text-align: center;">주문관리</th>
							</tr>

						<c:if test="${not empty listCart }">
						<c:forEach var="cart" items="${listCart}" varStatus="status">
						<c:forEach var="stock" items="${listStock }" varStatus="status">
						<c:if test="${cart.goods_id==stock.goods_id && stock.stock_qty>0 }">
						<input type="hidden" name="goods_qty${status.count}" value="${cart.goods_qty }" id="goods_qty${status.count}">
						<input type="hidden" name="goods_price" value="${cart.goods_price}" id="goods_price">
						<input type="hidden" name="cart_id" value="${cart.cart_id }">
						<input type="hidden" name="goods_delprice" value="${cart.goods_delprice }">
						<input type="hidden" name="stock_qty${status.count}" value="${stock.stock_qty}" id="stock_qty${status.count}">
							<tr style="width: 100%; vertical-align: middle;">
								<td style="border-right: 1px solid #FFFFFF; vertical-align: middle;">
								<input type="checkbox" name="chk" value="${cart.cart_id}" onclick="itemSum()"></td>
								<td style="border-right: 1px solid #FFFFFF; width: 15%; vertical-align: middle;"><img src="resources/images/goods/${cart.goods_img }" style="width:100%;"></td>
								<td style="width:40%; ">${cart.goods_name}<p>
						  		Color : ${cart.goods_color } / 
						  		<c:if test="${cart.goods_size ==0 }"> Size : Free<p></c:if>
						  		<c:if test="${cart.goods_size > 0 }"> Size : ${cart.goods_size }<p></c:if>
						  		<!-- 수량 -->
						  		<a onclick="click_count(${status.count}, 1)" class="goods_qty1" id="">▲</a>
						  		<input type="text" class="qty1" id="numberUpDown${status.count }" name="goods_qty" value="${cart.goods_qty }" style="width: 11%; text-align: center;">
						  		<a onclick="click_count(${status.count}, -1)"  class="goods_qty1" id="" >▼</a>
								</td>
								<td style="width: 15%; vertical-align: middle; text-align: center;">${cart.goods_price}</td>
								<td style="width: 15%; vertical-align: middle; text-align: center;">${cart.goods_delprice }</td>
								<td style="vertical-align: middle; text-align: center;"><button onclick="mySubmit(3)" style="width: 100%;" class="btn btn-warning">바로구매</button><p>
									<a href="cartDelete.do?cart_id=${cart.cart_id }" class="btn btn-danger" style="width: 100%; ">삭제</a>
								</td>

							</tr>
						</c:if>
						<c:if test="${cart.goods_id==stock.goods_id && stock.stock_qty==0}">
							<tr>
								<td style="border-right: 1px solid #FFFFFF;"></td>
								<td style="border-right: 1px solid #FFFFFF;  width: 15%;"></td>
								<td style="width:40%;">&nbsp;&nbsp;&nbsp;${cart.goods_name}<p>
						  		&nbsp;&nbsp;&nbsp;Color : ${cart.goods_color } / Size : ${cart.goods_size }
									</td>
								<td colspan="2">
									재고가없어요 ㅜㅜ
								</td>
								<td>
									<a href="cartDelete.do?cart_id=${cart.cart_id }" class="btn btn-danger" style="width: 100%; ">삭제</a>
								</td>
							</tr>

						</c:if>
						</c:forEach>
						</c:forEach>
						</c:if>
						<c:if test="${empty listCart }">
							<tr style="width: 100%; vertical-align: middle;">
								<td colspan="6" style="width: 100%; vertical-align: middle;">장바구니에 담긴 상품이 없습니다.</td>
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
							<th>총 배송비</th>
							<th><input name="delprice" type="text" readonly style="width: 100%; margin: 0; padding: 0; " class="btn"></th>
						</tr>
						<tr>
							<th>총 결제금액</th>
							<th><input name="total_sum1" type="text" readonly style="width: 100%; margin: 0; padding: 0; " class="btn"></th>
						</tr>
					</table>
					<table class="table table-bordered">
						<tr>
							<th colspan="2" style="border: 1px solid #FFFFFF;">
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
