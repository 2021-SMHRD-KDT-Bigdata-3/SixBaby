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
							<li class="menu-item"  style="border-bottom: solid #white"><a href="#">Voice Recognition Service <small>lorem ipsum</small></a></li><br>
						</ul>
</div>

<div class="site-content">
				   
			<header class="site-header">
				<div class="container">
					<a href="#" class="branding">
						<img src="${cpath}/resources/images/logotest.png" alt="" class="logo" style="max-width: 150px;">
						<h1 class="site-title" style="color:#E63F39">SixBaby</h1>
            </header> <!-- .site-header -->
            
			<div class="page-head" data-bg-image="${cpath}/resources/images/page-head-1.jpg">
				<div class="container">
					<h2 class="page-title">Community</h2>
				</div>
			</div>

				<div class="fullwidth-block">
					<div class="container">
						<div class="row">
								
							<div class="content col-md-8">
								<form class="form-horizontal" action="${cpath}/boardInsert.do" method="post">
								<table>
								<div class="write_table" style="border:2px solid #E63F39; border-radius: 12px;">
									<div class="form-group" >
									<button type="submit" class="btn btn-primary btn-sm" style="position: relative; right:60px; background:white; border:2px solid #E63F39;">취소</button>&nbsp;
										<label class="control-label col-sm-2">작성자</label>
											<input type="text" class="form-control" name="writer"
												placeholder="Enter writer">
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2">작성일</label>
               								 <input type="date">
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2">제목</label>
											<input type="text" class="form-control" name="title"
												placeholder="Enter title">
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2">내용</label>
											<textArea rows="5" class="form-control" name="contents"
												placeholder="Enter contents"></textArea>
									</div>
									<div id="inputFile">
										<label class="site-btn3" for="input-file" style="font-weight:bold; font-size:16; ">사진 첨부</label>
											<input type="file" id="input-file" name="img">
									</div>
									</div>
									</table>
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<button type="submit" class="btn btn-primary btn-sm" style="position: relative; right:60px; background:white; border:2px solid #E63F39;">수정</button>&nbsp;
										</div>
									</div>
									</form>
									</div>
									</div>
									</div>
									</div>
									</div>
									
									
</body>
</html>