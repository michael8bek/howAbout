package howAbout.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Goods;
import howAbout.model.Mdtext;
import howAbout.service.goods.GoodsService;
import howAbout.service.mdtext.MdtextService;

@Controller
public class MdtextController {
	@Autowired
	private MdtextService mds;
	@Autowired
	private GoodsService gs;

	@RequestMapping("listMdtext")
	public String mdtext(Model model) {
		List<Mdtext> list = mds.list();
		model.addAttribute("list", list);
		return "md/mdtext";
	}
	@RequestMapping("bestMdtext")
	public String bestMdtext(Model model) {
		
		return "main";
	}
	@RequestMapping("mdtextInsertForm")
	public String mdtextInsertForm(Model model) {
		List<Goods> list = gs.list();
		model.addAttribute("list", list);
		return "md/mdtextInsertForm";
	}
}
