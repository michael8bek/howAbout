package howAbout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManageController {
	
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
	public String tables() {
		return "/management/tables";
	}
}
