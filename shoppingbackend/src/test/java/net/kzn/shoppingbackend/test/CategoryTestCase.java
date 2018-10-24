package net.kzn.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.kzn.shoppingbackend.dao.CategoryDAO;
import net.kzn.shoppingbackend.dto.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;
	private static CategoryDAO categoryDAO;

	private Category category;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.kzn.shoppingbackend");
		context.refresh();
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
	}

/*	@Test
	public void testAddCategory() {

		category = new Category();

		category.setName("Mobile");
		category.setDescription("This is some description for mobile");
		category.setImageurl("CAT_3.png");

		assertEquals("successfully added a category inside the table!", true, categoryDAO.add(category));
	}*/
	
/*	@Test
	public void testGetCategory() {

		category = categoryDAO.get(2);

 		assertEquals("successfully fetched a single category from the table!", "Laptop" , category.getName());
	}*/
	
/*	@Test
	public void testUpdateCategory() {

		category = categoryDAO.get(1);
		category.setName("TV");
 		assertEquals("successfully fetched a single category from the table!", true , categoryDAO.update(category));
	}*/
	
	/*@Test
	public void testDeleteCategory() {

		category = categoryDAO.get(1);
  		assertEquals("successfully deleted a single category from the table!", true , categoryDAO.delete(category));
	}*/
	
/*	@Test
	public void testListCategory() {
 
		assertEquals("successfully fetched the list of categories from the table!", 2 , categoryDAO.list().size());
	}*/
	
	@Test
	public void testCRUDCategory() {
 
		//add operation
		
		category = new Category();

		category.setName("Mobile");
		category.setDescription("This is some description for mobile");
		category.setImageurl("CAT_1.png");

		assertEquals("successfully added a category inside the table!", true, categoryDAO.add(category));
		
		
		category = new Category();

		category.setName("TV");
		category.setDescription("This is some description for TV");
		category.setImageurl("CAT_2.png");

		assertEquals("successfully added a category inside the table!", true, categoryDAO.add(category));
		
		// Fetching and updating
		category = categoryDAO.get(1);
		category.setName("TV");
 		assertEquals("successfully fetched a single category from the table!", true , categoryDAO.update(category));
 		
 		//delete the category
 		assertEquals("successfully deleted a single category from the table!", true , categoryDAO.delete(category));
 		
 		//fetching the list
 	 	assertEquals("successfully fetched the list of categories from the table!", 1 , categoryDAO.list().size());
	}
}
