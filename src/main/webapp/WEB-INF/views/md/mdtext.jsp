<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>


<!DOCTYPE html>
<html lang="en">
<script type="text/javascript">
/* 이미지 클릭시 상품 상세정보  */
$('.onlynumber').keyup(function () {
	 this.value = this.value.replace(/[^0-9]/g,'');
		});

$(document).on('click', '#card-img-top', function() {

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
<body>


	<!-- Page Content -->
	<div class="container">

		<%-- ${list.mdtext_content} --%>
		<c:forEach var="b" items="${best }">
			${b.mdtext_content}
		</c:forEach>
		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			MD 추천 <small></small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
			<li class="breadcrumb-item active">Portfolio 1</li>
		</ol>

		<!-- Project One -->
		<c:forEach var="list" items="${list }">
			<div class="row">
				<div class="col-md-7" align="center">
					<a data-toggle="modal" data-target=".bd-example-modal-lg"> 
					<img class="img-fluid rounded mb-3 mb-md-0" id="card-img-top"
						src="${path }/resources/images/goods/${list.mdtext_goods_img}"
						alt="${list.mdtext_goods_id}"></a>
						<script type="text/javascript">
						</script>
						<div class="modal fade bd-example-modal-lg" tabindex="-1"
									role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
										<div class="modal-dialog modal-lg" style="width: 100%; max-width: 450px;">
											<div class="modal-content">
											<%@ include file="view.jsp"%>
											</div>
										</div>
									</div> 
				</div>
				<div class="card col-md-5 h3">
					<h3 style="color: blue;">${list.mdtext_id }</h3>
					<p class="card-text">테마 : [ ${list.mdtext_type } ]</p>
					<br>
					<p style="font: oblique; font-size-adjust: none;font-size: medium;">추천 정보 :</p>
					<article class="card-text article"
						style="font-family: inherit; font-size: x-large; color: lime;">${list.mdtext_content }
					</article>
					<p/>
					<hr>
					<div style="font-size: smaller;">
						<table class="table">

							<tr>
								<td>추천인</td>
								<td><p>${list.mem_id }</p></td>
							</tr>
							<tr>
								<td>조회수</td>
								<td><p>${list.mdtext_readcount }</p></td>
							</tr>
							<tr>
								<td>등록일</td>
								<td>
									<p
										style="font-family: monospace; font-weight: bolder;">
										${list.mdtext_regdate }</p>
								</td>
							</tr>
						</table>
					</div>
					<a class="btn btn-primary" href="#">list <span
						class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>
			</div>
			<!-- /.row -->

			<hr>
		</c:forEach>

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

	<!-- footer -->
	<%@ include file="../footer.jsp"%>
	<!-- /.footer -->
</html>
