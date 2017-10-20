<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!DOCTYPE html>
<html lang="en">

<body>
	<!-- Page Content -->
	<div class="container">
		<%-- ${list.mdtext_content} --%>
		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			MD 추천 <small></small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="main.do">Home</a></li>
			<li class="breadcrumb-item active">Portfolio 1</li>
		</ol>

		<!-- Project One -->

		<!-- Project Two -->
		<form action="mdtextInsert.do?mdtext_goods_id=selId">
			<div class="row">
				<div class="col-md-5">
					<div class="image">
						<img class="img-fluid rounded mb-3 mb-md-0" id="goodsImg" 
							src="http://howmadareyou.com/wp-content/themes/MAD/images/default_profile_image.png"
							style="width: 100%">
						<!-- <input hidden="true" id="goodsId" value="a"> -->
						
					</div>
				</div>
				<div class="col-md-7">
					<h3 class="text">MD추천 입력</h3>
					<table class="table">
						<tr>
							<td>추천타입</td>
							<td colspan="2"><input style="width: 100%" type="text" id="mdtext_type" required="required"
								name="mdtext_type" placeholder="추천 테마를 입력하세요" ></td>
						</tr>
						<tr>
							<td>추천상품</td>
							<td><select onchange="changeFunc();" id="selectBox" name="mdtext_goods_img">

									<optgroup label="[ 추천 상품을 선택하세요 ]">
										<c:forEach var="list" items="${list }">
											<option class="card card-list" value="${list.goods_img }">상품${list.goods_id }
												[ ${list.goods_name } ]</option>
										</c:forEach>
									</optgroup>
							</select>
							
<!--						 <input class="btn btn" id="bt1" data-moon="112" type="button" value="이미지보기"></td> --> 
							   <input class="btn btn" id="bt1" type="button" value="이미지보기"></td>
						</tr>
						<tr>
							<td>추천내용</td>
							<td colspan="2"><textarea style="width: 100%" id="mdtext_content" cols="30" rows="10"
									name="mdtext_content" placeholder="추천내용을 입력하세요" required="required"></textarea></td>
					</table>
					<div class="card">
						<input class="btn btn-primary" type="submit" value="MD추천 입력"> <span
							class="glyphicon glyphicon-chevron-right"></span>
					</div>
				</div>
			</div>
		</form>
		<!-- /.row -->

		<hr>

		<hr>

		<!-- Pagination -->
		<ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span> <span
					class="sr-only">Previous</span>
			</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
					class="sr-only">Next</span>
			</a></li>
		</ul>

	</div>
	<!-- /.container -->
	
	<!-- 추천상품 이미지 보이기 -->
	<script type="text/javascript">
		$("#bt1")
				.bind(
						"click",
						function changeFunc() {
							/* var jiin = $(this).data('moon'); */
							var selectBox = document
									.getElementById("selectBox");
							var selectedImg = selectBox.options[selectBox.selectedIndex].value;
							/* selectedImg = selectedImg.split(" ");
							var selImg = selectedImg.slice(0,1);
							var selId = selectedImg.slice(1,2); */
							/* ${mdtext_goods_img} = selImg;
							${mdtext_goods_id} = selId; */
							/* alert("img = "+selImg+" id = "+selId) */
							$("#goodsImg").attr(
									"src",
									"${path }/resources/images/goods/"
											+ selectedImg);
						});
	</script>
	<!-- /.추천상품 이미지 보이기 -->
	
	<!-- footer -->
	<%@ include file="../footer.jsp"%>
	<!-- /.footer -->
</html>
