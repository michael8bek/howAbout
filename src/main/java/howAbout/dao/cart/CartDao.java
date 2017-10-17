package howAbout.dao.cart;

import java.util.List;
import java.util.Map;

import howAbout.model.Cart;

public interface CartDao {

	List<Cart> list(String mem_id);

	int delete(int cart_id);

	int buyOne(Map<String, Integer> map);

	List<Cart> listOrders(String mem_id);

	Object delSelect(String arr);

	Object ordersSelect(Map<String, Integer> map);

	int insert(Cart cart);

}
