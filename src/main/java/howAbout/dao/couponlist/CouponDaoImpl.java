package howAbout.dao.couponlist;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import howAbout.model.Coupon;

@Repository
public class CouponDaoImpl implements CouponDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<Coupon> cpAll() {
		return sst.selectList("couponns.cpAll");
	}
}
