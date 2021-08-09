package com.smhrd.sixbaby2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class getConditionData extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 가데이터일 경우
//		String hungry = "hungry";
		String pup = "pup";
//		String burping = "burping";
//		String cold_hot = "cold_hot";
		
		HttpSession session = request.getSession();
		session.setAttribute("pup", pup);
		
		response.sendRedirect("http://192.168.137.1:8081/sixbaby2/voiceRecog.do");
	}

}
