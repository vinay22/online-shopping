package net.kzn.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.kzn.shoppingbackend.dao.ProductDAO;

public class ProductTestCase {
	private static AnnotationConfigApplicationContext context;
	private static ProductDAO productDAO;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.kzn.shoppingbackend");
		context.refresh();
		productDAO = (ProductDAO) context.getBean("productDAO");
	}

/*@Test
public void testCRUDProduct() {
product = new Product();

product.setName("Oppo selfie s53");

product.setDescription("This is some description for Oppo mobile");
product.setUnitPrice(25000);
product.setCategoryId(3);
product.setSupplierId(3);

assertEquals("Something went wrong while inserting a new product!", true, productDAO.add(product));

//reading and updating the category
product = productDAO.get(2);
product.setName("Samasun Galaxy S7");

assertEquals("Something went wrong while inserting a new product!", true, productDAO.update(product));

assertEquals("Something went wrong while inserting a new product!", true, productDAO.delete(product));
 
//list
assertEquals("Something went wrong while inserting a new product!", 7, productDAO.list().size());

}*/

	
@Test
public void testListActiveProducts() { 
	assertEquals("Something went wrong while inserting a new product!", 4,productDAO.listActiveProducts().size());
}
@Test
public void testListActiveProductsByCategory() { 
	assertEquals("Something went wrong while inserting a new product!", 2,productDAO.listActiveProductsByCategory(3).size());
	assertEquals("Something went wrong while inserting a new product!", 2,productDAO.listActiveProductsByCategory(1).size());

}

@Test
public void testGetLatestActiveProducts() { 
	assertEquals("Something went wrong while inserting a new product!", 4,productDAO.getLatestActiveProducts(4).size());
}
	
}

