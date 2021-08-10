<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
<link rel="stylesheet" href="css/font.css"/>

<title>메인</title>
<style>

ul, li {
	list-style: none;
}

.slide {
	height: 150px;
	overflow: hidden;
}

.slide ul {
	height: 100%;
}

.slide li {

   height: 100%;
   position:absolute;left:0;right:0;top:0;bottom:0;opacity:0;
}

.slide li:nth-child(1) {
   background: #FEEBF2;
}
.slide li:nth-child(2) {
	background: #FEEBF2;
}

</style>
<script>
const all = ele => document.querySelectorAll(ele)
const one = ele => document.querySelector(ele)
const slide = _ => {
  const wrap = one('.slide')
  const target = wrap.children[0]
  const len = target.children.length
  const liStyle = `
    position:absolute;
    left:0;right:0;top:0;bottom:0;transition:1s;opacity:0
  `
  target.style.cssText = `position:relative;`
  Array.from(target.children)
  .forEach(ele => ele.style.cssText = liStyle)
  target.children[0].style.opacity = 1
  let pos = 0
  setInterval(_ => {
    target.children[pos].style.opacity = 0
    pos = (pos + 1) % len 
    target.children[pos].style.opacity = 1
  }, 1500)
}
window.onload = function () {
  slide()
}
</script>
<!-- Loading third party fonts -->
<link href="${cpath}/resources/fonts/novecento-font/novecento-font.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- Loading main css file -->
<link rel="stylesheet" href="${cpath}/resources/css/style.css">

<!--[if lt IE 9]>
      <script src="js/ie-support/html5.js"></script>
      <script src="js/ie-support/respond.js"></script>
      <![endif]-->
