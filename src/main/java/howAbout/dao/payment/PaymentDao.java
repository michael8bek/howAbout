package howAbout.dao.payment;

import java.util.List;

import howAbout.model.Payment;

public interface PaymentDao {

	int insert(Payment payment);

	List<Payment> list(String mem_id);

}
