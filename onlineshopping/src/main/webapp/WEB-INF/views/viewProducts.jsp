<!-- DataTable Bootstrap Script -->
<script src="${js}/angular.js"></script>
<!-- DataTable Bootstrap Script -->
<script src="${js}/productsController.js"></script>


<div class="container-fluid" ng-app="ShoppingApp"
	ng-controller="ProductController as pCtrl">
	
	<div class="row">
      <div>
        <h1>search =  ${searchResult}</h1>
     </div>
</div>

	<div class="row mt-3 mr-1 no-gutter" ng-init="pCtrl.fetchProducts()">

		<div class="col-6 col-sm-4 col-md-3 col-lg-2 mt-3">

			<c:forEach items="${categories}" var="category">
				<a href="${contextRoot}/show/category/${category.id}/products"
					class="list-group-item" id="a_${category.name}">${category.name}</a>
			</c:forEach>

		</div>

		<div class="col-4 col-sm-4 col-md-3 col-lg-10 mt-3">

			<div class="row mt-5 mx-auto bg-white rounded">
				<h4 class="titlename mt-2 ml-2">
					${title}&nbsp;&nbsp;&nbsp;<i class="fas fa-angle-double-right"></i>
				</h4>
			</div>

			<div class="row mt-3 mr-1 no-gutters">

				<c:forEach items="${viewproducts}" var="product">
					<div class="col-lg-3 col-md-6 mb-4">
						<a href="${contextRoot}/show/${product.id}/product"
							class="list-group-item" id="a_${product.name}">

							<div class="card h-100">
								<img ng-src="${images}/${product.code}.jpg"
									alt="${product.code}" class="card-img-top mt-2">
								<hr />
								<div class="card-body">
									<h5>${product.name}</h5>
									<hr />
									<div class="caption">
										<h5 class="pull-right">&#8377; ${product.unitPrice}</h5>
										<!-- <p>{{product.description}}</p> -->
									</div>
								</div>
							</div>
						</a>

					</div>
				</c:forEach>
			</div>
		</div>
	</div>

</div>

