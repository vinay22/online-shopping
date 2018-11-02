<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<%@include file="../shared/flows-header.jsp"%>
<!-- Loading home content -->
<div class="container">

	<div class="row">

		<div class="col-md-6 offset-md-3">

			<div class="card">

				<div class="card-header">
					<h4>Sign Up - Personal</h4>
				</div>

				<div class="card-body">
					<sf:form method="POST" class="form-horizontal" id="registerForm"
						modelAttribute="user">

						<div class="form-group row">

							<label class="col-form-label col-md-4">First Name</label>
							<div class="col-md-8">
								<sf:input type="text" path="firstname" class="form-control"
									placeholder="First Name" />

								<sf:errors path="firstname" cssClass="help-block" element="em" />

							</div>
						</div>


						<div class="form-group row">
							<label class="col-form-label col-md-4">Last Name</label>
							<div class="col-md-8">
								<sf:input type="text" path="lastname" class="form-control"
									placeholder="Last Name" />
								<sf:errors path="lastname" cssClass="help-block" element="em" />

							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4">Email</label>
							<div class="col-md-8">
								<sf:input type="text" path="email" class="form-control"
									placeholder="xyz@gmail.com" />
								<sf:errors path="email" cssClass="help-block" element="em" />


							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4">Contact Number</label>
							<div class="col-md-8">
								<sf:input type="text" path="contactnumber" class="form-control"
									placeholder="xxxxxxxxxx" maxlength="10" />
								<sf:errors path="contactnumber" cssClass="help-block"
									element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4">Password</label>
							<div class="col-md-8">
								<sf:input type="password" path="password" class="form-control"
									placeholder="password" />
								<sf:errors path="password" cssClass="help-block" element="em" />

							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4">Confirm Password</label>
							<div class="col-md-8">
								<sf:input type="password" path="confirmPassword" class="form-control"
									placeholder="Re-enter password" />
								<sf:errors path="confirmPassword" cssClass="help-block" element="em" />

							</div>
						</div>

						<!-- radio button using bootstarp class of radio-inline -->

						<div class="form-check form-check-inline row">
							<label class="col-form-label col-md-4">Select Role</label>
							<div class="col-md-8">

								<label class="form-check-label"> <sf:radiobutton
										path="role" value="USER" checked="checked" />User
								</label> <label class="form-check-label"> <sf:radiobutton
										path="role" value="SUPPLIER" />Supplier
								</label>
							</div>
						</div>


						<div class="form-group row">
							<div class="col-md-offset-4 col-md-8">

								<button type="submit" class="btn btn-primary"
									name="_eventId_billing">
									Next - Billing <span class="fas fa-chevron-right"></span>

								</button>

							</div>
						</div>


					</sf:form>


				</div>
			</div>
		</div>
	</div>


</div>


<%@include file="../shared/flows-footer.jsp"%>

