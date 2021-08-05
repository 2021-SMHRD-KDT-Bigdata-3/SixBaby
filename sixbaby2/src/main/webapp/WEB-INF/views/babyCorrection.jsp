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
		
		<title>True Church</title>

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
<div class="site-content">

					<header class="site-header">
				<div class="container">
					<a href="#" class="branding">
						<img src="${cpath}/resources/images/logotest.png" alt="" class="logo" style="max-width: 150px;">
						<h1 class="site-title" style="color:#E63F39">SixBaby</h1>
					</a>
					
					<div class="main-navigation">
						<button class="menu-toggle"><i class="fa fa-bars"></i> Menu</button>
							<ul class="menu">
								<li class="menu-item current-menu-item"><a href="main.jsp">Homepage <small>Lorem ipsum</small></a></li>
								<li class="menu-item"><a href="community.jsp">Community <small>Laboris nisi aliquip</small></a></li>
								<li class="menu-item"><a href="#">Baby Diary <small>Sunt in culpa</small></a></li>
								<li class="menu-item"><a href="#">Voice Recognition Service <small>lorem ipsum</small></a></li>
							</ul>
					</div>

					<div class="mobile-navigation"></div>
				</div>
			</header> <!-- .site-header -->

			<div class="page-head" data-bg-image="${cpath}/resources/images/page-head-1.jpg">
				<div class="container">
					<h2 class="page-title">���� ���� ����</h2>
				</div>
			</div>

				<div class="fullwidth-block">
					<div class="container">
						<div class="row">
							<div class="content col-md-13">
								<div class="row">
									
									<div class="correction_form">
							            <table align="center">
							              <colgroup>
							                <col width="30%"/>
							                <col width="auto"/>
							              </colgroup>
							              <tbody>
							              	<tr>
							              	<td>
							              		<select name="���̸� �����~">
							              			<option value="ù°">�ϳ�</option>
							              			<option value="��°">�ν���</option>
							              		</select>
							              		<td>
							              	</tr>
							                <tr>
							                  <th><span>���� �̸�</span></th>
							                  <td><input type="text" placeholder="�¸� or �̸��� �Է��ϼ���."></td>
							                </tr>
							                <tr>
							                  <th><span>���� ����</span></th>
							                  <td>����<input type="radio" name="gender" value="man">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							                  ����<input type="radio" name="gender" value="woman"></td>
							                </tr>
							                <tr>
							                  <th><span>���� �������</span></th>
							                  <td><input type="text" placeholder="ex) 2020 5�� 18�� : 200518"></td>
							                </tr>
							                <tr>
							                	<td><button type="button" id=""  style="position: relative; left: 120px; background:white;">�Ϸ�</button></td>
							                </tr>
							                <tr>
							                	<td><button type="button" id="modal_open_btn_secession"><span class="site-title">Ż��</span></button></td>
							                </tr>
							                <tr>
							                <td colspan=2>
							            <div class="exform_txt" style="color:darkgray; font-weight:400" ><span>������ ��Ȯ�� �Է��ϼ����� �Ϸᴭ���ּ���.</span></div>
							            </td>
							            <td>
							            </td>
							            </tr>
							              </tbody>
							            </table>
							          </div><!-- correction_form E  -->
								</div>
								
							</div>
						</div>
					</div>
				</div>


					<div id="modal_secession">
					   
									    <div class="modal_content">
					        <div class="form_txtInput">
					          <h2 class="sub_tit_txt">ȸ�� Ż��</h2>
					          <p class="exTxt">�������ּ���.</p>
					          <div class="join_form">
					            <table align="center">
					              <colgroup>
					                <col width="30%"/>
					                <col width="auto"/>
					              </colgroup>
					              <tbody>
					                <tr>
					                  <th><span>���̵�</span></th>
					                  <td><input type="text" placeholder="ID �� �Է��ϼ���."></td>
					                </tr>
					                <tr>
					                  <th><span>��й�ȣ</span></th>
					                  <td><input type="password" placeholder="PW �� �Է��ϼ���"></td>
					                </tr>
					                <tr>
					                	<td><button type="button" id="" style="border: solid white; background:white;">Ȯ��</button></td>
					                </tr>
					              </tbody>
					            </table>
					          </div><!-- join_form E  -->
					          <div class="btn_wrap">
					            <button type="button" id="modal_close_btn_secession" style="background:white; border-radius: 12px; border:solid white;">â �ݱ�</button>
					          </div>
					        </div> <!-- form_txtInput E -->
					    </div> <!-- container E -->
									    	<div class="modal_layer"></div>
					</div>


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
		<script src="${cpath}/resources/js/js/correctionJS.js"></script>
</body>
</html>