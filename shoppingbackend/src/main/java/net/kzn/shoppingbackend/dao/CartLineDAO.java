package net.kzn.shoppingbackend.dao;

import java.util.List;

import net.kzn.shoppingbackend.dto.Cart;
import net.kzn.shoppingbackend.dto.CartLine;

public interface CartLineDAO {
	
	public CartLine get(int id);
	public boolean add(CartLine cartline);
	public boolean update(CartLine cartline);
	public boolean delete(CartLine cartline);	
	public List<CartLine> list(int cartId);	
	
	//other business method related to the cart lines
	public List<CartLine> listAvailable(int cartId);
	public CartLine getByCartAndProduct(int cartId, int productId);	
	
	// update a cart
	boolean updateCart(Cart cart);

	
	
}
