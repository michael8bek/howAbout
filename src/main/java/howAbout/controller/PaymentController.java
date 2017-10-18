package howAbout.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Payment;
import howAbout.service.cart.CartService;
import howAbout.service.payment.PaymentService;

@Controller
public class PaymentController {
	@Autowired
	private PaymentService ps;
	@Autowired
	private CartService cs;
	
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
		System.out.println(session.getAttribute("mem_id"));
		int result = ps.insert(payment);
		model.addAttribute("result", result);
		model.addAttribute("result1", result1);
		return "cart/payment";
		
	}
}
