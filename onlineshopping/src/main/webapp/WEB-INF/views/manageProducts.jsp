<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<div class="container">

	<div class="row">
		<c:if test="${not empty message}">

			<div class="col-12">
				<div class="alert alert-success alert-dismissible">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					${message}
				</div>

			</div>
		</c:if>

		<div class="offset-md-2 col-md-8">

			<div class="card">

				<div class="card-header">

					<h4>Product Management</h4>

				</div>

				<div class="card-body">

					<!-- FORM ELEMENTS -->

					<sf:form class="" modelAttribute="product"
						action="${contextRoot}/manage/products" method="POST"
						enctype="multipart/form-data">

						<div class="form-group row">
							<label for="name" class="col-sm-4 col-form-label">Enter
								Product Name: </label>
							<div class="col-sm-8">
								<sf:input type="text" path="name" id="name"
									placeholder="Product Name" class="form-control" />
								<sf:errors path="name" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label for="brand" class="col-sm-4 col-form-label">Enter
								Brand Name: </label>
							<div class="col-sm-8">
								<sf:input type="text" path="brand" id="brand"
									placeholder="Brand Name" class="form-control" />
								<sf:errors path="brand" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label for="description" class="col-sm-4 col-form-label">Enter
								Description: </label>
							<div class="col-sm-8">
								<sf:textarea path="description" id="description"
									placeholder="Write a Product Description!" class="form-control" />
								<sf:errors path="description" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label for="unitPrice" class="col-sm-4 col-form-label">Enter
								Unit Price: </label>
							<div class="col-sm-8">
								<sf:input type="number" path="unitPrice" id="unitPrice"
									placeholder="Unit Price in &#8377!" class="form-control" />
								<sf:errors path="unitPrice" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label for="Quantity" class="col-sm-4 col-form-label">Quantity
								Available </label>
							<div class="col-sm-8">
								<sf:input type="number" path="Quantity" id="Quantity"
									placeholder="Quantity Available!" class="form-control" />
							</div>
						</div>

						<!--  File element for image upload -->

						<div class="form-group row">
							<label for="file" class="col-sm-4 col-form-label">Select
								an Image </label>
							<div class="col-sm-8">
								<sf:input type="file" path="file" id="file"
									class="form-control-file" />
								<sf:errors path="file" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-4 col-form-label" for="categoryId">Select
								Category: </label>
							<div class="col-md-8">
								<sf:select class="form-control" id="categoryId"
									path="categoryId" items="${categories}" itemLabel="name"
									itemValue="id" />

								<c:if test="${product.id==0}">
									<div class="text-right">
										<br />
										<button type="button" data-toggle="modal"
											data-target="#myCategoryModal" class="btn btn-warning btn-xs">Add
											Category</button>
									</div>
								</c:if>
							</div>
						</div>

						<div class="form-group row">

							<div class="col-sm-8 offset-sm-4">

								<input type="submit" name="submit" id="submit" value="submit"
									class="btn btn-primary" />
								<!-- Hidden fields for products -->

								<sf:hidden path="id" />
								<sf:hidden path="code" />
								<sf:hidden path="supplierId" />
								<sf:hidden path="active" />
								<sf:hidden path="purchases" />
								<sf:hidden path="views" />


							</div>

						</div>

					</sf:form>

				</div>

			</div>

		</div>
	</div>

	<div class="row">
		<div class="col-12">
			<h3>Available Products</h3>
			<hr />
		</div>

		<div class="col-12">
 
 			 	<div class="table-responsive">
					<!-- Products table for admin -->
					<table id="adminProductsTable"
						class="table table-striped table-bordered">

						<thead>
							<tr>
								<th>Id</th>
								<th>&#160;</th>
								<th>Name</th>
								<th>Brand</th>
								<th>Quantity</th>
								<th>Unit Price</th>
								<th>Active</th>
								<th>Edit</th>
							</tr>
						</thead>

						<tfoot>
							<tr>
								<th>Id</th>
								<th>&#160;</th>
								<th>Name</th>
								<th>Brand</th>
								<th>Quantity</th>
								<th>Unit Price</th>
								<th>Active</th>
								<th>Edit</th>
							</tr>
						</tfoot>

					</table>
  			</div>

		</div>
	</div>

	<div class="modal fade" id="myCategoryModal" tabindex="-1"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Add New Category</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<!-- Category form  -->
					<sf:form id="categoryForm" modelAttribute="category"
						action="${contextRoot}/manage/category" method="POST" class="">

						<div class="form-group row">
							<label for="category_name" class="col-sm-4 col-form-label">Category
								Name</label>
							<div class="col-sm-8">
								<sf:input type="text" path="name" class="form-control"
									id="category_name" />
							</div>
						</div>

						<div class="form-group row">
							<label for="category_description" class="col-sm-4 col-form-label">Category
								Description</label>
							<div class="col-sm-8">
								<sf:textarea type="text" cols="" rows="4" path="description"
									class="form-control" id="category_description" />
							</div>
						</div>

						<div class="form-group row">
							<div class="offset-sm-4 col-sm-8">
								<input type="submit" value="Add Category"
									class="btn btn-primary" />
							</div>
						</div>

					</sf:form>
				</div>

			</div>
		</div>
	</div>

</div>