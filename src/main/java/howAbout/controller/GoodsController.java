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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import howAbout.model.Goods;
import howAbout.model.Member;
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
	@RequestMapping(value= {"registergoods"}, method=RequestMethod.GET)
		public String registerGoods(){
			return "management/fileUpLoad";
			
		}
	
	@RequestMapping(value="registergoods", method=RequestMethod.POST)
	public String registerGoods(Goods goods, HttpServletRequest request) throws IOException {
		if(!goods.getFile1().isEmpty()){		
			String fname = goods.getFile1().getOriginalFilename();			
			String path = request.getSession().getServletContext().getRealPath("/admin/upload");
			String fpath = path + "\\" + fname;
			
			FileOutputStream fs = new FileOutputStream(fpath);
			fs.write(goods.getFile1().getBytes());
			fs.close();
			
			goods.setGoods_img(fname);
		} 
		return "redirect:tables.do";
	}
	@RequestMapping("view")
	public String view(int goods_id, Model model) {
		Goods goods = cs.select(goods_id);
		model.addAttribute("goods", goods);
		return "goods/view";
    }
}
