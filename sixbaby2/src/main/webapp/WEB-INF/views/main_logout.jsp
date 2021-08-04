<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Sixbaby</title>

		<!-- Loading third party fonts -->
		<link href="${cpath}/resources/fonts/novecento-font/novecento-font.css" rel="stylesheet" type="text/css">
		<link href="${cpath}/resources/fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

		<!-- Loading main css file -->
		<link rel="stylesheet" href="${cpath}/resources/css/style.css">
		
		<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->
		
		
</head>
<body>


<div class="main-navigation" align="center">
<div id="logo">
							<span class="image avatar48"><img src="${cpath}/resources/images/avatar.jpg" alt=""></span>
							<h1 id="title">Jane Doe</h1>
							<p>Hyperspace Engineer</p>
						</div>
<button class="menu-toggle"><i class="fa fa-bars"></i> Menu</button>
						<ul class="menu">
							<li class="menu-item current-menu-item"><a href="main.jsp">Homepage <small>Lorem ipsum</small></a></li><br>
							<li class="menu-item"><a href="community.jsp">Community <small>Laboris nisi aliquip</small></a></li><br>
							<li class="menu-item"><a href="#">Baby Diary <small>Sunt in culpa</small></a></li><br>
							<li class="menu-item"><a href="#">Voice Recognition Service <small>lorem ipsum</small></a></li><br>
						</ul>
