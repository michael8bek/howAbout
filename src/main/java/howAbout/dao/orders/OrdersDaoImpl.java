package howAbout.dao.orders;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import howAbout.model.Orders;

@Repository
public class OrdersDaoImpl implements OrdersDao {
@Autowired
private SqlSessionTemplate sst;

@Override
public Orders select(String cart_id) {
	return sst.selectOne("ordersns.select", cart_id);
}

}
