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
	public String home() {
		return "main";
	}

	@Autowired
	private Mapper mapper;

	// 1. 회원가입,수정,탈퇴
	@RequestMapping("/memberInsert.do")
	public String memberInsert(MemberVO vo) {
		mapper.memberInsert(vo);
		return "redirect:/main.do";
	}

	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(MemberVO vo) {
		mapper.memberUpdate(vo);
		return "redirect:/위치.do";
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
		return "redirect:/위치.do";
	}

	// 3. 커뮤니티(전체, 열람, 작성, 수정, 삭제)
	@RequestMapping("/boardList.do")
	public String boardList(HttpServletRequest request) {
		List<BoardsVO> list = mapper.boardList();
		request.setAttribute("list", list);
		return "redirect:/위치.do";
	}

	@RequestMapping("/boardContent.do")
	public String boardContent(@RequestParam("board_no") int board_no, Model model) {
		BoardsVO vo = mapper.boardContent(board_no);
		model.addAttribute("vo", vo);
		return "redirect:/위치.do";
	}

	@RequestMapping("/boardInsert.do")
	public String boardInsert(BoardsVO vo) {
		mapper.boardInsert(vo);
		return "redirect:/위치.do";
	}

	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(BoardsVO vo) {
		mapper.boardUpdate(vo);
		return "redirect:/위치.do";
	}

	@RequestMapping("/boardDelete.do")
	public String boardDelete(@RequestParam("board_no") int board_no) {
		mapper.boardDelete(board_no);
		return "redirect:/위치.do";
	}

	/*
	 * @RequestMapping("/boardForm.do") public String boardForm() { return
	 * "boardForm"; // boardForm.jsp }
	 */



	// 템플릿적용
	@RequestMapping(value = "/events.do")
	public String events() {
		return "events";
	}

	@RequestMapping(value = "/families.do")
	public String families() {
		return "families";
	}

	@RequestMapping(value = "/community.do")
	public String seremons() {
		return "community";
	}
	
	@RequestMapping(value = "/join.do")
	public String join() {
		return "join";
	}
	
	//게시판
		@RequestMapping(value="/boardWrite.do")
	    public String boardWrite() {
	        return "boardWrite";
	    }
	


	// iot 테스트용 페이지
	@RequestMapping("/iot.do")
	public String iot() {
		return "iot";
	}
}
