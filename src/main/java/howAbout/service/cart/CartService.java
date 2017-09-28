package howAbout.service.cart;

import java.util.List;

import howAbout.model.cart.Cart;

public interface CartService {

	List<Cart> list(String mem_id);

}
