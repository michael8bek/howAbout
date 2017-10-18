package howAbout.dao.cart;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import howAbout.model.Cart;
@Repository
public class CartDaoImpl implements CartDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<Cart> list(String mem_id) {
		return sst.selectList("cartns.list", mem_id);
		
	}

	@Override
	public int delete(String cart_id) {
		return sst.update("cartns.delete", cart_id);
	}
	@Override
	public int buyOne(Map<String, Integer> map) {
		return sst.update("cartns.buyOne", map);
	}

	@Override
	public List<Cart> listOrders(String mem_id) {
		return sst.selectList("cartns.listOrders", mem_id);
	}

	@Override
	public Object delSelect(String arr) {
		return sst.update("cartns.delSelect", arr);
	}

	@Override
	public Object ordersSelect(Map<String, Integer> map) {
		return sst.update("cartns.ordersSelect", map);
	}

	@Override
	public void payment(String cart_id) {
		sst.update("cartns.payment", cart_id);
	}
	
	
}
