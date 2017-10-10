package howAbout.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Orders;
import howAbout.service.cart.CartService;
import howAbout.service.orders.OdersService;

@Controller
public class OrdersController {
	
	@Autowired
	private OdersService os;
	@Autowired
	private CartService cs;

}
