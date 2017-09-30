package howAbout.dao.orders;

import java.util.List;

import howAbout.model.Orders;

public interface OrdersDao {

	Orders select(String cart_id);

}
