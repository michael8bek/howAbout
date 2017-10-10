package howAbout.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Goods;
import howAbout.service.goods.GoodsService;

@Controller
public class GoodsController {

	@Autowired
	private GoodsService cs;
	
	@RequestMapping("goodsList")
	public String goodsList(Model model) {
		List<Goods> list = cs.list();
		model.addAttribute("list", list);
		return "goods/goodsList";
	}
	@RequestMapping("fileUpLoad")
	public String fileUpLoad() {
		return "management/fileUpLoad";
	}
}
