package com.smhrd.sixbaby2;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.smhrd.mapper.BabyVO;
import com.smhrd.mapper.BabyconditionVO;
import com.smhrd.mapper.BoardsVO;
import com.smhrd.mapper.CommentsVO;
import com.smhrd.mapper.DiaryVO;
import com.smhrd.mapper.Mapper;
import com.smhrd.mapper.MemberVO;
import com.smhrd.mapper.SolutionVO;

@Controller
@SessionAttributes({"loginMember", "selectedDiary", "diaryList"})
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

	// 2. 로그인, 로그아웃
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(MemberVO vo, Model model) {
		MemberVO loginMember = mapper.login(vo);
		if (loginMember != null) {
			model.addAttribute("loginMember", loginMember);
			System.out.println("성공");
			return "redirect:/main.do";
		} else {
			System.out.println("실패");
			return "redirect:/main.do";
		}
	}

	@PostMapping("/logout.do")
	@ResponseBody
	public String logout(HttpSession session) {
		session.invalidate();
		System.out.println("ddd");
		return "success";
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
	public String boardInsert(BoardsVO vo) {
		mapper.boardInsert(vo);
		String result = "";
		if (vo.getCategory().equals("free")) {
			result = "boardList";
		} else if (vo.getCategory().equals("item")) {
			result = "itemList";
		} else if (vo.getCategory().equals("help")) {
			result = "helpList";
		}
		return "redirect:/" + result + ".do";
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
		} else if (vo.getCategory().equals("help")) {
			result = "helpList";
		}
		return "redirect:/" + result + ".do";
	}

	@RequestMapping("/boardDelete.do")
	public String boardDelete(@RequestParam("board_no") int board_no, @RequestParam("cate") String cate) {
		String result = "";
		mapper.boardDelete(board_no);
		if (cate.equals("free")) {
			result = "boardList";
		} else if (cate.equals("item")) {
			result = "itemList";
		} else if (cate.equals("help")) {
			result = "helpList";
		}
		return "redirect:/" + result + ".do";
	}

	// 4. 댓글(열람, 작성, 수정, 삭제)
	@RequestMapping("/commentList.do")
	public @ResponseBody List<CommentsVO> commentList(@RequestParam("board_no") int board_no) {
		List<CommentsVO> list = mapper.commentList(board_no);
		return list;
	}

	@RequestMapping("/commentInsert.do")
	public String commentInsert(CommentsVO vo, @RequestParam("board_no") int board_no) {
		mapper.commentInsert(vo);
		return "redirect:/boardContent.do?board_no=" + board_no;
	}

	@RequestMapping("/commentDelete.do")
	public String commentDelete(@RequestParam("comment_no") int comment_no, @RequestParam("board_no") int board_no) {
		mapper.commentDelete(comment_no);
		return "redirect:/boardContent.do?board_no=" + board_no;
	}

	// 5. 육아일기(열람, 작성, 수정)
	@RequestMapping("/diaryContent.do")
	public String diaryContent(DiaryVO diary, Model model) {
		List<DiaryVO> vo = mapper.diaryContent(diary);
		model.addAttribute("diaryList", vo);
		return "redirect:/diaryList.do";
	}
	@RequestMapping("/diaryList.do")
	public String diaryList() {
		return "showDiaryList";
	}
	
	@RequestMapping("/diaryDetail.do")
	public String diaryDetail(int diary_no, Model model) {
		DiaryVO vo = mapper.diaryDetail(diary_no);
		System.out.println(vo);
		model.addAttribute("selectedDiary", vo);
		return "forward:/showDiaryDetail.do";
	}
	
	@RequestMapping("/showDiaryDetail.do")
	public String showDiaryDetail() {
		return "showDiaryDetail";
	}

	@PostMapping("/diaryInsert.do")
	public String diaryInsert(DiaryVO vo) {
		mapper.diaryInsert(vo);
		return "forward:/babyDiary.do";
	}

	@RequestMapping("/diaryUpdate.do")
	public String diaryUpdate(DiaryVO vo, Model model) {
		mapper.diaryUpdate(vo);
		DiaryVO updatedDiaryVO = mapper.diaryDetail(vo.getDiary_no());
		System.out.println(updatedDiaryVO);
		model.addAttribute("selectedDiary", updatedDiaryVO);
		return "forward:/showDiaryDetail.do";
	}
	
	@RequestMapping("/showDiaryUpdate.do")
	public String showDiaryUpdate() {
		return "showDiaryUpdate";
	}

	// 6. 울음소리 분석(아기상태 삽입, 확인, 해결책 확인)
	@RequestMapping("/babyconditionInsert.do")
	public String babyconditionInsert(BabyconditionVO vo) {
		mapper.babyconditionInsert(vo);
		return "redirect:/voiceRecog.do";
	}
	
	@RequestMapping("/babyconditionCheck.do")
	public String babyconditionCheck(BabyconditionVO vo, Model model) {
		mapper.babyconditionCheck(vo);
		model.addAttribute("vo", vo);
		return "voiceRecog";
	}
	
	@RequestMapping("/cryAnalysis.do")
	public @ResponseBody SolutionVO cryAnalysis(@RequestParam("conditions") String conditions) {
		SolutionVO solution = mapper.cryAnalysis(conditions);
		System.out.println(solution);
		return solution;
	}

//------------------------------------------------------------------------------------	

	// 페이지이동
	@RequestMapping(value = "/main.do")
	public String main() {
		return "main";
	}

	@RequestMapping(value = "/mypage.do")
	public String mypage() {
		return "mypage";
	}

	@RequestMapping(value = "/boardWrite.do")
	public String boardWrite(@RequestParam("cate") String cate, Model model) {
		model.addAttribute("cate", cate);
		return "boardWrite";
	}

	@RequestMapping(value = "/boardDetail.do")
	public String boardDetail() {
		return "boardDetail";
	}

	@RequestMapping("/boardBack.do")
	public String boardBack(@RequestParam("cate") String cate) {
		String result = "";
		if (cate.equals("free")) {
			result = "boardList";
		} else if (cate.equals("item")) {
			result = "itemList";
		} else if (cate.equals("help")) {
			result = "helpList";
		}
		return "redirect:/" + result + ".do";
	}

	@RequestMapping(value = "/correction.do")
	public String correction() {
		return "correction";
	}

	@RequestMapping(value = "/babyCorrection.do")
	public String babyCorrection() {
		return "babyCorrection";
	}
	
	@RequestMapping("/babyDiary.do")
	public String babyDiary() {
		return "babyDiary";
}
	@RequestMapping(value = "/voiceRecog.do")
	public String voiceRecog(Model model) {
		model.addAttribute("ddong", "pup");
		System.out.println("성공");
		return "voiceRecog";
	}

}