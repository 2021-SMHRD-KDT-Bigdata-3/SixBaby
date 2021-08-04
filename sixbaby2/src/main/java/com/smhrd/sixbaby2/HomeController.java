package com.smhrd.sixbaby2;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.mapper.BabyVO;
import com.smhrd.mapper.BoardsVO;
import com.smhrd.mapper.Mapper;
import com.smhrd.mapper.MemberVO;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);
		return "home";
	}


	@RequestMapping(value = "/main.do")
	public String main() {
		return "main";
	}


	@Autowired
	private Mapper mapper;

	// 1. 회원가입, 회원수정, 회원탈퇴
	/*@RequestMapping("/memberInsert.do")
	public String memberInsert(MemberVO vo1, BabyVO vo2) {
		mapper.memberInsert(vo1, vo2);
		return "redirect:/main.do";
	}*/

	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(MemberVO vo) {
		mapper.memberUpdate(vo);
		return "redirect:/占쏙옙치.do";
	}

	@RequestMapping("/memberDelete.do")
	public String memberDelete(MemberVO vo) {
		mapper.memberDelete(vo);
		return "redirect:/main.do";
	}

	// 2. 로그인
	@RequestMapping("/login.do")
	public String login(MemberVO vo) {
		mapper.login(vo);
		return "redirect:/占쏙옙치.do";
	}

	// 3. 커뮤니티(전체, 열람, 작성, 수정, 삭제)
	@RequestMapping("/boardList.do")
	public String boardList(HttpServletRequest request) {
		List<BoardsVO> list = mapper.boardList();
		request.setAttribute("list", list);
		return "redirect:/占쏙옙치.do";
	}

	@RequestMapping("/boardContent.do")
	public String boardContent(@RequestParam("board_no") int board_no, Model model) {
		BoardsVO vo = mapper.boardContent(board_no);
		model.addAttribute("vo", vo);
		return "redirect:/占쏙옙치.do";
	}

	@RequestMapping("/boardInsert.do")
	public String boardInsert(BoardsVO vo) {
		mapper.boardInsert(vo);
		return "redirect:/占쏙옙치.do";
	}

	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(BoardsVO vo) {
		mapper.boardUpdate(vo);
		return "redirect:/占쏙옙치.do";
	}

	@RequestMapping("/boardDelete.do")
	public String boardDelete(@RequestParam("board_no") int board_no) {
		mapper.boardDelete(board_no);
		return "redirect:/占쏙옙치.do";
	}
	
	
	
	
//-----------------------------------------------------------	

	/*
	 * @RequestMapping("/boardForm.do") public String boardForm() { return
	 * "boardForm"; // boardForm.jsp }
	 */

	// 占쏙옙占시몌옙占쏙옙占쏙옙
	@RequestMapping(value = "/events.do")
	public String events() {
		return "events";
	}

	@RequestMapping(value = "/families.do")
	public String families() {
		return "families";
	}
	
	// 占쏙옙占쏙옙 占싸깍옙占쏙옙 占싹깍옙 占쏙옙 占쏙옙占쏙옙占쏙옙
		@RequestMapping(value = "/main_login.do")
		public String main_login() {
			return "main_login";
		}
	// �쉶�썝媛��엯李�
		@RequestMapping(value = "/main_join.do")
		public String main_join() {
			return "main_join";
		}


		// 占쏙옙占쏙옙 占싸깍옙占쏙옙 占쏙옙 占쏙옙占쏙옙占쏙옙
		@RequestMapping(value = "/main_logout.do")
		public String main_logout() {
			return "main_logout";
		}
		
	// 커占승댐옙티

	@RequestMapping(value = "/community.do")
	public String community() {
		return "community";
	}
	
	// 占쏙옙占쏙옙 占쏙옙청
	@RequestMapping(value = "/help.do")
	public String help() {
		return "help";
	}

	// 占쏙옙품 占쏙옙천
	@RequestMapping(value = "/recommendation.do")
	public String recommendation() {
		return "recommendation";
	}
	
	//占쌉쏙옙占쏙옙 占쌜쇽옙
		@RequestMapping(value="/boardWrite.do")
	    public String boardWrite() {
	        return "boardWrite";
	    }

	// iot 占쌓쏙옙트占쏙옙 占쏙옙占쏙옙占쏙옙
	@RequestMapping("/iot.do")
	public String iot() {
		return "iot";
	}
	
	@RequestMapping("/correction.do")
	public String correction() {
		return "correction";
	}
	
/**	@RequestMapping(value = "/iot.do", method = RequestMethod.POST, produces = { "application/json; charset=utf-8" })
	public @ResponseBody Map<String, Object> iot(@RequestBody Map<String, Object> tmp) {
		System.out.println("data : " + tmp.get("data"));
		Map<String, Object> retVal = new HashMap<String, Object>();
		return retVal;
	}
**/
	
}
