package howAbout.controller;

import java.util.List;
import java.util.Map;

import javax.rmi.ssl.SslRMIClientSocketFactory;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.net.SyslogAppender;
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
import howAbout.model.Tsreply;
import howAbout.service.stylefeed.StylefeedService;

@Controller
public class StylefeedController {
	@Autowired
	private StylefeedService ss;

	//테스트용 검색결과
	@RequestMapping("search")
	public String search(@RequestParam String search, HttpServletRequest request,Model model) {
	System.out.println(search);
	model.addAttribute("search",search);
	return "searchresult";
	}


	// 스타일피드 페이지 메인
	@RequestMapping("stylefeed")
	public String stylefeed(HttpSession session, HttpServletRequest request, Model model) {
		String pType = (String) session.getAttribute("pType");
		System.out.println("페이지타입(pType):"+pType);
		List list = null;
		List rlist = null;
		if(pType == null || pType.equals("default")) {
			list = ss.feedlist();
			rlist = ss.tsReplyList();
			session.setAttribute("pType", "default");
		}else if(pType=="likeOrder") {
			list = ss.feedlist_orderLike();
			rlist = ss.tsReplyList();
		}else if(pType=="recentOrder") {
			list = ss.feedlist_orderRecent();
			rlist = ss.tsReplyList();
		}

		model.addAttribute("reply", rlist);
		model.addAttribute("list", list);
		Member member = (Member) session.getAttribute("member");
		model.addAttribute("member", member);
		return "stylefeed";
	}

	// 피드 리스트 정렬(인기순, 최신순(기본값))
	@RequestMapping(value = "feedorder", method = RequestMethod.POST)
	public @ResponseBody Map<String,List> feedorder(@RequestParam("listType") String listType, Model model, HttpSession session) {
		System.out.println("피드정렬 컨트롤러 실행");
		List list = null;
		List rlist = null;
		rlist = ss.tsReplyList();
		System.out.println("댓글리스트"+rlist);
		HashMap<String, List> map = new HashMap<String, List>();
		if(listType.equals("like")){  //인기순
			System.out.println("정렬타입:" + listType);
			list = ss.feedlist_orderLike();
			rlist = ss.tsReplyList();
			map.put("list", list);
			map.put("rlist", rlist);
			session.setAttribute("pType", "likeOrder");
		}else if(listType.equals("recent")) {  //최근등록순
			System.out.println("정렬타입:" + listType);
			list = ss.feedlist_orderRecent();
			rlist = ss.tsReplyList();
			map.put("list", list);
			map.put("rlist", rlist);
			session.setAttribute("pType", "recentOrder");
		};

		try {
			Thread.sleep(650);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		return map;
	}

	// 스타일피드 글 등록
	@RequestMapping("uploadFeedImg")
	public String uploadFeedImg(HttpSession session, HttpServletRequest request,
			@RequestParam("input_img") MultipartFile input_img, @RequestParam("input_content") String input_content,
			Member feed_mem, Model model) {
		// System.out.println("사용자:"+member.getMem_name());
		// 1.피드 이미지 등록
		// 1-1.이미지 파일 저장

		// String realPath =
		// "C:/Users/Administrator/git/howAbout/src/main/webapp/resources/images/feeds/";
		String realPath = request.getSession().getServletContext().getRealPath("resources/images/feeds/");
		/* String savePath = "resources/images/"; */
		String originalFilename = input_img.getOriginalFilename(); // fileName.jpg
		// String onlyFileName =
		// originalFilename.substring(0,originalFilename.indexOf("."));//fileName*/
		String extension = originalFilename.substring(originalFilename.indexOf("."));// .jpg

		DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd-HHmmss");
		Date date = new Date();

		String rename = "feed_" + feed_mem.getMem_id() + "_" + dateFormat.format(date) + extension;// feed_회원아이디_20150721-140750.jpg
		String dbPath = rename; // 경로(resources/images/는 mysql ts_img_path 에 default값으로 들어감
		if (!input_img.isEmpty()) {
			try {
				// byte[] bytes = input_img.getBytes();
				input_img.transferTo(new File(realPath + rename));
				System.out.println("이미지파일 업로드 성공");
				model.addAttribute("resultMsg", "이미지파일 업로드 성공!");
			} catch (Exception e) {
				model.addAttribute("resultMsg", "업로드 실패");
				System.out.println(e.getMessage());
				System.out.println("이미지파일 업로드 실패");
			}
		} else {
			model.addAttribute("resultMsg", "업로드할 이미지를 선택하세요");
		}
		// 1-2 이미지 파일 경로 DB에 저장
		System.out.println(input_content);
		Stylefeed sf = new Stylefeed();
		sf.setTs_content(input_content);
		sf.setTs_img_name(dbPath);
		sf.setMem_id(feed_mem.getMem_id());
		sf.setMem_name(feed_mem.getMem_name());
		int result = ss.feedWrite(sf);
		System.out.println("이미지DB저장결과 result값:" + result);
		return "redirect:/stylefeed.do"; // 피드 등록 후 스타일피드 메인으로?
	}

	// 피드상세페이지
	@RequestMapping(value = "feeddetail", method = RequestMethod.POST)
	public @ResponseBody Map<String,List> feeddetail(@RequestParam("ts_id") int ts_id) {
		System.out.println("피드상세페이지 컨트롤러 실행");
		HashMap<String, List> map = new HashMap<String,List>();
		List feed = ss.feedDetail(ts_id);
		List rlist = ss.feedReplyList(ts_id);
		map.put("list", feed);
		map.put("rlist", rlist);
		return map;
	}
	//피드 댓글 등록
	@RequestMapping(value = "feedreplywrite", method = RequestMethod.POST)
	public void feedreplywrite(HttpServletRequest request, Model model) {
		System.out.println("스타일피드 댓글 작성 컨트롤러 실행");
		int ts_id = Integer.parseInt(request.getParameter("ts_id"));
		String mem_id= request.getParameter("mem_id");
		String reply_content=request.getParameter("reply_content");
		Tsreply tr = new Tsreply();
		tr.setTs_id(ts_id);
		tr.setMem_id(mem_id);
		tr.setReply_content(reply_content);
		tr.setReply_type("feed");
		int replyResult = ss.feedReplyWrite(tr);
		if(replyResult==1) {
			System.out.println("트렌드쉐어 댓글 등록 성공");
		}else {
			System.out.println("트렌드쉐어 댓글 등록 실패");
		}
		System.out.println("insert후 reply_id뽑기:"+tr.getReply_id());
		System.out.println("insert후 ts_id뽑기:"+tr.getTs_id());

	}
	// 마이페이지
	@RequestMapping("mypage")
	public String mypage(Model model, @RequestParam("mem_id") String mem_id) {
		System.out.println(mem_id);
		List<Stylefeed> list = ss.myfeedlist(mem_id);
		model.addAttribute("list", list);
		return "mypage";
	}

}
