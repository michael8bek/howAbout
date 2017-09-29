package howAbout.dao.goods;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import howAbout.model.goods.Goods;

@Repository
public class GoodsDaoImpl implements GoodsDao {
	
	@Autowired
	private SqlSessionTemplate sst;
	@Override
	public List<Goods> list() {
		return sst.selectList("goodsns.list");
	}

}
