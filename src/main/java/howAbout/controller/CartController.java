package howAbout.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.cart.Cart;
import howAbout.model.goods.Goods;
import howAbout.service.cart.CartService;
import howAbout.service.goods.GoodsService;

@Controller
public class CartController {

	@Autowired
	private CartService cs;
	@Autowired
	private GoodsService gs;
	
	@RequestMapping("cartList")
	public String cartList(Model model) {
		List<Cart> listCart = cs.list();
		List<Goods> listGoods = gs.list();
		model.addAttribute("listCart", listCart);
		model.addAttribute("listGoods", listGoods);
		return "cart/cartList";
	}
}
