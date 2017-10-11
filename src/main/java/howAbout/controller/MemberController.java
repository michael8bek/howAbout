package howAbout.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.Member;
import howAbout.service.member.MemberService;
import javafx.scene.control.Alert;

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
			/*session.setAttribute("mem_id", mem.getMem_id());*/
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
}
