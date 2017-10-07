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
				<h1 class="page-header">Charts</h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Charts</a></li>
					<li class="active">Data</li>
				</ol>

			</div>
			<div id="page-inner">

				<div class="row">


					<div class="col-md-6 col-sm-12 col-xs-12">
						<div class="card">
							<div class="card-action">Bar Chart</div>
							<div class="card-content">
								<div id="morris-bar-chart"></div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-12 col-xs-12">
						<div class="card">
							<div class="card-action">Area Chart</div>
							<div class="card-content">
								<div id="morris-area-chart"></div>
							</div>
						</div>
					</div>

				</div>
				<!-- /. ROW  -->
				<div class="row">

					<div class="col-md-6 col-sm-12 col-xs-12">
						<div class="card">
							<div class="card-action">Line Chart</div>
							<div class="card-content">
								<div id="morris-line-chart"></div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-12 col-xs-12">
						<div class="card">
							<div class="card-action">Donut Chart</div>
							<div class="card-content">
								<div id="morris-donut-chart"></div>
							</div>
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