package howAbout.controller;

import java.util.List;
import java.util.Map;

import javax.mail.Session;
import javax.rmi.ssl.SslRMIClientSocketFactory;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthScrollBarUI;

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
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import howAbout.model.Member;
import howAbout.model.Stylefeed;
import howAbout.model.Tsreply;
import howAbout.service.stylefeed.StylefeedService;
import scala.annotation.meta.setter;
import scala.util.parsing.json.JSONArray;
import scala.util.parsing.json.JSONObject;

@Controller
public class StylefeedController {
	@Autowired
	private StylefeedService ss;

	//검색결과 페이지 이동
	@RequestMapping("search")
	public String search(@RequestParam String search, HttpServletRequest request,Model model) {
	System.out.println(search);
	List list = ss.feedSearch(search);
	model.addAttribute("list",list);
	model.addAttribute("search",search);
	return "searchresult";	
	}
/*	//검색결과
	@RequestMapping(value = "searchresult", method = RequestMethod.POST)
	public @ResponseBody List searchresult(@RequestParam("search") String search) {
		System.out.println("피드상세페이지 컨트롤러 실행");
		System.out.println("검색어:"+search);
		List list = ss.feedSearch(search);
		System.out.println("검색결과"+list);
		return list;
	}*/
	
	// 스타일피드 페이지 메인
	@RequestMapping("stylefeed")
	public String stylefeed(HttpSession session, HttpServletRequest request, Model model) {
		System.out.println("페이지타입:"+request.getParameter("pageType"));
			//session.setAttribute("main", pageType);
		Member member = (Member) session.getAttribute("member");
		model.addAttribute("member", member);
		return "stylefeed";
	};
	

	// 피드 리스트 정렬(인기순, 최신순(기본값))
	@RequestMapping(value = "feedorder", method = RequestMethod.POST)
	public @ResponseBody Map<String,List> feedorder(@RequestParam("pageType") String pageType, Model model, HttpSession session) {
		System.out.println("피드정렬 컨트롤러 실행");
		
		List list = null;
		List rlist = null;
		HashMap<String, List> map = new HashMap<String, List>();
		if(pageType.equals("like")){  //인기순
			System.out.println("페이지타입2:" + pageType);
			list = ss.feedlist_orderLike();
			rlist = ss.tsReplyList();
			map.put("list", list);
			map.put("rlist", rlist);
			model.addAttribute("pageType","like");
			//session.setAttribute("pageType", "like");
		}else if(pageType.equals("recent") || pageType == null) {  //최근등록순
			System.out.println("페이지타입3:" + pageType);
			list = ss.feedlist_orderRecent();
			rlist = ss.tsReplyList();
			List allreplycount = ss.allreplycount();
			map.put("list", list);
			map.put("rlist", rlist);
			map.put("reply", allreplycount);
			model.addAttribute("pageType", "recent");
			//session.setAttribute("pageType", "recent");
		};
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
		System.out.println("글번호:"+ts_id);
		HashMap<String, List> map = new HashMap<String,List>();
		List feed = ss.feedDetail(ts_id);
		map.put("list", feed);
		if(feed.isEmpty()) {
			List feed_d = ss.feedDetailDft(ts_id);
			map.put("list", feed_d);
			System.out.println("댓글수 없이 뽑기:"+feed_d);
		}
		//해당 피드 조회수 +1 
		ss.feedRead(ts_id);
		//해당 피드글에 담긴 댓글들 정보 불러오기
		List rlist = ss.feedReplyList(ts_id);
		System.out.println(feed);
		System.out.println(rlist);
		map.put("rlist", rlist);
		return map;
	}
	//피드 댓글 등록
	@RequestMapping(value = "feedreplywrite", method = RequestMethod.POST)
	public @ResponseBody Map<String,List> feedreplywrite(HttpServletRequest request, Model model, HttpSession session) {
		System.out.println("스타일피드 댓글 작성 컨트롤러 실행");
		int ts_id = Integer.parseInt(request.getParameter("ts_id"));
		String mem_id = request.getParameter("mem_id");
		String mem_name = request.getParameter("mem_name");
/*		String mem_id= (String) session.getAttribute("mem_id");
		String mem_name=(String) session.getAttribute("mem_name");*/
		String reply_content=request.getParameter("reply_content");
		HashMap<String, List> map = new HashMap<String, List>();
		List list = null;
		Stylefeed sf = new Stylefeed();
		sf.setTs_id(ts_id);
		sf.setMem_id(mem_id);
		sf.setMem_name(mem_name);
		sf.setReply_content(reply_content);
		
		//특정 피드 글에 댓글 DB등록과 동시에 해당 글에 달린 댓글 총 갯수 출력
		List reply_count = ss.feedReplyWrite(sf);
			System.out.println("트렌드쉐어 댓글 등록 성공");
			System.out.println("댓글갯수:"+reply_count);
				
		//여기부터는 해당 피드글에 대한 댓글정보 출력
		list = ss.feedReply(sf);
		map.put("list", list);
		map.put("reply", reply_count);
		return map;
	}
	//피드 좋아요 반영
	@RequestMapping(value = "feedlike", method = RequestMethod.POST)
	public @ResponseBody int feedlike(@RequestParam("ts_id") int ts_id, Model model, HttpSession session) {
		System.out.println("스타일피드 댓글 작성 컨트롤러 실행");
		int ts_count = ss.feedlike(ts_id);
		System.out.println("글좋아요수"+ts_count);
		return ts_count;
	}
	
