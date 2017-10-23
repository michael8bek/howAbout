package howAbout.service.couponlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import howAbout.dao.couponlist.CouponlistDao;
import howAbout.model.Couponlist;
@Service
public class CouponlistServiceImpl implements CouponlistService {
	@Autowired
	private CouponlistDao cd;
	@Override
	public List<Couponlist> listCoupon(String mem_id) {
		return cd.listCoupon(mem_id);
	}
	@Override
	public int update(int cplist_id) {
		return cd.update(cplist_id);
	}
	@Override
	public Couponlist findCpVal(int cplist_id) {
		return cd.findCpVal(cplist_id);
	}

}
