package howAbout.dao.couponlist;

import java.util.List;

import howAbout.model.Coupon;

public interface CouponDao {

	List<Coupon> cpAll();

	int addCoupon(Coupon coupon);

}
