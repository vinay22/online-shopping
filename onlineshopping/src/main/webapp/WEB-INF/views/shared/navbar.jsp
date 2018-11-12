<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<script>
	window.userRole = '${userModel.role}';
</script>

<div class="container-fluid">
	<nav class="navbar navbar-expand-lg my-nav" style="background: #1b1c1b">

		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<a class="navbar-brand" href="${contextRoot}/home">online
				shopping</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">

					<li class="nav-item" id="about">

						<div class="dropdown">
							<a href="" class="nav-link" type="button" id="dropdownMenuButton"
								data-toggle="dropdown" aria-haspopup="false"
								aria-expanded="false">Category</a>
							<div class="dropdown-menu" style="background-color: black"
								aria-labelledby="dropdownMenuButton">

								<c:forEach items="${categories}" var="category">
									<a href="${contextRoot}/show/category/${category.id}/products"
										class="list-group-item" id="a_${category.name}">${category.name}</a>
								</c:forEach>

							</div>
						</div>
					</li>

					<li class="nav-item" id="about"><a class="nav-link"
						href="${contextRoot}/about">About</a></li>

					<li class="nav-item" id="contact"><a class="nav-link"
						href="${contextRoot}/contact">Contact</a></li>

					<li class="nav-item" id="listproducts"><a class="nav-link"
						href="${contextRoot}/show/all/products">View products</a></li>

					<security:authorize access="hasAuthority('ADMIN')">
						<li class="nav-item" id="manageProduct"><a class="nav-link"
							href="${contextRoot}/manage/product">Manage Product</a></li>
					</security:authorize>
				</ul>

				<ul class="navbar-nav ml-auto">

					<security:authorize access="isAnonymous()">
						<li class="nav-item" id="signup"><a class="nav-link"
							href="${contextRoot}/membership">Sign Up</a></li>
						<li class="nav-item" id="login"><a class="nav-link"
							href="${contextRoot}/login">Login</a></li>
					</security:authorize>

					<security:authorize access="isAuthenticated()">
						<li class="dropdown" id="userModel"><a
							class="btn btn-outline-light dropdown-toggle"
							href="javascript:void(0)" id="dropdownMenu1"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
								${userModel.fullName} <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
								<security:authorize access="hasAuthority('USER')">
									<li id="cart"><a class="dropdown-item"
										href="${contextRoot}/cart/show"> <span
											class="fas fa-cart-plus"></span>&#160;<span class="badge">${userModel.cart.cartLines}</span>
											- &#8377; ${userModel.cart.grandTotal}
									</a></li>
									<li role="separator" class="divider"></li>
								</security:authorize>
								<li id="logout"><a class="dropdown-item"
									href="${contextRoot}/logout">Logout</a></li>
							</ul></li>
					</security:authorize>
				</ul>

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand">Navbar</a>
		<form class="form-inline" action="${contextRoot}/search">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search" name="searchTerm">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</nav>
	
</div>