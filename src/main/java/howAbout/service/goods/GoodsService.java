package howAbout.service.goods;

import java.util.List;

import howAbout.model.Goods;

public interface GoodsService {

	List<Goods> list();

	int register(Goods goods);

}
