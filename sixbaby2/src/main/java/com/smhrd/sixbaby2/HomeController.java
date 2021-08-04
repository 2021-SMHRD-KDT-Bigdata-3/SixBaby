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

	// 1. ȸ������,����,Ż��
	@RequestMapping("/memberInsert.do")
	public String memberInsert(MemberVO vo1, BabyVO vo2) {
		mapper.memberInsert(vo1, vo2);
		return "redirect:/main.do";
	}

	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(MemberVO vo) {
		mapper.memberUpdate(vo);
		return "redirect:/��ġ.do";
	}

	@RequestMapping("/memberDelete.do")
	public String memberDelete(MemberVO vo) {
		mapper.memberDelete(vo);
		return "redirect:/main.do";
	}

	// 2. �α���
	@RequestMapping("/login.do")
	public String login(MemberVO vo) {
		mapper.login(vo);
		return "redirect:/��ġ.do";
	}

	// 3. Ŀ�´�Ƽ(��ü, ����, �ۼ�, ����, ����)
	@RequestMapping("/boardList.do")
	public String boardList(HttpServletRequest request) {
		List<BoardsVO> list = mapper.boardList();
		request.setAttribute("list", list);
		return "redirect:/��ġ.do";
	}

	@RequestMapping("/boardContent.do")
	public String boardContent(@RequestParam("board_no") int board_no, Model model) {
		BoardsVO vo = mapper.boardContent(board_no);
		model.addAttribute("vo", vo);
		return "redirect:/��ġ.do";
	}

	@RequestMapping("/boardInsert.do")
	public String boardInsert(BoardsVO vo) {
		mapper.boardInsert(vo);
		return "redirect:/��ġ.do";
	}

	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(BoardsVO vo) {
		mapper.boardUpdate(vo);
		return "redirect:/��ġ.do";
	}

	@RequestMapping("/boardDelete.do")
	public String boardDelete(@RequestParam("board_no") int board_no) {
		mapper.boardDelete(board_no);
		return "redirect:/��ġ.do";
	}
	
	
	
	
//-----------------------------------------------------------	

	/*
	 * @RequestMapping("/boardForm.do") public String boardForm() { return
	 * "boardForm"; // boardForm.jsp }
	 */

	// ���ø�����
	@RequestMapping(value = "/events.do")
	public String events() {
		return "events";
	}

	@RequestMapping(value = "/families.do")
	public String families() {
		return "families";
	}
	
	// ���� �α��� �ϱ� �� ������
		@RequestMapping(value = "/main_login.do")
		public String main_login() {
			return "main_login";
		}
	// 회원가입창
		@RequestMapping(value = "/main_join.do")
		public String main_join() {
			return "main_login";
		}


		// ���� �α��� �� ������
		@RequestMapping(value = "/main_logout.do")
		public String main_logout() {
			return "main_logout";
		}
		
	// Ŀ�´�Ƽ

	@RequestMapping(value = "/community.do")
	public String community() {
		return "community";
	}
	
	// ���� ��û
	@RequestMapping(value = "/help.do")
	public String help() {
		return "help";
	}

	// ��ǰ ��õ
	@RequestMapping(value = "/recommendation.do")
	public String recommendation() {
		return "recommendation";
	}
	
	//�Խ��� �ۼ�
		@RequestMapping(value="/boardWrite.do")
	    public String boardWrite() {
	        return "boardWrite";
	    }
	



	// iot �׽�Ʈ�� ������
	@RequestMapping("/iot.do")
	public String iot() {
		return "iot";
	}

/**	@RequestMapping(value = "/iot.do", method = RequestMethod.POST, produces = { "application/json; charset=utf-8" })
	public @ResponseBody Map<String, Object> iot(@RequestBody Map<String, Object> tmp) {
		System.out.println("data : " + tmp.get("data"));
		Map<String, Object> retVal = new HashMap<String, Object>();
		return retVal;
	}
**/
	
}
