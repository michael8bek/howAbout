package howAbout.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Goods;
import howAbout.model.Stock;
import howAbout.service.goods.GoodsService;
import howAbout.service.stock.StockService;
/*상품, 제고 컨트롤러*/
@Controller
public class GoodsController {

	@Autowired
	private GoodsService gs;
	@Autowired
	private StockService ss;

	@RequestMapping("goodsList")
	public String goodsList(Model model) {
		List<Goods> list = gs.list();
		model.addAttribute("list", list);
		return "goods/goodsList";
	}
	
	@RequestMapping("goodsSelectList")
	public String goodsSelectList(Goods goods_theme, Model model) {
		List<Goods> list = gs.selectlist(goods_theme);
		model.addAttribute("list", list);
		return "goods/selectgoods";
	}
	
	/*관리자페이지에서 상품등록*/
	@RequestMapping(value="registergoods")
	public String registerGoods(Goods goods, Stock stock, Model model){
		int result = gs.register(goods);
		model.addAttribute("result",result);
		int regStock = ss.register(stock);
		model.addAttribute("regStrock", regStock);
		return "redirect:tables.do";
	}
	@RequestMapping("view")
	public String view(int goods_id, Model model) {
		Goods goods = gs.select(goods_id);
		model.addAttribute("goods", goods);
		Stock stock = ss.select(goods_id);
		model.addAttribute("stock", stock);
		return "goods/view";
    }
	/*상품등록 폼*/
	@RequestMapping("registerForm")
	public String registerForm() {
		return "/management/registerForm";
	}
}