	//MD페이지
	@RequestMapping("mdpage")
	public String mdpage(Model model) {
		String search ="가을";
		List list = ss.feedSearch(search);
		List rlist = ss.tsReplyList();
		System.out.println("mD페이지");
		model.addAttribute("list",list);
		model.addAttribute("reply",rlist);
		return "mdpage";
	}
	
	
	// 마이페이지
	@RequestMapping("mypage")
	public String mypage(Model model, @RequestParam("mem_id") String mem_id) {
		System.out.println(mem_id);
		Stylefeed sf = new Stylefeed();
		List<Stylefeed> list = ss.myfeedlist(mem_id);
		List memberInfo = ss.memberInfo(mem_id);
		System.out.println("멤버인포 겟:"+memberInfo.size());
		List rlist = ss.tsReplyList();
		model.addAttribute("list", list);
		model.addAttribute("reply",rlist);
		System.out.println("댓글사이즈:"+rlist.size());
		model.addAttribute("memberInfo",memberInfo);
		return "mypage";
	}
	
	//피드 더보기 
	@RequestMapping("feedmore")
	public @ResponseBody Map feedmore(@RequestParam String current_pageNum, Model model, HttpSession session) {
		String more="more";
		System.out.println("피드더보기 실행");
		System.out.println("current_pageNum:"+current_pageNum);
		//스타일피드 페이지 메인 페이징작업
		int totalcount = ss.feedcount(); //게시글 총 개수
		System.out.println("게시글 총 개수:"+totalcount);
		final int ROWPERPAGE = 8;
		
		int totalpage = totalcount / ROWPERPAGE; // 총 페이지
		
		if(totalcount % ROWPERPAGE > 0) {
			totalpage = totalpage + 1  ;
		} 
		int currentPage = Integer.parseInt(current_pageNum);
		System.out.println("currentPage"+currentPage);
		int nextPage = currentPage+1;
		if(totalpage < nextPage ) {
			nextPage = totalpage;
		}
		System.out.println("다음페이지"+nextPage);
		int startpage = 1;  //시작페이지
		int endpage = totalpage; //마지막페이지
		System.out.println("마지막페이지:"+endpage);
		
		int startRow = (nextPage-1)*ROWPERPAGE+1; //페이지 내 첫번째 글번호
		System.out.println("startRow:"+startRow);
		int endRow = startRow + ROWPERPAGE-1;
		System.out.println("endRow:"+endRow);
		List list = ss.feedmore_recent(startRow, endRow);
		//List rlist = ss.tsReplyList();
		HashMap<String, List> map = new HashMap<String, List>();
		List pageList = new ArrayList<>();
		pageList.add(nextPage);
		pageList.add(totalpage);
		System.out.println("리스트삽입결과:"+pageList.size());
		map.put("list", list);
		map.put("page",pageList);
		return map;
	}

}
