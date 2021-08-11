<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<body>

	<header class="site-header">
		<div class="container">
			<a href="#" class="branding"> <img
				src="${cpath}/resources/images/header_logo.png" alt="" class="logo"
				style="max-width: 150px;">
				<h1 class="site-title"
					style="color: black; font-weight: 600; font-size: 33px;">SixBaby</h1>
			</a>

			<div class="main-navigation">
				<button class="menu-toggle">
					<i class="fa fa-bars"></i>메뉴
				</button>
				<ul class="menu">
					<li class="menu-item current-menu-item"><a
						class="main_menu_font" href="main.do">메인 </a></li>
					<li class="menu-item"><a class="main_menu_font"
						href="boardList.do">커뮤니티</a></li>
					<li class="menu-item"><a class="main_menu_font"
						href="babyDiary.do">육아일기</a></li>
					<li class="menu-item"><a class="main_menu_font"
						href="voiceRecog.do">울음분석</a></li>
					<li class="menu-item"><a class="main_menu_font"
						href="mypage.do">마이페이지</a></li>
				</ul>
			</div>

			<div class="mobile-navigation"></div>
		</div>
	</header>
</body>