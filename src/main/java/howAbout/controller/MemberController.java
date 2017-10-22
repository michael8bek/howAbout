package howAbout.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Goods;
import howAbout.model.Mdtext;
import howAbout.model.Member;
import howAbout.service.goods.GoodsService;
import howAbout.service.mdtext.MdtextService;
import howAbout.service.member.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	@Autowired
	private GoodsService gs;
	@Autowired
	private MdtextService mds;
	
	@RequestMapping("main")
	public String main(Model model, HttpSession session) {
		List<Goods> list = gs.list();
		model.addAttribute("list", list);
		session.setAttribute("pageDefault", "true"); //세션에 페이지별 타입(이름) 지정해서 페이지 구분;
		List<Mdtext> best = mds.list();
		model.addAttribute("best",best);
		return "main";
	}
	@RequestMapping("about")
	public String about() {
		return "about";
	}
	@RequestMapping("joinForm")
	public String joinForm() {
		return "member/joinForm";
	}
	@RequestMapping("join")
	public String join(Member member, Model model) {
		int result = ms.insert(member);
		model.addAttribute("result", result);
		return "member/join";
	}
	@RequestMapping("loginForm")
	public String loginForm() {
		return "member/loginForm";
	}
	@RequestMapping("login")
	public String login(Member member, Model model, HttpSession session) {
		int result = 0;
		Member mem = ms.select(member.getMem_id());
		if(mem == null) result = -1;
		else if (mem.getMem_pw().equals(member.getMem_pw())) {
			model.addAttribute("member", mem);
			session.setAttribute("mem_id", mem.getMem_id());
			session.setAttribute("member", mem);
			return "redirect:main.do";
		}
		model.addAttribute("result", result);
		return "member/login";
	}
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:main.do";
	}
	@RequestMapping("idChk")
	public String idChk(String mem_id, Model model) {
		Member member = ms.select(mem_id);
		String msg = "";
		if(member == null)
			msg = "사용가능 합니다.";
		else
			msg = "사용중인 아이디입니다.";
		model.addAttribute("msg", msg);
		return "member/idChk";
	}
}
