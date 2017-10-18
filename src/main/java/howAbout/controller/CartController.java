package howAbout.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Cart;
import howAbout.model.Couponlist;
import howAbout.model.Stock;
import howAbout.service.cart.CartService;
import howAbout.service.couponlist.CouponlistService;
import howAbout.service.stock.StockService;

@Controller
public class CartController {

	@Autowired
	private CartService cs;
	@Autowired
	private CouponlistService cls;
	@Autowired
	private StockService ss;
	
	@RequestMapping("cartList")
	public String cartList(String mem_id, Model model, HttpSession session) {
		/*List<Cart> listCart = cs.list((String) session.getAttribute("mem_id"));*/
		List<Cart> listCart = cs.list(mem_id);
		List<Stock> listStock = ss.stockList();
		model.addAttribute("listStock", listStock);
		model.addAttribute("listCart", listCart);
		return "cart/cartList";
	}

	@RequestMapping("cartDelete")
	public String cartDelete(String cart_id, Model model) {
		int result = cs.delete(cart_id);
		model.addAttribute("result", result);
		return "cart/cartDelete";
		
	}

	@RequestMapping("buyOne")
	public String buyOne(HttpServletRequest request, Model model) throws Exception {
		/*int result = cs.buyOne(cart);
		model.addAttribute("result", result);
		return "cart/buyOne";*/
		String cart_id = request.getParameter("cart_id");
		String goods_qty = request.getParameter("goods_qty");
		int result = 0;
		Map<String,Integer> map = null;
		if (cart_id.length() > 0) {
				map = new HashMap<String,Integer>();
				map.put("cart_id",Integer.parseInt(cart_id));
				map.put("goods_qty",Integer.parseInt(goods_qty));
				cs.buyOne(map);
				result = 1;
			}
		model.addAttribute("result", result);
		return "cart/ordersSelect";
	}
	
	@RequestMapping("ordersList")
	public String ordersList(String mem_id, Model model, HttpSession session) {
		/*List<Cart> listOrders = cs.listOrders("mem_id");*/
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
		String arr[] = request.getParameterValues("cart_id");
		String qty[] = request.getParameterValues("goods_qty");
		int result = 0;
		Map<String,Integer> map = null;
		if (arr.length > 0) {
			for (int i = 0; i < arr.length; i++) {
				map = new HashMap<String,Integer>();
				map.put("cart_id",Integer.parseInt(arr[i]));
				map.put("goods_qty",Integer.parseInt(qty[i]));
				cs.ordersSelect(map);
			}
			result = 1;
		}
		model.addAttribute("result", result);
		return "cart/ordersSelect";

	}
}
