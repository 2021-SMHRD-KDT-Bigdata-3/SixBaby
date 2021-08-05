package com.smhrd.sixbaby2;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class soundData extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 5초 데이터 실시간으로 받아옴
//		String data = request.getParameter("data");
//		System.out.println();
//		System.out.print("아기울음소리 크기 데이터 >> ");
//		System.out.println(data);

		// 가데이터일 경우
		String data = "27s45s98s29s72s50s31s";

		request.setAttribute("data", data);
		response.sendRedirect("http://192.168.137.1:5000/get?data="+URLEncoder.encode(data, "EUC-KR"));
		
	}

}
