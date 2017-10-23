package howAbout.controller;

import java.awt.DisplayMode;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import howAbout.model.Cart;
import howAbout.model.Couponlist;
import howAbout.model.Goods;
import howAbout.model.Member;
import howAbout.model.Orders;
import howAbout.model.Stock;
import howAbout.service.cart.CartService;
import howAbout.service.couponlist.CouponlistService;
import howAbout.service.member.MemberService;
import howAbout.service.stock.StockService;
import scala.util.parsing.json.JSONObject;

@Controller
public class CartController {

	@Autowired
	private CartService cs;
	@Autowired
	private CouponlistService cls;
	@Autowired
	private StockService ss;
	@Autowired
	private MemberService ms;

	@RequestMapping("cartList")
	public String cartList(String mem_id, Model model, HttpSession session) {
		/* List<Cart> listCart = cs.list((String) session.getAttribute("mem_id")); */
		List<Cart> listCart = cs.list(mem_id);
		List<Stock> listStock = ss.stockList();
		model.addAttribute("listStock", listStock);
		model.addAttribute("listCart", listCart);
		return "cart/cartList";
	}

	@RequestMapping("cartDelete")
	public String cartDelete(int cart_id, Model model) {
		int result = cs.delete(cart_id);
		model.addAttribute("result", result);
		return "cart/cartDelete";

	}
	@RequestMapping("ordersDelete")
	public String ordersDelete(int cart_id, Model model) {
		int result = cs.delete(cart_id);
		model.addAttribute("result", result);
		return "cart/ordersDelete";

	}

	@RequestMapping("buyOne")
	public String buyOne(HttpServletRequest request, Model model) throws Exception {
		/*
		 * int result = cs.buyOne(cart); model.addAttribute("result", result); return
		 * "cart/buyOne";
		 */
		String cart_id = request.getParameter("chk");
		String goods_qty = request.getParameter("goods_qty");
		int result = 0;
		Map<String, Integer> map = null;
		if (cart_id.length() > 0) {
			map = new HashMap<String, Integer>();
			map.put("cart_id", Integer.parseInt(cart_id));
			map.put("goods_qty", Integer.parseInt(goods_qty));
			cs.buyOne(map);
			System.out.println(map);
			result = 1;
		}
		model.addAttribute("result", result);
		return "cart/ordersSelect";
	}

	@RequestMapping("ordersList")
	public String ordersList(String mem_id, Model model, HttpSession session) {
		/* List<Cart> listOrders = cs.listOrders("mem_id"); */
		List<Cart> listOrders = cs.listOrders((String) session.getAttribute("mem_id"));
		List<Couponlist> listCoupon = cls.listCoupon((String) session.getAttribute("mem_id"));
		model.addAttribute("listOrders", listOrders);
		model.addAttribute("listCoupon", listCoupon);
		return "cart/ordersList";
	}

	@RequestMapping("delSelect")
	public String delSelect(HttpServletRequest request, Model model) throws Exception {
		String arr[] = request.getParameterValues("chk");
		int result = 0;
		if (arr.length > 0) {
			for (int i = 0; i < arr.length; i++) {
				cs.delSelect(arr[i]);
			}
			result = 1;
		}
		model.addAttribute("result", result);
		return "cart/delSelect";
	}
	@RequestMapping("ordersSelect")
	public String ordersSelect(HttpServletRequest request, Model model) throws Exception {
		String arr[] = request.getParameterValues("chk");
		String qty[] = request.getParameterValues("goods_qty");
		int result = 0;
		Map<String, Integer> map = null;
		if (arr.length > 0) {
			for (int i = 0; i < arr.length; i++) {
				map = new HashMap<String, Integer>();
				map.put("cart_id", Integer.parseInt(arr[i]));
				map.put("goods_qty", Integer.parseInt(qty[i]));
				cs.ordersSelect(map);
				System.out.println(map);
			}
			result = 1;
		}
		model.addAttribute("result", result);
		return "cart/ordersSelect";

	}
	@RequestMapping(value = "memorders", method=RequestMethod.GET)
		public @ResponseBody Member memorders(String mem_id, Model model, HttpSession session) {
		Member mem = ms.select((String)session.getAttribute("mem_id"));
		return mem;
		
	}

/*	@RequestMapping("cartinsert")
	public String cartinsert(Cart cart, Model model, HttpSession session) {
		String mem_id = (String) session.getAttribute("mem_id");
		cart.setMem_id(mem_id);
		int result = cs.insert(cart);
		model.addAttribute("result", result);
		return "cart/productInsert";
	}
	@RequestMapping("countcart")
	public String countcart(Cart cart, Model model, HttpSession session) {
		String msg = "";
		String mem_id = (String) session.getAttribute("mem_id");
		cart.setMem_id(mem_id);
		int count = cs.countcart(cart.getGoods_id(), mem_id);
		if (count != 0) {
			msg = "이미 장바구니에 있습니다.";
			model.addAttribute("msg", msg);
			return "cart/cartChk";
		} else {
			msg = "";
			model.addAttribute("msg", msg);
			return "cart/cartChk";
		}
	}*/
	@RequestMapping("cartinsert")
	public String cartinsert(Cart cart, Model model, HttpSession session){
		String mem_id = (String) session.getAttribute("mem_id");
		cart.setMem_id(mem_id);
		int count = cs.countcart(cart.getGoods_id(), mem_id);
		if (count == 0 ) {
			int result = cs.insert(cart);
			model.addAttribute("result",result);
			return "cart/productInsert";
		} else {
			return "cart/cartChk";
		}
	}
}
