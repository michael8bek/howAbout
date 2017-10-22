package howAbout.service.payment;

import java.util.List;

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

	@Override
	public List<Payment> list(String mem_id) {
		return pd.list(mem_id);
	}

	
}
