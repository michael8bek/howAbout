package howAbout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping("main")
	public String main() {
		System.out.println("뭐지");
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
}
