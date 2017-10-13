package howAbout.service.goods;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import howAbout.dao.goods.GoodsDao;
import howAbout.model.Goods;
@Service
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsDao gd;
	@Override
	public List<Goods> list() {
		return gd.list();
	}
	@Override
	public int register(Goods goods) {
		return gd.register(goods);
	}

}
