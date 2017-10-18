package howAbout.service.payment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import howAbout.dao.payment.PaymentDao;
import howAbout.model.Payment;

@Service
public class PaymentServiceImpl implements PaymentService{
	@Autowired
	private PaymentDao pd;

	@Override
	public int insert(Payment payment) {
		return pd.insert(payment);
	}
}
