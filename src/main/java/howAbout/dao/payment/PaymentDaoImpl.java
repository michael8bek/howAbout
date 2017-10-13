package howAbout.dao.payment;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PaymentDaoImpl implements PaymentDao {
	@Autowired
	private SqlSessionTemplate sst;
}
