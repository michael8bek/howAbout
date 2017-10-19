package howAbout.service.cart;

import java.util.List;
import java.util.Map;

import howAbout.model.Cart;

public interface CartService {

	List<Cart> list(String mem_id);

	int delete(int cart_id);

	int buyOne(Map<String, Integer> map);

	List<Cart> listOrders(String mem_id);

	void delSelect(String arr);

	void ordersSelect(Map<String, Integer> map);

	void payment(String cart_id);
	int insert(Cart cart);

	int countcart(int goods_id, String mem_id);

	List<Cart> payList(String mem_id);

}
