package howAbout.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Cart;
import howAbout.model.Goods;
import howAbout.model.Payment;
import howAbout.model.Stock;
import howAbout.service.cart.CartService;
import howAbout.service.payment.PaymentService;
import howAbout.service.stock.StockService;

@Controller
public class PaymentController {
	@Autowired
	private PaymentService ps;
	@Autowired
	private CartService cs;
	@Autowired
	private StockService ss;
	
	@RequestMapping("payInsert")
	public String payInsert(Payment payment, Model model, HttpSession session,HttpServletRequest request ) {
		payment.setMem_id((String)session.getAttribute("mem_id"));
		String cart_id[] = request.getParameterValues("cart_id");
		int result1 = 0;
		if (cart_id.length > 0) {
			for (int i = 0; i < cart_id.length; i++) {
				cs.payment(cart_id[i]);
			}
			result1 = 1;
		}
		
		int result = ps.insert(payment);
		int result3 = ss.update(payment);
		model.addAttribute("result", result);
		model.addAttribute("result1", result1);
		model.addAttribute("result3", result3);
		return "pay/payment";
	}
	@RequestMapping("payList")
	public String payList(Model model, HttpSession session) {
		List<Cart> payList = cs.payList((String) session.getAttribute("mem_id"));
		model.addAttribute("payList",payList);
		return "pay/payList";
		
	}
}
