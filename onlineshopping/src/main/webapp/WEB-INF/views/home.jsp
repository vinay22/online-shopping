<!-- DataTable Bootstrap Script -->
<script src="${js}/angular.js"></script>

<!-- DataTable Bootstrap Script -->
<script src="${js}/productsController.js"></script>

<div class="container-fluid" ng-app="ShoppingApp"
	ng-controller="ProductController as pCtrl">

	<div class="row" ng-init="pCtrl.fetchProducts()">

		<%-- <div class="col-lg-2">
			<%@include file="./shared/sidebar.jsp"%>
		</div> --%>

		<div class="col-lg-12">

			<div class="row mb-4">
  					<div id="carouselExampleIndicators" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0"
								class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
						</ol>

						<div class="carousel-inner" role="listbox">

							<div class="carousel-item active">
								<img class="d-block img-fluid" src="${images}/iphone.jpg" alt="">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="${images}/mitv.jpg" alt="">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="${images}/sony.jpg" alt="">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="${images}/nokia.jpg" alt="">
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
 			</div>

			<!--//////////  row start //////////////-->
			<div class="row mt-5 mx-auto bg-white rounded">
				<div class="col-2 mt-2 bg-white rounded" style="display: inline;">
					<a href="${contextRoot}/view/category/1/products"
						style="text-decoration: none;">
						<h4 class="titlename mt-2 ml-2">
							Laptops&nbsp;&nbsp;&nbsp;<i class="fas fa-angle-double-right"></i>
						</h4>
					</a>
				</div>
 			</div>

			<div class="row mx-auto" style="background-color: white;">
				<c:forEach items="${viewproducts1}" var="product1" begin="0" end="5" varStatus="loop">
					<div class="col-lg-2 col-md-6 mb-4">
						<a ng-href="${contextRoot}/show/${product1.id}/product"
							style="text-decoration: none;" id="a_${product1.name}">
							<div class="card h-100" style="border: none;">
								<img ng-src="${images}/${product1.code}.jpg"
									alt="${product1.name}" class="card-img-top mt-2">
								<div class="card-body text-center">
									<h5 class="productname">${product1.name}</h5>
									<div class="caption">
										<h5 class="pull-right productprice">&#8377;
											${product1.unitPrice}</h5>
										<!-- <p>{{product.description}}</p> -->
									</div>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>


			<%-- <div class="row mx-auto mb-5" style="background-color: white;">
				<div class="col-lg-2 col-md-4 col-sm-6 col-12" style="height: 270px;">
					<div class="card">
						<img src="${images}/Apple iPhone 6 32GB .jpg"  class="img-fluid" alt="BeatsX">
			 		</div>
				</div>
			</div> --%>
			<!--//////////  row end //////////////-->

			<!--//////////  row start //////////////-->
			<div class="row mt-5 mx-auto bg-white rounded">
				<div class="col-2 mt-2 bg-white rounded" style="display: inline;">
					<a href="${contextRoot}/view/category/2/products"
						style="text-decoration: none;">
						<h4 class="titlename mt-2 ml-2">
							Televisions&nbsp;&nbsp;&nbsp;<i
								class="fas fa-angle-double-right doubleangle"></i>
						</h4>
					</a>
				</div>
			</div>

			<div class="row mx-auto" style="background-color: white;">
				<c:forEach items="${viewproducts2}" var="product2" begin="0" end="5" varStatus="loop">
					<div class="col-lg-2 col-md-6 mb-4">
						<a ng-href="${contextRoot}/show/${product2.id}/product"
							style="text-decoration: none;" id="a_${product2.name}">
							<div class="card h-100" style="border: none;">
								<img ng-src="${images}/${product2.code}.jpg"
									alt="${product2.name}" class="card-img-top mt-2">
								<div class="card-body text-center">
									<h5 class="productname">${product2.name}</h5>
									<div class="caption">
										<h5 class="pull-right productprice">&#8377;
											${product2.unitPrice}</h5>
										<!-- <p>{{product.description}}</p> -->
									</div>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>

			<!--//////////  row end //////////////-->

			<!--//////////  row start //////////////-->
			<div class="row mt-5 mx-auto bg-white rounded">
				<div class="col-2 mt-2 bg-white rounded" style="display: inline;">
					<a href="${contextRoot}/view/category/3/products"
						style="text-decoration: none;">
						<h4 class="titlename mt-2 ml-2">
							Mobiles&nbsp;&nbsp;&nbsp;<i
								class="fas fa-angle-double-right doubleangle"></i>
						</h4>
					</a>
				</div>
			</div>

			<div class="row mx-auto" style="background-color: white;">
				<c:forEach items="${viewproducts3}" var="product3" begin="0" end="5" varStatus="loop">
					<div class="col-lg-2 col-md-6 mb-4">
						<a ng-href="${contextRoot}/show/${product3.id}/product"
							style="text-decoration: none;" id="a_${product3.name}">
							<div class="card h-100" style="border: none;">
								<img ng-src="${images}/${product3.code}.jpg"
									alt="${product3.name}" class="card-img-top mt-2">
								<div class="card-body text-center">
									<h5 class="productname">${product3.name}</h5>
									<div class="caption">
										<h5 class="pull-right productprice">&#8377;
											${product3.unitPrice}</h5>
										<!-- <p>{{product.description}}</p> -->
									</div>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>

			<!--//////////  row end //////////////-->

		</div>

	</div>

</div>
<!-- /.container -->