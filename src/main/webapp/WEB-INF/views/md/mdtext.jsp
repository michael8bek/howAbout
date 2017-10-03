<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<body>


	<!-- Page Content -->
	<div class="container">

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
				<div class="col-md-7">
					<a href="#"> <img class="img-fluid rounded mb-3 mb-md-0"
						src="http://placehold.it/700x300" alt="">
					</a>
				</div>
				<div class="col-md-5">
					<h3>${list.mdtext_id }</h3>
					<p>${list.mdtext_type }</p>
					<p>${list.mdtext_content }</p>
					<p>${list.mdtext_regdate }</p>
					<p>${list.mdtext_del }</p>
					<p>${list.mem_id }</p>
					<p>${list.mdtext_readcount }</p>
					<a class="btn btn-primary" href="#">list <span
						class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>
			</div>
			<!-- /.row -->
		
		<hr>
</c:forEach>
		<!-- Project Two -->
		<div class="row">
			<div class="col-md-7">
				<a href="#"> <img class="img-fluid rounded mb-3 mb-md-0"
					src="http://placehold.it/700x300" alt="">
				</a>
			</div>
			<div class="col-md-5">
				<h3>Project Two</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut,
					odit velit cumque vero doloremque repellendus distinctio maiores
					rem expedita a nam vitae modi quidem similique ducimus! Velit, esse
					totam tempore.</p>
				<a class="btn btn-primary" href="#">View Project <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
		<!-- /.row -->

		<hr>

		<!-- Project Three -->
		<div class="row">
			<div class="col-md-7">
				<a href="#"> <img class="img-fluid rounded mb-3 mb-md-0"
					src="http://placehold.it/700x300" alt="">
				</a>
			</div>
			<div class="col-md-5">
				<h3>Project Three</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Omnis, temporibus, dolores, at, praesentium ut unde repudiandae
					voluptatum sit ab debitis suscipit fugiat natus velit excepturi
					amet commodi deleniti alias possimus!</p>
				<a class="btn btn-primary" href="#">View Project <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
		<!-- /.row -->

		<hr>

		<!-- Project Four -->
		<div class="row">

			<div class="col-md-7">
				<a href="#"> <img class="img-fluid rounded mb-3 mb-md-0"
					src="http://placehold.it/700x300" alt="">
				</a>
			</div>
			<div class="col-md-5">
				<h3>Project Four</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Explicabo, quidem, consectetur, officia rem officiis illum aliquam
					perspiciatis aspernatur quod modi hic nemo qui soluta aut eius
					fugit quam in suscipit?</p>
				<a class="btn btn-primary" href="#">View Project <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
		<!-- /.row -->

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
