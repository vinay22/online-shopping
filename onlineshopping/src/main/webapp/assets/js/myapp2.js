$(function() {
 
	var $table = $('#productListTable');

	var jsonUrl = '';
	if (window.categoryId == '') {

		jsonUrl = window.contextRoot + '/json/data/all/products';
	} else {
		jsonUrl = window.contextRoot + '/json/data/category/'
				+ window.categoryId + '/products';
	}

	ajax : {
		url : jsonUrl,
		dataSrc : ''
			data : 'name'
	},

}); 

