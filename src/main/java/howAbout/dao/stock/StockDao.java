package howAbout.dao.stock;

import java.util.List;

import howAbout.model.Stock;

public interface StockDao {

	int register(Stock stock);

	List<Stock> stockList();

}
