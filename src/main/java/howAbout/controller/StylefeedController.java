package howAbout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StylefeedController {
	
	@RequestMapping("stylefeed")
	public String stylefeed() {
		return "stylefeed";
	}

}
