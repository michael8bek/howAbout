package howAbout.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Member;
import howAbout.model.cart.Cart;
import howAbout.model.goods.Goods;
import howAbout.service.cart.CartService;
import howAbout.service.goods.GoodsService;
import howAbout.service.member.MemberService;

@Controller
public class CartController {

	@Autowired
	private CartService cs;
	@Autowired
	private GoodsService gs;
	@Autowired
	private MemberService ms;
	
	@RequestMapping("cartList")
	public String cartList(Model model, HttpSession session) {
		List<Cart> listCart = cs.list((String) session.getAttribute("mem_id"));
		List<Goods> listGoods = gs.list();
	/*	String mem_id1 = (String)session.getAttribute("mem_id");
		Member mem = ms.select(mem_id1);
		model.addAttribute("member", mem);*/
		model.addAttribute("listCart", listCart);
		model.addAttribute("listGoods", listGoods);
		return "cart/cartList";
	}
}
