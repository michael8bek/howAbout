package howAbout.dao.cart;

import java.util.List;

import howAbout.model.cart.Cart;

public interface CartDao {

	List<Cart> list(String mem_id);

}
