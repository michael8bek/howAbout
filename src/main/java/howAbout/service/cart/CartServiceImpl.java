package howAbout.service.cart;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import howAbout.dao.cart.CartDao;
import howAbout.model.Cart;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDao cd;
	@Override
	public List<Cart> list(String mem_id) {
		return cd.list(mem_id);
	}
	@Override
	public int delete(int cart_id) {
		return cd.delete(cart_id);
	}
	@Override
	public int buyOne(Map<String, Integer> map) {
		return cd.buyOne(map);
	}

	@Override
	public List<Cart> listOrders(String mem_id) {
		return cd.listOrders(mem_id);
	}
	@Override
	public void delSelect(String arr) {
		cd.delSelect(arr);
	}
	@Override
	public void ordersSelect(Map<String, Integer> map) {
		cd.ordersSelect(map);
	}
	@Override
	public void payment(String cart_id) {
		cd.payment(cart_id);
	}
	@Override
	public List<Cart> payList(String mem_id) {
		return cd.payList(mem_id);
	}
	

	public int insert(Cart cart) {
		return cd.insert(cart);
	}
	@Override
	public int countcart(int goods_id, String mem_id) {
		return cd.countcart(goods_id, mem_id);
	}

}
