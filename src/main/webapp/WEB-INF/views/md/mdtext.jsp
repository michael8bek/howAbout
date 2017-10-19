<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!DOCTYPE html>
<html lang="en">
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
					<a href="#"> <img class="img-fluid rounded mb-3 mb-md-0"
						src="${path }/resources/images/goods/${list.mdtext_goods_img}"
						alt="">
					</a>
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
