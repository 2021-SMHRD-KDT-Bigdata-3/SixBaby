<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<body>

	<header class="site-header">
		<div class="header_height">
			<a href="#" class="branding"> <img
				src="${cpath}/resources/images/header_logo.png" alt="" class="logo"
				style="max-width: 80px; float: left; margin-left: 50px;">
				<h1 class="site-title"
					style="color: black; font-weight: 600; font-size: 33px; float: left; font-family: 'BMJUA';">SixBaby</h1>
			</a>

			<div class="main-navigation">
				<button class="menu-toggle">
					<i class="fa fa-bars"></i>메뉴
				</button>
				<ul class="menu">
					<li class="menu-item current-menu-item"><a
						class="main_menu_font" href="main.do">메인 &nbsp;&nbsp; &nbsp;</a></li>
					<li class="menu-item"><a class="main_menu_font"
						href="boardList.do">커뮤니티&nbsp;&nbsp; &nbsp;</a></li>
					<li class="menu-item"><a class="main_menu_font"
						href="babyDiary.do">육아일기 &nbsp;&nbsp; &nbsp;</a></li>
					<li class="menu-item"><a class="main_menu_font"
						href="voiceRecog.do">울음분석 &nbsp;&nbsp; &nbsp;</a></li>
					<li class="menu-item"><a class="main_menu_font"
						href="mypage.do">마이페이지</a></li>
				</ul>
			</div>
			<div class="login_up" align="right">
			<div id="root" class="branding">
				<button type="button" id="modal_open_btn_login">
					<c:choose>
						<c:when test="${empty loginMember }">
							<span id="login" class="site-title " style="background: white;">로그인</span>
						</c:when>
						<c:otherwise>
							<span id="logout" class="site-title" style="background: white;">로그아웃</span>
						</c:otherwise>
					</c:choose>
				</button>
				&nbsp; &nbsp;
				<button type="button" id="modal_open_btn_join"
					style="background: white; border: white;">
					<span class="site-title">회원가입</span>
				</button>
				&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; <br> <br>
				<br>
			</div>

		</div>

			<div class="mobile-navigation"></div>
		</div>
		
		<div id="modal_login">
				<div class="modal_content">
					<div class="btn_wrap2">
						<button type="button" id="modal_close_btn_login"
							style="margin-right: 10px; background: white; border: solid 2px #E7FFFF; border-radius: 12px;
							margin-bottom: 20px; box-shadow: 1px 1px 3px 1px #dadce0; font-size: 12px; padding: 0px; width: 70px;">닫기</button>
					</div>
					<div class="form_txtInput">
						<h2 class="sub_tit_txt" align="center">로그인</h2>
						<p class="exTxt" align="center">정보를 정확히 입력해주세요.</p>
						<div class="login_form">
							<form action="${cpath}/login.do" method="post">
								<table>
									<colgroup>
										<col width="40%" />
										<col width="auto" />
									</colgroup>
									<tbody>
										<tr>
											<th>아이디</th>
											<td><input type="text" name="id"
												style="border: 1px solid #E7FFFF; width: 270px; box-shadow: 1px 1px 3px 1px #dadce0 inset; height: 30px;"
												placeholder="ID 를 입력하세요."></td>
										</tr>
										<tr>
											<th>비밀번호</th>
											<td><input type="password" name="pw"
												style="border: 1px solid #E7FFFF; width: 270px; box-shadow: 1px 1px 3px 1px #dadce0 inset; height: 30px;"
												placeholder="PW 를 입력하세요"></td>
										<tr>
											<td colspan="2"><br>
												<button type="submit">확인</button></td>
										</tr>

									</tbody>
								</table>
							</form>
						</div>
						<!-- join_form E  -->
					</div>
					<!-- form_txtInput E -->
				</div>
				<!-- container E -->
				<div class="modal_layer"></div>
			</div>
			<div id="modal_join">

				<div class="modal_content"
					style="background: white; border-radius: 12px; border: 1px solid #FFFFE3;">
					<form action="${cpath}/memberInsert.do" method="post">
						<div class="form_txtInput">
							<button type="button" id="modal_close_btn_join"
								style="margin-right: 10px; background: white; border: solid 2px #E7FFFF; border-radius: 12px; box-shadow: 1px 1px 3px 1px #dadce0; font-size: 12px; padding: 0px; width: 70px; margin-bottom: 20px;">닫기</button>
							<h2 class="sub_tit_txt" style="position: relative; margin-bottom: 20px;">회원가입</h2>
							<p class="exTxt"
								style="position: relative; color: #666666;">정보를
								정확히 입력해주세요.</p>
							<br>
							<div class="join_form">
								<table>
									<colgroup>
										<col width="30%" />
										<col width="auto" />
									</colgroup>
									<tbody style="position: relative; left: 100px;">
										<tr>
											<th><span>아이디</span></th>
											<td><input type="text" name="id"
												placeholder="ID 를 입력하세요."></td>
										</tr>
										<tr>
											<th><span>비밀번호</span></th>
											<td><input type="password" name="pw"
												placeholder="비밀번호를 입력하세요."></td>
										</tr>
										<tr>
											<th><span>비밀번호 확인</span></th>
											<td><input type="password" placeholder="비밀번호를 확인하세요."></td>
										</tr>
										<tr>
											<th><span>이름</span></th>
											<td><input type="text" name="name"
												placeholder="이름을 입력하세요."></td>
										</tr>
										<tr>
											<th><span>성별</span></th>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;남♂<input type="radio" name="gender" value="man" style="width:30px;">&nbsp;
												여♀<input type="radio" name="gender" value="woman" style="width:30px;"></td>
										</tr>
										<tr>
											<th><span>닉네임</span></th>
											<td><input type="text" name="nickname"
												placeholder="닉네임을 입력하세요."></td>
										</tr>
										<tr>
											<th><span>생년월일</span></th>
											<td><input type="date" name="birth"></td>
										</tr>

										<tr>
											<th><span>휴대폰 번호</span></th>
											<td><input type="text" name="tell"
												placeholder="전화번호를 입력하세요."></td>
										</tr>

									</tbody>
								</table>
								<div align="center" class="exform_txt"
									style="color: darkgray; font-weight: 400; position: relative; left: 150;">

								</div>
							</div>
							<!-- join_form E  -->
							<div class="btn_wrap">
								<a href="javascript:;"></a> <br>
								<button type="submit"
									style="background: white; border: solid 2px #E7FFFF; border-radius: 12px; box-shadow: 1px 1px 3px 1px #dadce0; font-size: 18px; padding: 5px; width: 100px; margin-inline: auto; display: block;">완료</button>
							</div>
						</div>
						<!-- form_txtInput E -->
					</form>
				</div>
				<!-- container E -->
				<div class="modal_layer"></div>
			</div>
	</header>
</body>