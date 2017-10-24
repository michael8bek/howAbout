package howAbout.service.goods;

import java.util.List;

import howAbout.model.Goods;

public interface GoodsService {

	List<Goods> list();

	Goods select(int goods_id);

	int register(Goods goods);

	List<Goods> selectlist(Goods goods_theme);

}
