package howAbout.service.stock;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import howAbout.dao.stock.StockDao;
import howAbout.model.Stock;

@Service
public class StockServiceImpl implements StockService{
	@Autowired
	private StockDao sd;

	@Override
	public int register(Stock stock) {
		return sd.register(stock);
	}

	@Override
	public List<Stock> stockList() {
		return sd.stockList();
	}
	
}