</div>
<div class="site-content">
			<header class="site-header">
				<div class="container">
					<a href="#" class="branding">
						<img src="${cpath}/resources/images/logotest.png" alt="" class="logo" style="max-width: 150px;">
						<h1 class="site-title" style="color:#E63F39">SixBaby</h1>
					</a>
					<div align="right">
						<div id="root" class="branding">
    						<button type="button" id="modal_open_btn_login"><span class="site-title">My page</span></button>&nbsp; 
    						<button type="button" id="modal_open_btn_login"><span class="site-title">Logout</span></button>
						</div>
					</div>
					
					<div id="modal_login">
   
				    <div class="modal_content">
        <div class="form_txtInput">
          <h2 class="sub_tit_txt">로그인</h2>
          <p class="exTxt">정보를 정확히 입력해주세요.</p>
          <div class="join_form">
            <table align="center">
              <colgroup>
                <col width="30%"/>
                <col width="auto"/>
              </colgroup>
              <tbody>
                <tr>
                  <th><span>아이디</span></th>
                  <td><input type="text" placeholder="ID 를 입력하세요."></td>
                </tr>
                <tr>
                  <th><span>비밀번호</span></th>
                  <td><input type="password" placeholder="PW 를 입력하세요"></td>
                </tr>
                <tr>
                	<td><button type="button" id="modal_open_btn_join" style="position: relative; left: 50px; border: solid white; background:white;">회원가입</button></td>
                	<td><button type="button" id="" style="border: solid white; background:white;">확인</button></td>
                </tr>
              </tbody>
            </table>
          </div><!-- join_form E  -->
          <div class="btn_wrap">
            <button type="button" id="modal_close_btn_login" style="background:white; border-radius: 12px; border:solid white;">창 닫기</button>
          </div>
        </div> <!-- form_txtInput E -->
    </div> <!-- container E -->
				    	<div class="modal_layer"></div>
					</div>
					
					<!--  <div id="modal_join">
   
				    <div class="modal_content">
        <div class="form_txtInput">
          <button type="button" id="modal_close_btn_join" style="background:white; border-radius: 12px;">창 닫기</button>
          <h2 class="sub_tit_txt">회원가입</h2>
          <p class="exTxt" >정보를 정확히 입력해주세요.</p>
          <div class="join_form">
            <table align="center">
              <colgroup>
                <col width="30%"/>
                <col width="auto"/>
              </colgroup>
              <tbody>
                <tr>
                  <th><span>아이디</span></th>
                  <td><input type="text" placeholder="ID 를 입력하세요."></td>
                </tr>
                <tr>
                  <th><span>비밀번호</span></th>
                  <td><input type="password" placeholder="비밀번호를 입력하세요."></td>
                </tr>
                <tr>
                  <th><span>비밀번호 확인</span></th>
                  <td><input type="password" placeholder="비밀번호를 확인하세요."></td>
                </tr>
                <tr>
                  <th><span>이름</span></th>
                  <td><input type="text" placeholder="이름을 입력하세요."></td>
                </tr>
                <tr>
                <th><span>성별</span></th>
                  <td>남♂<input type="radio" name="gender" value="man">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  여♀<input type="radio" name="gender" value="woman"></td>
                </tr>
                <tr>
                  <th><span>닉네임</span></th>
                  <td><input type="text" placeholder="닉네임을 입력하세요."></td>
                </tr>
                <tr>
                  <th><span>생년월일</span></th>
               	  <td><input type="date"></td>
                </tr>
                  <!--<td><input type="text" placeholder="ex) 1996 2월 18일 : 960218"></td>  
                </tr>
                
                <tr>
                  <th><span>휴대폰 번호</span></th>
                  <td><input type="text" placeholder="전화번호를 입력하세요."></td>
                </tr>
                <tr>
                  <th><span>아이 이름</span></th>
                  <td><input type="text" placeholder="태명 or 이름을 입력하세요."></td>
                </tr>
                <tr>
                  <th><span>아이 성별</span></th>
                  <td>남♂<input type="radio" name="gender" value="man">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  여♀<input type="radio" name="gender" value="woman"></td>
                </tr>
                <tr>
                  <th><span>아이 생년월일</span></th>
                  <td><input type="text" placeholder="ex) 2020 5월 18일 : 200518"></td>
                </tr>
                <tr>
                	<td><button type="button" id=""  style="position: relative; left: 120px; background:white;">+아이추가</button></td>
                </tr>
              </tbody>
            </table>
            <div class="exform_txt" style="color:darkgray; font-weight:400" ><span>정보를 정확히 입력하셨으면 완료눌러주세요.</span></div>
          </div><!-- join_form E  -->
          <div class="btn_wrap">
            <a href="javascript:;"></a>
          </div>
        </div> <!-- form_txtInput E -->
    </div> <!-- container E -->
				    	<div class="modal_layer"></div>
					</div> 
					<div class="mobile-navigation"></div>
				</div>
				   
			</header> <!-- .site-header -->
			

			<div class="hero">
				<div class="slides"><!--  style="border-bottom: 1px solid #E63F39" -->
					<!--<li data-bg-image="${cpath}/resources/images/slide-1.jpg">-->
						<div class="container">
							<div class="slide-content">
								<small class="slide-subtitle">Sixbaby</small>
								<h2 class="slide-title">Place with a real love</h2>

								<a href="#" class="button">See our families</a>
							</div>
						</div>
					</li>

					<!--<li data-bg-image="images/slide-1.jpg">-->
						<div class="container">
							<div class="slide-content">
								<small class="slide-subtitle">Sixbaby</small>
								<h2 class="slide-title">Place with a real love</h2>

								<!--<a href="#" class="button">See our families</a>-->
							</div>
						</div>
					</li>
				</div>
			</div>
			<br><br>

			<main class="main-content">
				

				
			</main> <!-- .main-content -->

			<footer class="site-footer">
				<div class="container">
					<div class="row">
						<div class="col-md-4">
							<div class="widget">
								<h3 class="widget-title">Our address</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi perspiciatis magnam, ab ipsa laboriosam tempore tenetur, aliquid repellat, ex cum dicta reiciendis accusamus. Omnis repudiandae quasi mollitia, iusto odio dignissimos.</p>
								<ul class="address">
									<li><i class="fa fa-map-marker"></i> 329 Church St, Garland, TX 75042</li>
									<li><i class="fa fa-phone"></i> (425) 853 442 552</li>
									<li><i class="fa fa-envelope"></i> info@yourchurch.com</li>
								</ul>
							</div>
						</div>
						<div class="col-md-4">
							<div class="widget">
								<h3 class="widget-title">Topics from last meeting</h3>
								<ul class="bullet">
									<li><a href="#">Lorem ipsum dolor sit amet</a></li>
									<li><a href="#">Consectetur adipisicing elit quis nostrud</a></li>
									<li><a href="#">Eiusmod tempor incididunt ut labore et dolore magna</a></li> 
									<li><a href="#">Ut enim ad minim veniam cillum</a></li>
									<li><a href="#">Exercitation ullamco laboris nisi ut aliquip</a></li> 
									<li><a href="#">Duis aute irure dolor in reprehenderit in voluptate</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-4">
							<div class="widget">
								<h3 class="widget-title">Contact form</h3>
								<form action="#" class="contact-form">
									<div class="row">
										<div class="col-md-6"><input type="text" placeholder="Your name..."></div>
										<div class="col-md-6"><input type="text" placeholder="Email..."></div>
									</div>
									
									<textarea name="" placeholder="Your message..."></textarea>
									<div class="text-right"><input type="submit" value="Send message"></div>
									
								</form>
							</div>
						</div>
					</div> <!-- .row -->

					<p class="colophon">Copyright 2014 True Church. All right reserved</p>
				</div><!-- .container -->
			</footer> <!-- .site-footer -->
</div>

		
		<script src="${cpath}/resources/js/js/jquery-1.11.1.min.js"></script>
		<script src="${cpath}/resources/js/js/plugins.js"></script>
		<script src="${cpath}/resources/js/js/app.js"></script>
		<script src="${cpath}/resources/js/js/jquery-ui.js"></script>
		<script src="${cpath}/resources/js/js/popup.js"></script>
</body>
</html>