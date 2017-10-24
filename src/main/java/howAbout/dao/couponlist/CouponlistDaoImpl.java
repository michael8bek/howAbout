package howAbout.dao.couponlist;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import howAbout.model.Couponlist;

@Repository
public class CouponlistDaoImpl implements CouponlistDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<Couponlist> listCoupon(String mem_id) {
		return sst.selectList("couponlistns.listCoupon", mem_id);
	}

	@Override
	public int update(int cplist_id) {
		return sst.update("couponlistns.delmark", cplist_id);
	}

	@Override
	public Couponlist findCpVal(int cplist_id) {
		return sst.selectOne("couponlistns.findCpVal",cplist_id);
	}

	@Override
	public List<Couponlist> listAllCoupon() {
		return sst.selectList("couponlistns.listAllCoupon");
	}

	@Override
	public int regCouponlist(Couponlist couponlist) {
		return sst.insert("couponlistns.regCouponlist",couponlist);
	}

	@Override
	public List<Couponlist> couponlist(String mem_id) {
		return sst.selectList("couponlistns.couponlist", mem_id);
	}


}
