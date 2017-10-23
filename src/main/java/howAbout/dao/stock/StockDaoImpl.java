package howAbout.dao.stock;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import howAbout.model.Payment;
import howAbout.model.Stock;

@Repository
public class StockDaoImpl implements StockDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int register(Stock stock) {
		return sst.insert("stockns.register", stock);
	}

	@Override
	public List<Stock> stockList() {
		return sst.selectList("stockns.stockList");
	}

	@Override
	public Stock select(int goods_id) {
		return sst.selectOne("stockns.select", goods_id);
	}

	@Override
	public int update(Payment payment) {
		return sst.update("stockns.imsupdate", payment);
	}
}
