package howAbout.service.cart;

import java.util.List;

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
	public int delete(String cart_id) {
		return cd.delete(cart_id);
	}
	@Override
	public int buyOne(String cart_id) {
		return cd.buyOne(cart_id);
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
	public void ordersSelect(String arr) {
		cd.ordersSelect(arr);
	}

}
