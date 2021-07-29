package com.smhrd.sixbaby;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index.do")
	public String home() {
		
		return "index";
	}
	
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
