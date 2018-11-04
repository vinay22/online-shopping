<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<script>
	window.userRole = '${userModel.role}';
</script>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-2">

	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<a class="navbar-brand" href="${contextRoot}/home">online shopping</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">

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

