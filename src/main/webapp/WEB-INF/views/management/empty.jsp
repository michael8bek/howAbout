<%@ include file="headerManage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="linkcss.jsp" %>
</head>
<body>
	<div id="wrapper">
		<%@ include file="menuManage.jsp"%>
		<!-- page -->
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">
					Empty Page <small>Create new page.</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Empty</a></li>
					<li class="active">Data</li>
				</ol>

			</div>
			<div id="page-inner">

				<div class="row">

					<div class="col-md-12">
						<div class="card">
							<div class="card-action">Empty Page</div>
							<div class="card-content">
								<p>Consectetur adipisicing elit, sed do eiusmod tempor
									incididunt ut labore et dolore magna aliqua. Ut enim ad minim
									veniam, quis nostrud exercitation ullamco laboris nisi ut
									aliquip ex ea commodo consequat. Duis aute irure dolor in
									reprehenderit in voluptate velit esse cillum dolore eu fugiat
									nulla pariatur.</p>
								<div class="clearBoth">
									<br />
								</div>

							</div>
						</div>

				<%@ include file="footerManage.jsp"%>
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->

	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="${path}/resources/assets/js/jquery-1.10.2.js"></script>

	<!-- Bootstrap Js -->
	<script src="${path}/resources/assets/js/bootstrap.min.js"></script>

	<script
		src="${path}/resources/assets/materialize/js/materialize.min.js"></script>

	<!-- Metis Menu Js -->
	<script src="${path}/resources/assets/js/jquery.metisMenu.js"></script>
	<!-- Morris Chart Js -->
	<script src="${path}/resources/assets/js/morris/raphael-2.1.0.min.js"></script>
	<script src="${path}/resources/assets/js/morris/morris.js"></script>


	<script src="${path}/resources/assets/js/easypiechart.js"></script>
	<script src="${path}/resources/assets/js/easypiechart-data.js"></script>

	<script
		src="${path}/resources/assets/js/Lightweight-Chart/jquery.chart.js"></script>

	<!-- Custom Js -->
	<script src="${path}/resources/assets/js/custom-scripts.js"></script>


</body>

</html>