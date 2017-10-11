package howAbout.controller;

import java.io.FileOutputStream;
import java.io.IOError;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Goods;
import howAbout.service.goods.GoodsService;

@Controller
public class GoodsController {

	@Autowired
	private GoodsService gs;
	
	@RequestMapping("goodsList")
	public String goodsList(Model model) {
		List<Goods> list = gs.list();
		model.addAttribute("list", list);
		return "goods/goodsList";
	}
	
	@RequestMapping(value="registergoods")
	public String registerGoods(Goods goods,Model model){
		int result = gs.register(goods);
		model.addAttribute("result",result);
		return "redirect:tables.do";
	}
	
	@RequestMapping("registerForm")
	public String registerForm() {
		return "/management/registerForm";
	}
}
