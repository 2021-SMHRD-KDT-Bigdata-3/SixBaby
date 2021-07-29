package com.smhrd.sixbaby;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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

	@RequestMapping(value = "/index.do")
	public String home() {
		return "index";
	}

	@Autowired
	private Mapper mapper;

	// 1. 회원가입,수정,탈퇴
	@RequestMapping("/memberInsert.do")
	public String memberInsert(MemberVO vo) {
		mapper.memberInsert(vo);
		return "redirect:/위치.do";
	}

	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(MemberVO vo) {
		mapper.memberUpdate(vo);
		return "redirect:/위치.do";
	}

	@RequestMapping("/memberDelete.do")
	public String memberDelete(MemberVO vo) {
		mapper.memberDelete(vo);
		return "redirect:/위치.do";
	}

	// 2. 로그인
	@RequestMapping("/login.do")
	public String login(MemberVO vo) {
		mapper.login(vo);
		return "redirect:/위치.do";
	}

	
	
	
	//템플릿적용
	@RequestMapping(value = "/events.do")
	public String events() {
		return "events";
	}

	@RequestMapping(value = "/families.do")
	public String families() {
		return "families";
	}

	@RequestMapping(value = "/seremons.do")
	public String seremons() {
		return "seremons";
	}

}
