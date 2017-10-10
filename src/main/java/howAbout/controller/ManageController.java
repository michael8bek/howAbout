package howAbout.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Goods;
import howAbout.service.goods.GoodsService;

@Controller
public class ManageController {
	@Autowired
	private GoodsService cs;
	
	@RequestMapping("indexManage")
	public String indexManage() {
		return "/management/indexManage";
	}
	@RequestMapping("blank")
	public String blank() {
		return "/management/blank";
	}
	@RequestMapping("cards")
	public String cards() {
		return "/management/cards";
	}
	@RequestMapping("charts")
	public String charts() {
		return "/management/charts";
	}
	@RequestMapping("forgot-passord")
	public String forgotpassord() {
		return "/management/forgot-passord";
	}
	@RequestMapping("loginManage")
	public String loginManage() {
		return "/management/loginManage";
	}
	@RequestMapping("navbar")
	public String navbar() {
		return "/management/navbar";
	}
	@RequestMapping("register")
	public String register() {
		return "/management/register";
	}
	@RequestMapping("tables")
	public String tables(Model model) {
		List<Goods> listGoods = cs.list();
		model.addAttribute("list", listGoods);
		return "/management/tables";
	}
}
