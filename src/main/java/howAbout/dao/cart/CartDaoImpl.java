package howAbout.dao.cart;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import howAbout.model.cart.Cart;
@Repository
public class CartDaoImpl implements CartDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<Cart> list(String mem_id) {
		return sst.selectList("cartns.list", mem_id);
		
	}
	
}
