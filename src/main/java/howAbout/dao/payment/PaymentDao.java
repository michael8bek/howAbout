package howAbout.dao.payment;

import java.util.List;

import howAbout.model.Payment;

public interface PaymentDao {

	int insert(Payment payment);

	List<Payment> paymentList(String mem_id);

}
