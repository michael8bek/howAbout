package howAbout.service.cart;

import java.util.List;
import java.util.Map;

import howAbout.model.Cart;

public interface CartService {

	List<Cart> list(String mem_id);

	int delete(String cart_id);

	int buyOne(Map<String, Integer> map);

	List<Cart> listOrders(String mem_id);

	void delSelect(String arr);

	void ordersSelect(Map<String, Integer> map);

	void payment(String cart_id);


}
