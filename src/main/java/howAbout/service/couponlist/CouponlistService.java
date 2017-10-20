package howAbout.service.couponlist;

import java.util.List;

import howAbout.model.Couponlist;

public interface CouponlistService {

	List<Couponlist> listCoupon(String mem_id);

	int update(int cplist_id);

	Couponlist findCpVal(int cplist_id);


}
