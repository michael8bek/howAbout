package howAbout.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.cart.Cart;
import howAbout.service.cart.CartService;

@Controller
public class CartController {

	@Autowired
	private CartService cs;
	
	@RequestMapping("cartList")
	public String cartList(Model model) {
		List<Cart> list = cs.list();
		model.addAttribute("list", list);
		return "cart/cartList";
	}
}
