package howAbout.service.couponlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import howAbout.dao.couponlist.CouponDao;
import howAbout.model.Coupon;

@Service
public class CouponServiceImpl implements CouponService{
	@Autowired
	CouponDao cd;

	@Override
	public List<Coupon> cpAll() {
		return cd.cpAll();
	}
}
