<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body>
	<!-- test -->

	<!-- Page Content -->
	<div class="container">

		<!-- <h1 class="my-4">MAIN</h1> -->
		<p>
			<!-- Marketing Icons Section -->
		<div class="row">
			<div class="col-lg-12 mb-12">
				<div class="card h-200">
					<h4 class="card-header">MD추천</h4>
					<div class="card-body">
						<a href="listMdtext.do"> <img
							src="http://www.bangaloreshoppingfestival.com/Images/Shopping.jpg"
							width="100%" alt="쇼핑추천">

						</a>
						<!-- 추천수 가장많은 내용을 보여준다. 왜 안나와 ㅜㅜ -->
						<%-- <p class="card-text">${best[0].mdtext_content}</p> --%>
					</div>
					<div class="card-footer">
						<!-- 	<a href="listMdtext.do" class="btn btn-primary" style="width: 100%">추천보기</a> -->
					</div>
				</div>
			</div>

			<!-- /.row -->
			<div>
				<p>
					<br>
				<hr>
				</p>
			</div>
			<!-- Portfolio Section -->
			<h3>NEW ARRIVED</h3>

			<div class="row">
				<c:forEach var="goods" items="${list }" begin="0" end="5" step="1">
					<div class="col-lg-4 col-sm-6 portfolio-item">
						<div class="card h-100">
							<!--img size 700x400 -->
							<a href="goodsList.do"><img class="card-img-top"
								src="${path}/resources/images/goods/${goods.goods_img}" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">${goods.goods_name }</a>
								</h4>
								<p class="card-text">${goods.goods_smc }</p>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- <div class="col-lg-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a href="#"><img class="card-img-top"
							src="http://www.dineout.co.in/blog/wp-content/uploads/2017/04/ugesh-sarcar-700x400.jpg"
							alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">SUB FOURTH</a>
							</h4>
							<p class="card-text">SUB FOURTH TEXT</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a href="#"><img class="card-img-top"
							src="http://apaixonadosporseries.com.br/wp-content/arquivos/2017/03/Reign-4x05-mary-dunrley.jpg"
							alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">SUB 5TH</a>
							</h4>
							<p class="card-text">SUB 5TH TEXT</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a href="#"><img class="card-img-top"
							src="http://apaixonadosporseries.com.br/wp-content/arquivos/2017/03/Reign-4x05-mary-dunrley.jpg"
							alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">SUB 5TH</a>
							</h4>
							<p class="card-text">SUB 5TH TEXT</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a href="#"><img class="card-img-top"
							src="http://apaixonadosporseries.com.br/wp-content/arquivos/2017/03/Reign-4x05-mary-dunrley.jpg"
							alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">SUB 5TH</a>
							</h4>
							<p class="card-text">SUB 5TH TEXT</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<a href="#"><img class="card-img-top"
							src="http://apaixonadosporseries.com.br/wp-content/arquivos/2017/03/Reign-4x05-mary-dunrley.jpg"
							alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">SUB 5TH</a>
							</h4>
							<p class="card-text">SUB 5TH TEXT</p>
						</div>
					</div>
				</div> -->

			</div>
			<!-- /.row -->

			<!-- Features Section -->
			<div class="row">
			<p> 
				<h2 style="color: red;">Hottest Fashion Trends!!</h2></p>
				<div class="col-lg-12 ">
					<c:forEach var="style" items="${style}" begin="6" end="9">
						<div class="card col-lg-3 col-md-4" style="float: right;">
							<div class="card-img h-100">
								<a  href="stylefeed.do"> <img class="img-fluid rounded"
									src="${style.ts_img_path}${style.ts_img_name}" alt=""></a>
									<div class="card-body">
										<p class="card-text">${style.ts_content }</p>
							</div>
						</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- /.row -->

	<hr>

	<!-- Call to Action Section -->
	<div class="row mb-4">
		<hr>
		<div class="col-md-8">
			<p>Move to Shopping Section</p>
		</div>
		<div class="col-md-4">
			<a class="btn btn-lg btn-secondary btn-block" href="goodsList.do">Go Shopping</a>
		</div>
	</div>

	</div>
	<!-- /.container -->
	<!-- footer -->
	<%@ include file="footer.jsp"%>
	<!-- /.footer -->
</html>
