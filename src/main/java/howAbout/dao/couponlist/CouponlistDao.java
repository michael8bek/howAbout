package howAbout.dao.couponlist;

import java.util.List;

import howAbout.model.Couponlist;

public interface CouponlistDao {

	List<Couponlist> listCoupon(String mem_id);

	int update(int cplist_id);

	Couponlist findCpVal(int cplist_id);

	List<Couponlist> listAllCoupon();

	int regCouponlist(Couponlist couponlist);


}
