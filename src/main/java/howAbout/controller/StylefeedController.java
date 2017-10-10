package howAbout.controller;

import java.util.List;

import org.apache.log4j.net.SyslogAppender;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import howAbout.model.stylefeed.Stylefeed;
import howAbout.service.stylefeed.StylefeedService;

@Controller
public class StylefeedController {
	@Autowired
	private StylefeedService ss;
	
	@RequestMapping("stylefeed")
	public String stylefeed(Model model) {
		List<Stylefeed> list = ss.feedlist();
		model.addAttribute("list",list);
		System.out.println(list);
		return "stylefeed";
	}

}
