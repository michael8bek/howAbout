package howAbout.service.payment;

import java.util.List;

import howAbout.model.Payment;

public interface PaymentService {

	int insert(Payment payment);

	List<Payment> paymentList(String mem_id);

}
