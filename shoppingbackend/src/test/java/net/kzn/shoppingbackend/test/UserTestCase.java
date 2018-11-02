package net.kzn.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.kzn.shoppingbackend.dao.UserDAO;
import net.kzn.shoppingbackend.dto.Address;
import net.kzn.shoppingbackend.dto.Cart;
import net.kzn.shoppingbackend.dto.User;

public class UserTestCase {

	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;
	private User user = null;
	private Cart cart = null;
	private Address address = null;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.kzn.shoppingbackend");
		context.refresh();
		userDAO = (UserDAO) context.getBean("userDAO");
	}

/*	@Test

	public void testAdd() {

		user = new User();

		user.setFirstname("vidyesh");
		user.setLastname("thakoor");
		user.setEmail("vidyesh.thakoor@gmail.com");
		user.setContactnumber("7276056154");
		user.setRole("USER");
		user.setPassword("123456");

		// add the user
		assertEquals("Failed to add user!", true, userDAO.addUser(user));

		address = new Address();
		address.setAddressLineOne("viveknagar, akurdi, pune");
		address.setAddressLineTwo("near tuljabhvani mandir, akurdi, pune");
		address.setCity("Pune");
		address.setState("Maharashtra");
		address.setCountry("India");
		address.setPostalCode("411035");
		address.setBilling(true);

		// link the user with the address using user id
		address.setUserId(user.getId());

		// add the address
		assertEquals("Failed to add address", true, userDAO.addAddress(address));

		if (user.getRole().equals("USER")) {

			// create a new cart for this user

			cart = new Cart();
			cart.setUser(user);

			// add the cart
			assertEquals("Failed to add cart! ", true, userDAO.addCart(cart));

			// add a shipping address for this user

			address = new Address();
			address.setAddressLineOne("sanjay colony, akurdi, pune");
			address.setAddressLineTwo("near star hospital, akurdi, pune");
			address.setCity("Pune");
			address.setState("Maharashtra");
			address.setCountry("India");
			address.setPostalCode("411035");
			// set shipping to true
			address.setShipping(true);

			// link it with the user
			address.setUserId(user.getId());

			// add the shipping address
			assertEquals("Failed to add shipping address!", true, userDAO.addAddress(address));

		}

	}*/

/*	@Test

	public void testAdd() {

		user = new User();

		user.setFirstname("vidyesh");
		user.setLastname("thakoor");
		user.setEmail("vidyesh.thakoor@gmail.com");
		user.setContactnumber("7276056154");
		user.setRole("USER");
		user.setPassword("123456");
  	 
		if (user.getRole().equals("USER")) {

			// create a new cart for this user

			cart = new Cart();
			cart.setUser(user);
  
			//attach cart with the user
			user.setCart(cart);
		}

		// add the user
		assertEquals("Failed to add user!", true, userDAO.addUser(user));

	}*/
	
	/*@Test
	public void testUpdateCart() {
		//fetch the user by its email
		user = userDAO.getByEmail("vidyesh.thakoor@gmail.com");
		
		// get the cart of the user
		cart = user.getCart();
		
		cart.setGrandTotal(55555);
		cart.setCartLines(2);
		assertEquals("Failed to update the cart!",true, userDAO.updateCart(cart));
		
	}*/
	
/*	@Test
	public void TestAddAddress(){
		
		//we need to add an user
		
		user = new User();

		user.setFirstname("vidyesh");
		user.setLastname("thakoor");
		user.setEmail("vidyesh.thakoor@gmail.com");
		user.setContactnumber("7276056154");
		user.setRole("USER");
		user.setPassword("123456");

		// add the user
		assertEquals("Failed to add user!", true, userDAO.addUser(user));
 		
		//we are going to add the address
		
		address = new Address();
		address.setAddressLineOne("viveknagar, akurdi, pune");
		address.setAddressLineTwo("near tuljabhvani mandir, akurdi, pune");
		address.setCity("Pune");
		address.setState("Maharashtra");
		address.setCountry("India");
		address.setPostalCode("411035");
		address.setBilling(true);

		// attached the user to the address
		address.setUser(user);
		assertEquals("Failed to add address!", true, userDAO.addAddress(address));
		
		//we are going to add the shipping address
		address = new Address();
		address.setAddressLineOne("sanjay colony, akurdi, pune");
		address.setAddressLineTwo("near star hospital, akurdi, pune");
		address.setCity("Pune");
		address.setState("Maharashtra");
		address.setCountry("India");
		address.setPostalCode("411035");
		// set shipping to true
		address.setShipping(true);
		
		// attached the user to the address
				address.setUser(user);
				assertEquals("Failed to add shipping address!", true, userDAO.addAddress(address));

	}*/
	
/*	
	@Test
	public void testAddAddress() {

		user = userDAO.getByEmail("vidyesh.thakoor@gmail.com");
		
		//we are going to add the shipping address
		address = new Address();
		address.setAddressLineOne("sanjay colony, akurdi, pune");
		address.setAddressLineTwo("near star hospital, akurdi, pune");
		address.setCity("Mumbai");
		address.setState("Maharashtra");
		address.setCountry("India");
		address.setPostalCode("411038");
		// set shipping to true
		address.setShipping(true);
		
		// attached the user to the address
				address.setUser(user);
				assertEquals("Failed to add shipping address!", true, userDAO.addAddress(address));

	}*/
	
/*	@Test
	public void testGetAddAddresses() {

		user = userDAO.getByEmail("vidyesh.thakoor@gmail.com");
		
		assertEquals("Failed to fetch the list of address and size does not match!",2,
				userDAO.listShippingAddresses(user).size());
		
		assertEquals("Failed to fetch the billing address and size does not match!","Pune",
				userDAO.getBillingAddress(user).getCity());
		
	}*/	
	
}
