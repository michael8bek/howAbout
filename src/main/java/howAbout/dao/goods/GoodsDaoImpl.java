package howAbout.dao.goods;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import howAbout.model.Goods;

@Repository
public class GoodsDaoImpl implements GoodsDao {
	
	@Autowired
	private SqlSessionTemplate sst;
	@Override
	public List<Goods> list() {
		return sst.selectList("goodsns.list");
	}
	@Override
	public Goods select(int goods_id) {
		return sst.selectOne("goodsns.select", goods_id);
	}

}
