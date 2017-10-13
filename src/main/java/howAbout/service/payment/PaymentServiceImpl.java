package howAbout.service.payment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import howAbout.dao.payment.PaymentDao;

@Service
public class PaymentServiceImpl implements PaymentService{
	@Autowired
	private PaymentDao pd;
}
