<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
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
			}
		});
	});
</script>
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
						<a data-toggle="modal" data-target=".bd-example-modal-lg"><img
							class="card-img-top"
							src="${path}/resources/images/goods/${goods.goods_img}"
							alt="${goods.goods_id}"></a>
						<div class="modal fade bd-example-modal-lg" tabindex="-1"
							role="dialog" aria-labelledby="myLargeModalLabel"
							aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<%@ include file="view.jsp"%>
								</div>
							</div>
						</div>
						<div class="card-body">
							<h4 class="card-title" id="${goods.goods_id}">${goods.goods_name}</h4>
							<p class="card-text">${goods.goods_price}</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
<%@ include file="../footer.jsp"%>
</html>
