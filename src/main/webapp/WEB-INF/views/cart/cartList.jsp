<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.container1{
		width: 100%;
		display: flex;
		
	}
	.container1_1{
		float:left;
		width: 65%;
		flex-direction: row;
		justify-content: center;
		align-items: center;
	}
	.container1_2{
		float: left;
		width: 30%;
		padding : 5%;
		margin-top: 10%;
		margin-left: 2%;
		flex-direction: row;
		justify-content: center;
		align-items: center;
	}
	table{
	}
</style>
<script type="text/javascript">
function ckeckAll(){
    if( $("#checkbox_1").is(':checked') ){
      $("input[name=chk]").prop("checked", true);
    }else{
      $("input[name=chk]").prop("checked", false);
    }
}
</script>
</head>
<body>
<div class="container">
<div class="row">
<div class="container1">
<div class="container1_1" >
<h2 class="text-primary" style="padding-top: 3%;">장바구니 목록</h2>
담아둔 상품이 품절됐을 시 장바구니에서 자동 삭제되오니 참고 바랍니다.<p>
<table class="table table-bordered">
	<tr><th colspan="3"><input id="checkbox_1" type="checkbox" onclick="ckeckAll()" value="">전체선택</th>
		<th class="">선택삭제</th>
		</tr>
<%-- <c:forEach var="cart" items="${listCart }"> --%>
	<tr style="background-color: #E7E7E7;"><th style="width: 40%">주문상품</th>
		<th>상품금액</th>
		<th>배송비</th>
		<th style="width: 15%">주문관리</th></tr>

 <c:forEach var="goods" items="${listGoods }"> 
	<tr><td><input type="checkbox" name="chk">${goods.goods_name}</td>
		<td>${goods.goods_price}</td>
		<td>2500</td>
		<td><input type="submit" value="바로구매" class="btn" style="background-color: #63D297"><br>
			<input type="submit" value="삭제" class="btn btn-danger">
		</td></tr>
	<tr><th colspan="4">상품가격 + 배송비  = 총 가격</th></tr>
<%-- </c:forEach> --%></c:forEach>
</table>
</div>
<div class="container1_2">
<table class="table table-striped" style="margin-top: 5%; border: 5px solid #1993A8;">
	<tr><th>총 상품금액</th><th>99999원</th></tr>
	<tr><th>총 배송비</th><th>(+)2500원</th></tr>
	<tr><th>할인 금액</th><th>(-)원</th></tr>
	<tr><th>총 결제금액</th><th>12500원</th></tr>
</table>
<table class="table table-bordered"> <!-- style="margin-top: 5%; border: 5px solid #1993A8;" -->
	<tr><th colspan="2"><input type="submit" value="구매하기" style="width: 100%;height: 100%;" class="btn btn-info"></th></tr>
</table>
</div></div>
</div></div></body>
<%@ include file="../footer.jsp" %>
</html>