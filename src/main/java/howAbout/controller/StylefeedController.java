package howAbout.controller;

import java.util.List;
import java.util.Map;

import javax.rmi.ssl.SslRMIClientSocketFactory;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import howAbout.model.Member;
import howAbout.model.Stylefeed;
import howAbout.service.stylefeed.StylefeedService;

@Controller
public class StylefeedController {
	@Autowired
	private StylefeedService ss;
	
	//스타일피드 페이지 메인 
	@RequestMapping("stylefeed")
	public String stylefeed(HttpSession session,Model model) {
		Member member = (Member) session.getAttribute("member");
		List<Stylefeed> list = ss.feedlist();
		model.addAttribute("list",list);
		model.addAttribute("member",member);
		return "stylefeed";
	}
	//스타일피드 글 등록 
	@RequestMapping("uploadFeedImg")
	public String uploadFeedImg(HttpSession session,HttpServletRequest request, @RequestParam("input_img") MultipartFile input_img,@RequestParam("input_content") String input_content, Member feed_mem ,Model model) {
		//System.out.println("사용자:"+member.getMem_name());
		//1.피드 이미지 등록	
		//1-1.이미지 파일 저장
		
		String realPath = "C:/Git/projects/src/main/webapp/resources/images/feeds/";
		//String realPath = request.getSession().getServletContext().getRealPath("resources/images/feeds/");
		/*String savePath = "resources/images/";*/
		String originalFilename=input_img.getOriginalFilename(); //fileName.jpg
		//String onlyFileName = originalFilename.substring(0,originalFilename.indexOf("."));//fileName*/
		String extension = originalFilename.substring(originalFilename.indexOf("."));//.jpg
		
		DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd-HHmmss");
		Date date = new Date();
		
		String rename = "feed_"+feed_mem.getMem_id()+"_"+dateFormat.format(date)+extension;//feed_회원아이디_20150721-140750.jpg
		String dbPath=rename; //경로(resources/images/는 mysql ts_img_path 에 default값으로 들어감
		if(!input_img.isEmpty()) {
			try {
				//byte[] bytes = input_img.getBytes();
				input_img.transferTo(new File(realPath+rename));
				System.out.println("이미지파일 업로드 성공");
				model.addAttribute("resultMsg","이미지파일 업로드 성공!");
			}catch(Exception e) {
				model.addAttribute("resultMsg", "업로드 실패");
				System.out.println(e.getMessage());
				System.out.println("이미지파일 업로드 실패");
			}
		}else {
			model.addAttribute("resultMsg","업로드할 이미지를 선택하세요");
		}
		//1-2 이미지 파일 경로 DB에 저장
		System.out.println(input_content);
		Stylefeed sf = new Stylefeed();
		sf.setTs_content(input_content);
		sf.setTs_img_name(dbPath);
		sf.setMem_id(feed_mem.getMem_id());
		sf.setMem_name(feed_mem.getMem_name());
		int result = ss.feedWrite(sf);
		System.out.println("이미지DB저장결과 result값:"+result);
		return "redirect:/stylefeed.do"; //피드 등록 후 스타일피드 메인으로?
	}
	
	
	
	//피드페이지 
	@RequestMapping(value= "feeddetail", method=RequestMethod.POST)
	
	public @ResponseBody List feeddetail(@RequestParam("ts_id") int ts_id,HttpServletRequest request, Model model) {
		System.out.println("스타일피드 컨트롤러 실행");
		//int ts_id = Integer.parseInt(request.getParameter("ts_id"));
				System.out.println("ts_id:"+ts_id);
		List<Stylefeed> feed = ss.feedDetail(ts_id);
		System.out.println("feeddetail서비스");
		System.out.println("스타일피드 페이지 컨트롤러 정상작동");
		return feed;
	}
	//마이페이지 
	@RequestMapping("mypage")
	public String mypage(Model model, @RequestParam("mem_id") String mem_id) {
		System.out.println(mem_id);
		List<Stylefeed> list = ss.myfeedlist(mem_id);
		model.addAttribute("list",list);
		return "mypage";
	}

}
