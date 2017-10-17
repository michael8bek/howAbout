package howAbout.service.stock;

import java.util.List;

import howAbout.model.Stock;

public interface StockService {

	int register(Stock stock);

	List<Stock> stockList();

	Stock select(int goods_id);

}
