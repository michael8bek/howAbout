<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
		<div class="row">
			<c:forEach var="goods" items="${list}">
				<div class="col-lg-4 col-sm-6 portfolio-item">
					<div class="card h-100" style="text-align: center;">
						<a data-toggle="modal" data-target=".bd-example-modal-lg"><img
							class="card-img-top"
							src="${path}/resources/images/goods/${goods.goods_img}"
							alt="${goods.goods_id}"></a>
						<div class="modal fade bd-example-modal-lg" tabindex="-1"
							role="dialog" aria-labelledby="myLargeModalLabel"
							aria-hidden="true">
							<div class="modal-dialog modal-lg" style="width: 100%; max-width: 450px;">
								<div class="modal-content">
									<%@ include file="view.jsp"%>
								</div>
							</div>
						</div>
						<div class="card-body">
							<h4 class="card-title" id="${goods.goods_id}">${goods.goods_name}</h4>
							<p class="card-text">${goods.goods_price}</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>