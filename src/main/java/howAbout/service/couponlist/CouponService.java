package howAbout.service.couponlist;

import java.util.List;

import org.springframework.ui.Model;

import howAbout.model.Coupon;

public interface CouponService {

	List<Coupon> cpAll();

	int addCoupon(Coupon coupon);

}
