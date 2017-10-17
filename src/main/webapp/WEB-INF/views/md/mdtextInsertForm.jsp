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
		<form action="">
		<div class="row">
			<div class="col-md-5">
				<a href="#"> <img class="img-fluid rounded mb-3 mb-md-0"
					src="http://placehold.it/700x300" alt="">
				</a>
			</div>
			<div class="col-md-7">
				<h3>MD추천 입력</h3>
				<table class="table">
				<tr>
					<td >추천타입</td><td><input type="text" id="mdtext_type" name="mdtext_type" ></td>
					</tr><tr>
					<td >추천상품</td><td><section><select>
					<c:forEach var="list" items="${list }">
					<option name="${list.goods_id }" value="${list.goods_id }">${list.goods_id }</option> 
					</c:forEach>
					</select>
					</section> </td>
					
					</tr><tr>
					<td >추천내용</td><td><textarea id="mdtext_content" name="mdtext_content" ></textarea></td>
				</table>
				<a class="btn btn-primary" href="mdtextInsert.do">MD추천 입력 <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
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

	<!-- footer -->
	<%@ include file="../footer.jsp"%>
	<!-- /.footer -->
</html>
