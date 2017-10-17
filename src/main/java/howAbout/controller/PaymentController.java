package howAbout.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Payment;
import howAbout.service.payment.PaymentService;

@Controller
public class PaymentController {
	@Autowired
	private PaymentService ps;
	
	@RequestMapping("payInsert")
	public String payInsert(Payment payment, Model model, HttpSession session ) {
		Payment pm = new Payment();
		pm.setMem_id((String)session.getAttribute("mem_id"));
		int result = ps.insert(payment);
		model.addAttribute("result", result);
		return "cart/payment";
	}
}
