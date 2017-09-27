package howAbout.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.models.Member;
import howAbout.service.cart.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	
	@RequestMapping("main")
	public String main() {
		return "main";
	}
	@RequestMapping("about")
	public String about() {
		return "about";
	}
	@RequestMapping("joinForm")
	public String joinForm() {
		return "joinForm";
	}
/*	@RequestMapping("join")
	public String join(Member member, Model model) {
		int result = ms.insert(member);
		model.addAttribute("result", result);
		return "join";
	}*/
}
