package howAbout.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Cart;
import howAbout.model.Member;
import howAbout.model.Orders;
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
		/*List<Goods> listGoods = gs.list();
		model.addAttribute("listGoods", listGoods);*/
		model.addAttribute("listCart", listCart);
		return "cart/cartList";
	}
	@RequestMapping("cartDelete")
	public String cartDelete(String cart_id, Model model){
		int result = cs.delete(cart_id);
		model.addAttribute("result", result);
		return "cart/cartDelete";
	}
	@RequestMapping("buyOne")
	public String buyOne(String cart_id, Model model) {
		int result = cs.buyOne(cart_id);
		model.addAttribute("result", result);
		return "cart/buyOne";
	}
	@RequestMapping("ordersList")
	public String ordersList(Model model, HttpSession session) {
		List<Cart> listOrders = cs.listOrders((String) session.getAttribute("mem_id"));
		model.addAttribute("listOrders", listOrders);
		return "cart/ordersList";
	}
	@RequestMapping("delSelect")
	public  String delSelect(HttpServletRequest request, Model model ) throws Exception {
		String arr[] = request.getParameterValues("chk");
		cs.delSelect(arr);
		return "redirect:cartList.do";
	}
	
}
