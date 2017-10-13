package howAbout.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import howAbout.model.Payment;
import howAbout.service.payment.PaymentService;

@Controller
public class PaymentController {
	@Autowired
	private PaymentService ps;
	
}
