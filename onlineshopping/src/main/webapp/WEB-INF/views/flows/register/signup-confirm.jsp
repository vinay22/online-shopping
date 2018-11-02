<%@include file="../shared/flows-header.jsp"%>
<!-- Loading home content -->
<div class="row">
	<div class="col-sm-6">
		<div class="card">

			<div class="card-header">
				<h4>Personal Details</h4>
			</div>

			<div class="card-body">
				<!-- Code to display the personal details -->
				<div class="text-center">
					<h4>${registerModel.user.firstname} ${registerModel.user.lastname}</h4>
					
					<h5>Email : ${registerModel.user.email}</h5>
					
					<h5>Contact Number : ${registerModel.user.contactnumber}</h5>
					
					<h5>Role : ${registerModel.user.role}</h5>
				</div>
			</div>
			<div class="card-footer">
	 			<a href="${flowExecutionUrl}&_eventId_personal" class="btn btn-primary">Edit</a>
			</div>


		</div>
	</div>
	
		<div class="col-sm-6">
		<div class="card">

			<div class="card-header">
				<h4>Billing Address</h4>
			</div>

			<div class="card-body">
				<!-- Code to display the personal details -->
				<div class="text-center">
	
					<h4>${registerModel.billing.addressLineOne}</h4>
					
					<h4>${registerModel.billing.addressLineTwo}</h4>

					<h4>${registerModel.billing.city} - ${registerModel.billing.postalCode}</h4>
					
					<h4>${registerModel.billing.state} - ${registerModel.billing.country}</h4>
				</div>
			</div>
			<div class="card-footer">
	 			<a href="${flowExecutionUrl}&_eventId_billing" class="btn btn-primary">Edit</a>
			</div>


		</div>
	</div>
	
</div>

<div class="row mt-4">
	<div class="col-sm-4 offset-sm-4">
		<div class="text-center">
			<a href="${flowExecutionUrl}&_eventId_submit" class="btn btn-primary">Confirm</a>
		</div>	
	</div>
</div>

<%@include file="../shared/flows-footer.jsp"%>

