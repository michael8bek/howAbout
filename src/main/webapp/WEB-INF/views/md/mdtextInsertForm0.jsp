<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
</head>
<body>
	<div class="container">
		<h1 class="mt-4 mb-3">
			테스트 <small>자바스크립트</small>
		</h1>
		<div class="card">
			<div class="text">테스트</div>
			<img id="daehun" src="${path }/resources/images/goods/Blank.png" style="width: 20%">
		</div>
		<div class="card">
			<input id="bt1" type="button" value="테스트">
		</div>
		
			<div class="image">
				<select onchange="changeFunc();" id="selectBox">
				
					<optgroup label="[ 추천 상품을 선택하세요 ]">
					<c:forEach var="list" items="${list }">
						<option class="card card-list" value="${list.goods_img }">상품${list.goods_id } [ ${list.goods_name } ]</option>
					</c:forEach>
					</optgroup>
				</select>
				
			</div>
		
	</div>


	<script type="text/javascript">
		$("#bt1")
				.bind(
						"click",
						function changeFunc() {
							var selectBox = document.getElementById("selectBox");
							var selectedImg = selectBox.options[selectBox.selectedIndex].value;
							/* $(
									"<img style='width: 20%' src='${path }/resources/images/goods/selectedImg'>") */
							$("#daehun").attr("src","${path }/resources/images/goods/"+selectedImg);
						});
	</script>

	<!-- footer -->
	<%@ include file="../footer.jsp"%>
	<!-- /.footer -->
</body>
</html>
