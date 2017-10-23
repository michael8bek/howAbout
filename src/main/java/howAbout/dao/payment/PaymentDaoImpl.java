package howAbout.dao.payment;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import howAbout.model.Payment;

@Repository
public class PaymentDaoImpl implements PaymentDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int insert(Payment payment) {
		return sst.insert("paymentns.insert", payment);
	}

	@Override
	public List<Payment> paymentList(String mem_id) {
		return sst.selectList("paymentns.paymentList", mem_id);
	}
}
