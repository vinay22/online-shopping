
<div class="container">

	<c:choose>

		<c:when test="${not empty cartLines}">

			<table id="cart" class="table table-striped table-bordered">
				<thead>
					<tr>
						<th scope="col" style="width: 50%">Product</th>
						<th scope="col" style="width: 10%">Price</th>
						<th scope="col" style="width: 8%">Quantity</th>
						<th scope="col" style="width: 22%" class="text-center">Subtotal</th>
						<th scope="col" style="width: 10%"></th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${cartLines}" var="cartLine">

						<tr>
							<td data-th="Product">
								<div class="row">
									<div class="col-sm-2 hidden-xs">
										<img src="${images}/${cartLine.product.code}.jpg" alt="${cartLine.product.name}" class="img-fluid cartImg" />
									</div>
									<div class="col-sm-10">
										<h4 class="nomargin">${cartLine.product.name}
										
											<c:if test="${cartLine.available == false}">
												<strong class="unavailable">(Not Available)</strong>
											</c:if>
											
										</h4>
										 
										<p>Brand - ${cartLine.product.brand}</p>
										<p>Description - ${cartLine.product.description}</p>
									</div>
								</div>
							</td>
							<td data-th="Price">&#8377; ${cartLine.buyingPrice}</td>
							<td data-th="Quantity"><input type="number"
								class="form-control text-center" id="count_${cartLine.id}" min="1" max="3" value="${cartLine.productCount}"></td>
							<td data-th="Subtotal" class="text-center">&#8377; ${cartLine.total}</td>
							<td class="actions" data-th="">
								<button class="btn btn-info btn-sm">
									<i class="fas fa-sync-alt"></i>
								</button>
								<button class="btn btn-danger btn-sm">
									<i class="fas fa-trash-alt"></i>
								</button>
							</td>
						</tr>

					</c:forEach>


				</tbody>
				<tfoot>
					<tr class="d-block d-sm-none">
						<td class="text-center"><strong>Total &#8377; ${userModel.cart.grandTotal}</strong></td>
					</tr>
					<tr>
						<td><a href="#" class="btn btn-warning"><i
								class="fas fa-chevron-left"></i> Continue Shopping</a></td>
						<td colspan="2" class="hidden-xs"></td>
						<td class="hidden-xs text-center"><strong>Total
								&#8377; ${userModel.cart.grandTotal}</strong></td>
						<td><a href="#" class="btn btn-success btn-block">Checkout
								<i class="fas fa-chevron-right"></i>
						</a></td>
					</tr>
				</tfoot>
			</table>

		</c:when>

		<c:otherwise>

			<div class="jumbotron">

				<div class="text-center">

					<h1>Your cart is empty!</h1>

				</div>

			</div>

		</c:otherwise>

	</c:choose>

</div>