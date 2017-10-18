package howAbout.dao.cart;

import java.util.HashMap;
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
	public int delete(int cart_id) {
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
	public int insert(Cart cart) {
		return sst.insert("cartns.cartinsert", cart);
	}
	
	@Override
	public void payment(String cart_id) {
		sst.update("cartns.payment", cart_id);
	}

	@Override
	public int countcart(int goods_id, String mem_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("goods_id", goods_id);
		map.put("mem_id", mem_id);
		return sst.selectOne("cartns.countcart", map);
	}
}
