package howAbout.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

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
	@RequestMapping("mdtextInsert")
	public String mdtextInsert(Mdtext mdtext,Goods goods,HttpSession session, Model model) {
			
		mdtext.setMem_id((String)session.getAttribute("mem_id"));
		int result = mds.register(mdtext);

		model.addAttribute("result", result);
		return "redirect:listMdtext.do";
	}
}
