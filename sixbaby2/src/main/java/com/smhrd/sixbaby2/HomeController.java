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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smhrd.mapper.BabyVO;
import com.smhrd.mapper.BoardsVO;
import com.smhrd.mapper.CommentsVO;
import com.smhrd.mapper.DiaryVO;
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

	@Autowired
	private Mapper mapper;

	// 1. 회원가입, 회원수정, 회원탈퇴
	@RequestMapping("/memberInsert.do")
	public String memberInsert(MemberVO vo) {
		mapper.memberInsert(vo);
		return "redirect:/main.do";
	}

	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(MemberVO vo) {
		mapper.memberUpdate(vo);
		return "redirect:/main.do";
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
		return "redirect:/main.do";
	}

	// 3. 커뮤니티(전체, 열람, 작성, 수정, 삭제)
	@RequestMapping("/boardList.do")
	public String boardList(Model model) {
		List<BoardsVO> list = mapper.boardList();
		model.addAttribute("list", list);
		return "community";
	}

	@RequestMapping("/itemList.do")
	public String itemList(Model model) {
		List<BoardsVO> list = mapper.itemList();
		model.addAttribute("list", list);
		return "community";
	}

	@RequestMapping("/helpList.do")
	public String helpList(Model model) {
		List<BoardsVO> list = mapper.helpList();
		model.addAttribute("list", list);
		return "community";
	}

	@RequestMapping("/tipList.do")
	public String tipList(Model model) {
		List<BoardsVO> list = mapper.tipList();
		model.addAttribute("list", list);
		return "community";
	}

	@RequestMapping("/boardContent.do")
	public String boardContent(@RequestParam("board_no") int board_no, Model model) {
		BoardsVO vo = mapper.boardContent(board_no);
		model.addAttribute("vo", vo);
		return "boardDetail";
	}

	@RequestMapping("/boardInsert.do")
	public String boardInsert(@ModelAttribute BoardsVO vo) {
		mapper.boardInsert(vo);
		String result = "";
		if (vo.getCategory().equals("free")) {
			result = "boardList";
		} else if (vo.getCategory().equals("item")) {
			result = "itemList";
		} else if (vo.getCategory().equals("tip")) {
			result = "tipList";
		}
		return "redirect:/"+result+".do";
	}

	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(Model model, BoardsVO vo) {
		mapper.boardUpdate(vo);
		System.out.println(vo);
		String result = "";
		if (vo.getCategory().equals("free")) {
			result = "boardList";
		} else if (vo.getCategory().equals("item")) {
			result = "itemList";
		} else if (vo.getCategory().equals("tip")) {
			result = "tipList";
		}
		return "redirect:/"+result+".do";
	}

	@RequestMapping("/boardDelete.do")
	public String boardDelete(@RequestParam("board_no") int board_no) {
		mapper.boardDelete(board_no);
		return "redirect:/community.do";
	}

	// 4. 댓글(열람, 작성, 수정, 삭제)
	@RequestMapping("/commentList.do")
	public @ResponseBody List<CommentsVO> commentList() {
		List<CommentsVO> list = mapper.commentList();
		return list;
	}

	@RequestMapping("/commentInsert.do")
	public String commentInsert(CommentsVO vo) {
		mapper.commentInsert(vo);
		return "redirect:/boardDetail.do";
	}

	@RequestMapping("/commentUpdate.do")
	public String commentUpdate(CommentsVO vo) {
		mapper.commentUpdate(vo);
		return "redirect:/boardDetail.do";
	}

	@RequestMapping("/commentDelete.do")
	public String commentDelete(@RequestParam("comment_no") int comment_no) {
		mapper.commentDelete(comment_no);
		return "redirect:/boardDetail.do";
	}

	// 5. 육아일기(열람, 작성, 수정)
	@RequestMapping("/diaryContent.do")
	public String diaryContent(@RequestParam("diary_no") int diary_no, Model model) {
		DiaryVO vo = mapper.diaryContent(diary_no);
		model.addAttribute("vo", vo);
		return "redirect:/babydiary.do";
	}

	@RequestMapping("/diaryInsert.do")
	public String diaryInsert(DiaryVO vo) {
		mapper.diaryInsert(vo);
		return "redirect:/babydiary.do";
	}

	@RequestMapping("/diaryUpdate.do")
	public String diaryUpdate(DiaryVO vo) {
		mapper.diaryUpdate(vo);
		return "redirect:/babydiary.do";
	}

//------------------------------------------------------------------------------------	

	// 페이지이동
	@RequestMapping(value = "/main.do")
	public String main(Model model) {
		model.addAttribute("login", null);
		return "main";
	}

	@RequestMapping(value = "/mypage.do")
	public String mypage() {
		return "mypage";
	}

	@RequestMapping(value = "/boardWrite.do")
	public String boardWrite() {
		return "boardWrite";
	}

	@RequestMapping(value = "/boardDetail.do")
	public String boardDetail() {
		return "boardDetail";
	}

	@RequestMapping(value = "/correction.do")
	public String correction() {
		return "correction";
	}

	@RequestMapping(value = "/babyCorrection.do")
	public String babyCorrection() {
		return "babyCorrection";
	}

}
