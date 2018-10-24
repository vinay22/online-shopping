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

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
<!-- Bootstrap dataTables -->
<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">
 
<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>
	<div class="wrapper">
		<!-- Navigation -->
		<%@ include file="./shared/navbar.jsp"%>

		<!-- Page Content -->
		<div class="content">
			<!-- Loading home content -->

			<c:if test="${userClickHome == true}">
				<%@ include file="home.jsp"%>
			</c:if>

			<!-- Loading only when user clicks about -->
			<c:if test="${userClickAbout == true}">
				<%@ include file="about.jsp"%>
			</c:if>

			<!-- Loading only when user clicks contact -->
			<c:if test="${userClickContact == true}">
				<%@ include file="contact.jsp"%>
			</c:if>

			<!-- Loading only when user clicks list products -->
			<c:if
				test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<%@ include file="listProducts.jsp"%>
			</c:if>
			
			<!-- Loading only when user clicks show product -->
			<c:if
				test="${userClickShowProduct == true}">
				<%@ include file="singleProduct.jsp"%>
			</c:if>

		</div>
		<!-- Footer -->
		<%@ include file="./shared/footer.jsp"%>

		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/bootstrap.bundle.min.js"></script>

		<!-- Datatables core JavaScript plugin-->
		<script src="${js}/jquery.dataTables.js"></script>

		<!-- Datatables bootstrap script-->
		<script src="${js}/dataTables.bootstrap4.js"></script>
 
 		<!-- self coded js -->
		<script src="${js}/myapp.js"></script>
	</div>
</body>

</html>
