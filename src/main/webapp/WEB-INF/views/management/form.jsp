<%@ include file="headerManage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="linkcss.jsp"%>
</head>
<body>
	<div id="wrapper">
		<%@ include file="menuManage.jsp"%>
		<!-- page -->
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">Form Inputs Page</h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Forms</a></li>
					<li class="active">Data</li>
				</ol>

			</div>

			<div id="page-inner">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-action">Basic Form Elements</div>
							<div class="card-content">
								<form class="col lg12">
									<div class="row">
										<div class="input-field col s6">
											<input placeholder="Placeholder" id="first_name" type="text"
												class="validate"> <label for="first_name">First
												Name</label>
										</div>
										<div class="input-field col s6">
											<input id="last_name" type="text" class="validate"> <label
												for="last_name">Last Name</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input disabled value="I am not editable" id="disabled"
												type="text" class="validate"> <label for="disabled">dis</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="password" type="password" class="validate">
											<label for="password">Password</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="email" type="email" class="validate"> <label
												for="email">Email</label>
										</div>
									</div>
									<div class="row">
										<div class="col s12">
											This is an inline input field:
											<div class="input-field inline">
												<input id="email" type="email" class="validate"> <label
													for="email" data-error="wrong" data-success="right">Email</label>
											</div>
										</div>
									</div>
								</form>
								<div class="clearBoth"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="card">
							<div class="card-action">Basic Form Elements</div>
							<div class="card-content">
								<form class="col s12">
									<div class="row">
										<div class="input-field col s6">
											<i class="material-icons prefix">account_circle</i> <input
												id="icon_prefix" type="text" class="validate"> <label
												for="icon_prefix">First Name</label>
										</div>
										<div class="input-field col s6">
											<i class="material-icons prefix">phone</i> <input
												id="icon_telephone" type="tel" class="validate"> <label
												for="icon_telephone">Telephone</label>
										</div>
									</div>
								</form>

								<form class="col s12">
									<div class="row">
										<div class="input-field col s12">
											<input id="email" type="email" class="validate"> <label
												for="email" data-error="wrong" data-success="right">Email</label>
										</div>
									</div>
								</form>

								<form class="col s12">
									<div class="row">
										<div class="input-field col s12">
											<textarea id="textarea1" class="materialize-textarea"></textarea>
											<label for="textarea1">Textarea</label>
										</div>
									</div>
								</form>

								<!-- Switch -->
								<div class="switch">
									<label> Off <input type="checkbox"> <span
										class="lever"></span> On
									</label>
								</div>

								<!-- Disabled Switch -->
								<div class="switch">
									<label> Off <input disabled type="checkbox"> <span
										class="lever"></span> On
									</label>
								</div>
								<div class="clearBoth"></div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="card">
							<div class="card-action">Basic Form Elements</div>
							<div class="card-content">

								<form action="#">
									<p>
										<input name="group1" type="radio" id="test1" /> <label
											for="test1">Red</label>
									</p>
									<p>
										<input name="group1" type="radio" id="test2" /> <label
											for="test2">Yellow</label>
									</p>
									<p>
										<input class="with-gap" name="group1" type="radio" id="test3" />
										<label for="test3">Green</label>
									</p>
									<p>
										<input name="group1" type="radio" id="test4"
											disabled="disabled" /> <label for="test4">Brown</label>
									</p>
								</form>
								<form action="#">
									<p>
										<input type="checkbox" id="test5" /> <label for="test5">Red</label>
									</p>
									<p>
										<input type="checkbox" id="test6" checked="checked" /> <label
											for="test6">Yellow</label>
									</p>
									<p>
										<input type="checkbox" class="filled-in" id="filled-in-box"
											checked="checked" /> <label for="filled-in-box">Filled
											in</label>
									</p>
									<p>
										<input type="checkbox" id="indeterminate-checkbox" /> <label
											for="indeterminate-checkbox">Indeterminate Style</label>
									</p>
									<p>
										<input type="checkbox" id="test7" checked="checked"
											disabled="disabled" /> <label for="test7">Green</label>
									</p>
									<p>
										<input type="checkbox" id="test8" disabled="disabled" /> <label
											for="test8">Brown</label>
									</p>
								</form>
							</div>

						</div>
						<!-- /.row (nested) -->
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.col-lg-12 -->


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