package howAbout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManageController {
	
	@RequestMapping("indexManage")
	public String indexManage() {
		return "/management/indexManage";
	}
	@RequestMapping("tableManage")
	public String tableManage() {
		return "/management/tableManage";
	}
	@RequestMapping("empty")
	public String empty() {
		return "/management/empty";
	}
	@RequestMapping("form")
	public String form() {
		return "/management/form";
	}
	@RequestMapping("table")
	public String table() {
		return "/management/table";
	}
	@RequestMapping("tabpanel")
	public String tabpanel() {
		return "/management/tabpanel";
	}
	@RequestMapping("uielements")
	public String uielements() {
		return "/management/uielements";
	}
	
}
