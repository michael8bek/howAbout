package howAbout.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Coupon;
import howAbout.model.Couponlist;
import howAbout.model.Goods;
import howAbout.model.Member;
import howAbout.model.Stock;
import howAbout.service.couponlist.CouponService;
import howAbout.service.couponlist.CouponlistService;
import howAbout.service.goods.GoodsService;
import howAbout.service.member.MemberService;
import howAbout.service.stock.StockService;

@Controller
public class ManageController {
	@Autowired
	private GoodsService cs;
	@Autowired
	private StockService ss;
	@Autowired
	private CouponlistService cps;
	@Autowired
	private MemberService ms;
	@Autowired
	private CouponService coupons;
	
	
	
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
	/*상품목록*/
	@RequestMapping("tables")
	public String tables(Model model) {
		List<Goods> listGoods = cs.list();
		List<Stock> stockList = ss.stockList();
		model.addAttribute("list", listGoods);
		model.addAttribute("stockList", stockList);
		return "/management/tables";
	}
	/*쿠폰*/
	@RequestMapping("cpAll")
	public String cpAll(Model model) {
		List<Coupon> cpAll = coupons.cpAll();
		model.addAttribute("cpAll",cpAll);
		return "/management/cpAll";
	}
	/*쿠폰리스트*/
	@RequestMapping("cpList")
	public String cpList(Model model) {
		List<Couponlist> listAllCoupon = cps.listAllCoupon();
		model.addAttribute("listAllCoupon",listAllCoupon);
		return "/management/cpList";
	}
	/*새로운 쿠폰 등록*/
	@RequestMapping("newCpForm")
	public String newCpForm() {
		return "/management/newCpForm";
	}
	@RequestMapping("addCoupon" )
	public String addCoupon(String cp_id,int cp_benefit,Model model) {
		Coupon coupon = new Coupon();
		coupon.setCp_id(cp_id);
		coupon.setCp_benefit((cp_benefit));
		int result = coupons.addCoupon(coupon);
		model.addAttribute("result",result);
		return "redirect:cpList.do";
	}
/*	@RequestMapping("addCoupon")
	public String addCoupon(Coupon coupon,Model model) {
		int result = coupons.addCoupon(coupon);
		model.addAttribute("result",result);
		return "redirect:cpList.do";
	}*/
	/*고객에게 쿠폰 등록*/
	@RequestMapping("registercoupon")
	public String registercoupon(Couponlist couponlist, Model model) {
		int result = cps.regCouponlist(couponlist);
		model.addAttribute("result",result);
		return "redirect:cpList.do";
	}
	@RequestMapping("cpInsertForm")
	public String cpInsertForm(Model model) {
		List<Coupon> cpAll = coupons.cpAll();
		model.addAttribute("cpAll",cpAll);
		List<Member> listAll = ms.listAll();
		model.addAttribute("listAll", listAll);
		return "/management/cpInsertForm";
	}
	
	
	
}
