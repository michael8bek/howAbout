package howAbout.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.service.stylefeed.StylefeedService;

@Controller
public class StylefeedController {
	@Autowired
	private StylefeedService ss;
	
	@RequestMapping("stylefeed")
	public String stylefeed() {
		return "stylefeed";
	}

}
