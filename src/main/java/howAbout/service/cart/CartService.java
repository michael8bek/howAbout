package howAbout.service.cart;

import java.util.List;

import howAbout.model.Cart;

public interface CartService {

	List<Cart> list(String mem_id);

	int delete(String cart_id);

	int buyOne(String cart_id);

	List<Cart> listOrders(String mem_id);

}
