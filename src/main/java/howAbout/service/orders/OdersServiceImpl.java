package howAbout.service.orders;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import howAbout.dao.orders.OrdersDao;
import howAbout.model.Orders;

@Service
public class OdersServiceImpl implements OdersService {
@Autowired
OrdersDao od;

@Override
public Orders select(String cart_id) {
	return od.select(cart_id);
}
}
