package howAbout.dao.goods;

import java.util.List;

import howAbout.model.Goods;

public interface GoodsDao {

	List<Goods> list();

	Goods select(int goods_id);

}
