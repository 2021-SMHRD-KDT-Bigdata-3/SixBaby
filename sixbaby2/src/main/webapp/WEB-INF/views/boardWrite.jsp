<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1">

<title>BOARD_WRITE</title>

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

		<header class="site-header">
			<div class="container">
				<a href="#" class="branding"> <img
					src="${cpath}/resources/images/logotest.png" alt="" class="logo"
					style="max-width: 150px;">
					<h1 class="site-title" style="color: #E63F39">SixBaby</h1>
				</a>

				<div class="main-navigation">
					<button class="menu-toggle">
						<i class="fa fa-bars"></i> Menu
					</button>
					<ul class="menu">
						<li class="menu-item current-menu-item"><a href="main.do">Homepage
								<small>Lorem ipsum</small>
						</a></li>
						<li class="menu-item"><a href="community.do">Community <small>Laboris
									nisi aliquip</small></a></li>
						<li class="menu-item"><a href="#">Baby Diary <small>Sunt
									in culpa</small></a></li>
						<li class="menu-item"><a href="#">Voice Recognition
								Service <small>lorem ipsum</small>
						</a></li>
					</ul>
				</div>

				<div class="mobile-navigation"></div>
			</div>
		</header>
		<!-- .site-header -->

		<div class="page-head"
			data-bg-image="${cpath}/resources/images/page-head-1.jpg">
			<div class="container">
				<h2 class="page-title">Community</h2>
			</div>
		</div>

		<div class="fullwidth-block">
			<div class="container">
				<div class="row">

					<div class="content col-md-8">
						<form class="form-horizontal" action="${cpath}/boardInsert.do"
							method="post">
							<div class="form-group">
								<select name="category"
									style="border: 2px solid #E63F39; border-radius: 12px; font-size: 15px; text-align: center;">
									<option value="free">자유게시판</option>
									<option value="item">용품 추천</option>
									<option value="help">도움 요청</option>
									<option value="tip">육아 꿀팁</option>
								</select>
							</div>
							<br>
							<table>
								<div class="write_table"
									style="border: 2px solid #E63F39; border-radius: 12px;">
									<div class="form-group">
										<label class="control-label col-sm-2">작성자</label> <input
											type="text" class="form-control" name="nickname"
											placeholder="Enter writer">
									</div>
									<div class="form-group">

										<label class="control-label col-sm-2">제목</label>
											<input type="text" class="form-control" name="title"
												placeholder="Enter title">

										<label class="control-label col-sm-2">작성일</label> <input
											type="date" name="indate">
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2">제목</label> <input
											type="text" class="form-control" name="title"
											placeholder="Enter title">

									</div>
									<div class="form-group">
										<label class="control-label col-sm-2">내용</label>
										<textArea rows="5" class="form-control" name="contents"
											placeholder="Enter contents"></textArea>
									</div>
									<div id="inputFile">
										<label class="site-btn3" for="input-file"
											style="font-weight: bold; font-size: 16;">사진 첨부</label> <input
											type="file" id="input-file" name="picture">
									</div>
								</div>
							</table>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<input type="submit" class="btn btn-primary btn-sm"
										style="position: relative; background: white; border: 2px solid #E63F39;" value="등록">
									&nbsp;
									<button type="reset" class="btn btn-warning btn-sm"
										style="position: relative; background: white; border: 2px solid #E63F39;">
										<a href="community.do">취소</a>
									</button>
								</div>
							</div>
						</form>

					</div>
					<div class="sidebar col-md-3 col-md-offset-1">
						<div class="widget">
							<h3 class="widget-title">Categories</h3>
							<ul class="arrow" style="text-align: center">
								<li><a href="community.do">자유게시판</a></li>
								<li><a href="recommendation.do">용품추천</a></li>
								<li><a href="help.do">도움요청</a></li>
								<li><a href="#">육아꿀팁</a></li>
							</ul>
						</div>


					</div>
				</div>
			</div>
		</div>

		<footer class="site-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="widget">
							<h3 class="widget-title">Our address</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Modi perspiciatis magnam, ab ipsa laboriosam tempore tenetur,
								aliquid repellat, ex cum dicta reiciendis accusamus. Omnis
								repudiandae quasi mollitia, iusto odio dignissimos.</p>
							<ul class="address">
								<li><i class="fa fa-map-marker"></i> 329 Church St,
									Garland, TX 75042</li>
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
								<li><a href="#">Consectetur adipisicing elit quis
										nostrud</a></li>
								<li><a href="#">Eiusmod tempor incididunt ut labore et
										dolore magna</a></li>
								<li><a href="#">Ut enim ad minim veniam cillum</a></li>
								<li><a href="#">Exercitation ullamco laboris nisi ut
										aliquip</a></li>
								<li><a href="#">Duis aute irure dolor in reprehenderit
										in voluptate</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4">
						<div class="widget">
							<h3 class="widget-title">Contact form</h3>
							<form action="#" class="contact-form">
								<div class="row">
									<div class="col-md-6">
										<input type="text" placeholder="Your name...">
									</div>
									<div class="col-md-6">
										<input type="text" placeholder="Email...">
									</div>
								</div>

								<textarea name="" placeholder="Your message..."></textarea>
								<div class="text-right">
									<input type="submit" value="Send message">
								</div>

							</form>
						</div>
					</div>
				</div>
				<!-- .row -->

				<p class="colophon">Copyright 2014 True Church. All right
					reserved</p>
			</div>
			<!-- .container -->
		</footer>
		<!-- .site-footer -->
	</div>


	<script src="${cpath}/resources/js/js/jquery-1.11.1.min.js"></script>
	<script src="${cpath}/resources/js/js/plugins.js"></script>
	<script src="${cpath}/resources/js/js/app.js"></script>
	<script src="${cpath}/resources/js/js/jquery-ui.js"></script>
	<script src="${cpath}/resources/js/js/popup.js"></script>
</body>
</html>