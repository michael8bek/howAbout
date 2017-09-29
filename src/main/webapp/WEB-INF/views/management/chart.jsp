<%@ include file="headerManage.jsp"%>
<!DOCTYPE html>
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
</body>

</html>