</head>
<body>

	<div class="site-content">

		<%@ include file="header.jsp"%>

		<div align="right">
			<div id="root" class="branding">
				<button type="button" id="modal_open_btn_login">
					<c:choose>
						<c:when test="${empty loginMember }">
							<span id="login" class="site-title " style="background: white;">Login</span>
						</c:when>
						<c:otherwise>
							<span id="logout" class="site-title" style="background: white;">Logout</span>
						</c:otherwise>
					</c:choose>
				</button>
				&nbsp; &nbsp;
				<button type="button" id="modal_open_btn_join"
					style="background: white; border: white;">
					<span class="site-title">Join</span>
				</button>
				&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; <br> <br>
				<br>
			</div>

		</div>


 <!-- 페이드 슬라이드 배너 -->
      <div class="slide" style="height: 400px; width: 100%;">
         <ul>
            <li>
            <img src="${cpath}/resources/images/test.png" alt="" class="logo"style="height: 350px; width: 65%; position:absolute; left:200px; bottom:50px;">
			</li>
			<li>
			<img src="${cpath}/resources/images/test0.png" alt="" class="logo"style="height: 350px; width: 65%; position:absolute; left:200px; bottom:50px;">
			</li>
         </ul>



      <div id="modal_login">
         <div class="modal_content"
            style="border-radius: 12px; border: 1px solid #E63F39;">
            <div class="">
               <h2 class="sub_tit_txt" style="position: relative; left: 170px;">로그인</h2>
               <p class="exTxt" style="position: relative; left: 120px;">정보를
                  정확히 입력해주세요.</p>
               <div class="login_form">
                  <table align="center">
                     <colgroup>
                        <col width="30%" />
                        <col width="auto" />
                     </colgroup>
                     <tbody>
                        <form action="${cpath}/login.do" method="post">
                           <tr>
                              <th><span style="position: relative;">아이디</span></th>
                              <td ><input
                                 type="text" name="id" placeholder="ID 를 입력하세요." style="border:1px solid #FDDBDB; width:250px; box-shadow: 1px 1px 3px 1px #dadce0 inset; height:30px;"><br></td>
                                 <br>
                           </tr>
                           <tr>
                              <th><span style="position: relative;">비밀번호</span></th>
                              <td><input
                                 type="password" name="pw" placeholder="PW 를 입력하세요"style="border:1px solid #FDDBDB; width:250px; box-shadow: 1px 1px 3px 1px #dadce0 inset; height:30px;"><br></td>
                           </tr>
                           <tr>
                              <td><button type="submit" id="login-btn"
                                    style="border: solid white; background: white; position: relative; left: 200px; font-size:20px; color:#666666; font-family:'NanumSquareRound'; position:relative; right:80px;">확인</button><br></td>
                           </tr>
                        </form>
                     </tbody>
                  </table>
               </div>
               <!-- join_form E  -->
               <div class="btn_wrap">
                  <button type="button" id="modal_close_btn_login"
                     style="background: white; border-radius: 12px; border: solid white; font-size:20px; color:#666666; font-family:'NanumSquareRound'; font-weight:400;">창
                     닫기</button>
               </div>
            </div>
            <!-- form_txtInput E -->
         </div>
         <!-- container E -->
         <div class="modal_layer"></div>
      </div>
      <div id="modal_join">

		<div id="modal_login">
			<div class="modal_content">
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
											placeholder="ID 를 입력하세요."></td>
									</tr>
									<tr>
										<th>비밀번호</th>
										<td><input type="password" name="pw" placeholder="PW 를 입력하세요"></td>
									<tr>
										<td colspan="2"><button type="submit">확인</button></td>
									</tr>

								</tbody>
							</table>
						</form>
					</div>
					<!-- join_form E  -->
					<div class="btn_wrap">
						<button type="button" id="modal_close_btn_login"
							style="background: white; border-radius: 12px; border: solid 2px #8f7655; border-radius: 12px;">창
							닫기</button>
					</div>
				</div>
				<!-- form_txtInput E -->
			</div>
			<!-- container E -->
			<div class="modal_layer"></div>
		</div>
		<div id="modal_join">

			<div class="modal_content"
				style="background: white; border-radius: 12px; border: 1px solid #FDDBDB;">
				<form action="${cpath}/memberInsert.do" method="post">
					<div class="form_txtInput">
						<button type="button" id="modal_close_btn_join"
							style="background: white; border-radius: 12px; border: 1px solid #FDDBDB;">닫기</button>
						<h2 class="sub_tit_txt" style="position: relative; left: 170px;">회원가입</h2>
						<p class="exTxt"
							style="position: relative; left: 120px; color: #666666;">정보를
							정확히 입력해주세요.</p>
						<br>
						<div class="join_form">
							<table align="center">
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
										<td>남♂<input type="radio" name="gender" value="man">&nbsp;
											여♀<input type="radio" name="gender" value="woman"></td>
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
								<span>정보를 정확히 입력하셨으면 완료눌러주세요.</span>
							</div>
						</div>
						<!-- join_form E  -->
						<div class="btn_wrap">
							<a href="javascript:;"></a> <br>
							<button type="submit"
								style="position: relative; right: 150px; background: white; border-radius: 12px; border: 1px solid #E63F39;">완료</button>
						</div>
					</div>
					<!-- form_txtInput E -->
				</form>
			</div>
			<!-- container E -->
			<div class="modal_layer"></div>
		</div>
		<!-- <div class="mobile-navigation"></div> -->

		<!-- 페이드 슬라이드 배너 -->
		<!--   <div class="slide" style="height: 400px; width: 100%;">
         <ul>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
         </ul>
      </div> -->



		<%@ include file="footer.jsp"%>
	</div>


	<script src="${cpath}/resources/js/js/jquery-1.11.1.min.js"></script>
	<script src="${cpath}/resources/js/js/plugins.js"></script>
	<script src="${cpath}/resources/js/js/app.js"></script>
	<script src="${cpath}/resources/js/js/jquery-ui.js"></script>
	<script src="${cpath}/resources/js/js/loginJS.js"></script>
	<script src="${cpath}/resources/js/js/joinJS.js"></script>

</body>
</html>