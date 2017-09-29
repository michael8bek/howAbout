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
			Pricing <small>Subheading</small>
		</h1>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
			<li class="breadcrumb-item active">Pricing</li>
		</ol>

		<!-- Content Row -->
		<div class="row">
			<div class="col-lg-4 mb-4">
				<div class="card h-100">
					<h3 class="card-header">회원가입</h3>
					<form action="join.do" method="post">
						<ul class="list-group list-group-flush">
							<li class="list-group-item">아이디 <input type="text"
								name="mem_id" required="required" autofocus="autofocus"></li>
							<li class="list-group-item">비밀번호<input type="password"
								name="mem_pw" required="required"></li>
							<li class="list-group-item">이름<input type="text"
								name="mem_name" required="required"></li>
							<li class="list-group-item">이메일<input type="email"
								name="mem_email" required="required"></li>
							<li class="list-group-item">생일<input type="date"
								name="mem_birth" required="required"></li>
							<li class="list-group-item">전화번호<input type="text"
								name="mem_phone" required="required"></li>
							<li class="list-group-item">주소<input type="text"
								name="mem_addr" required="required"></li>
							<li class="list-group-item"><input type="submit" value="가입"
								class="btn btn-primary"></li>
						</ul>
					</form>
				</div>
			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->
		<!-- footer -->
		<%@ include file="../footer.jsp"%>
		<!-- /.footer -->
</html>
