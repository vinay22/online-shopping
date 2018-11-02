<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>OnlineShopping - ${title}</title>

<script type="text/javascript">
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>
<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap cyborg theme -->
<link href="${css}/bootstrap-flatly-theme.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz"
	crossorigin="anonymous">
<!-- Bootstrap dataTables -->
<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>
	<div class="wrapper">
		<!-- Navigation -->

		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="${contextRoot}/home">Online
						Shopping</a>
				</div>

			</div>

		</nav>

		<!-- Page Content -->
		<div class="content">


			<div class="container">
				<%-- this will be displayed if the credentials are wrong --%>
				<c:if test="${not empty message}">
					<div class="row">

						<div class="col-md-6 offset-md-3">
							<div class="alert alert-danger">${message}</div>
						</div>

					</div>
				</c:if>

				<%-- this will be displayed only when user has logged out--%>
				<c:if test="${not empty logout}">
					<div class="row">

						<div class="col-md-6 offset-md-3">
							<div class="alert alert-success">${logout}</div>
						</div>

					</div>
				</c:if>

				<div class="row">

					<div class="col-md-6 offset-md-3">

						<div class="card">

							<div class="card-header">
								<h4>Login</h4>
							</div>

							<div class="card-body">
								<form action="${contextRoot}/login" method="POST"
									class="form-horizontal" id="registerForm" id="loginForm">

									<div class="form-group row">

										<label for="username" class="col-form-label col-md-4">Email:
										</label>
										<div class="col-md-8">
											<input type="text" name="username" id="username"
												class="form-control" />
										</div>
									</div>


									<div class="form-group row">
										<label for="password" class="col-form-label col-md-4">Password</label>
										<div class="col-md-8">
											<input type="password" name="password" class="form-control" />
										</div>
									</div>

									<div class="form-group row">
										<div class="col-md-offset-4 col-md-8">
											<input type="submit" value="Login" class="btn btn-primary" />
											<input type="hidden" name="${_csrf.parameterName}"
												value="${_csrf.token}" />
										</div>
									</div>

								</form>

								<div class="card-footer">
									<div class="text-right">
										New User - <a href="${contextRoot}/register">Register here</a>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>


			</div>

		</div>
		<!-- Footer -->
		<%@ include file="./shared/footer.jsp"%>

		<!-- JQuery -->
		<script src="${js}/jquery.js"></script>

		<!-- validate js-->
		<script src="${js}/jquery.validate.js"></script>

		<!-- Bootstrap core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>

		<!-- self coded js -->
		<script src="${js}/myapp.js"></script>
	</div>
</body>

</html>
