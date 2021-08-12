<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>커뮤니티</title>
<meta content="width=device-width, initial-scale=1" name="viewport">
<meta content="Webflow" name="generator">
<link
	href="https://assets.website-files.com/5e4b1a54e48aed761d1ff229/css/denali-template.webflow.170e98de3.css"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato:100,100italic,300,300italic,400,400italic,700,700italic,900,900italic"
	media="all">
<script type="text/javascript">
	WebFont
			.load({
				google : {
					families : [ "Lato:100,100italic,300,300italic,400,400italic,700,700italic,900,900italic" ]
				}
			});
</script>
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif]-->
<script type="text/javascript">
	!function(o, c) {
		var n = c.documentElement, t = " w-mod-";
		n.className += t + "js", ("ontouchstart" in o || o.DocumentTouch
				&& c instanceof DocumentTouch)
				&& (n.className += t + "touch")
	}(window, document);
</script>
<link href="https://assets.website-files.com/img/favicon.ico"
	rel="shortcut icon" type="image/x-icon">
<link href="https://assets.website-files.com/img/webclip.png"
	rel="apple-touch-icon">
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
<link href="${cpath}/resources/fonts/kyobo.css" rel="stylesheet"
	type="text/css">
</head>
<%-- <head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1">

<title>커뮤니티</title>

<!-- Loading third party fonts -->
<link href="${cpath}/resources/fonts/novecento-font/novecento-font.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/nanum.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/hyemin.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/onglip.css" rel="stylesheet"
	type="text/css">
<link href="${cpath}/resources/fonts/kyobo.css" rel="stylesheet"
	type="text/css">

	
<!-- Loading main css file -->
<link rel="stylesheet" href="${cpath}/resources/css/style.css">

</head> --%>
<body>
<div class="site-content">

		<%@ include file="header.jsp"%>
		
		<div class="page-head"
			data-bg-image="${cpath}/resources/images/bg.png">
			<div class="container">
				<h2 class="page-title">커뮤니티</h2>
			</div>
		</div>
		
		
		<div class="fullwidth-block">
			<div class="container">
				<div class="row">

					<div class="sidebar col-md-3 col-md-offset-1">
						<div class="widget">
							<h3 class="widget-title">카테고리</h3>
							<div class="arrow_category">
								<a href="boardList.do">자유게시판&nbsp;&nbsp; &nbsp;</a>
								<a href="itemList.do">용품추천&nbsp;&nbsp; &nbsp;</a>
								<a href="helpList.do">도움요청&nbsp;&nbsp; &nbsp;</a>
								<a href="tipList.do">육아꿀팁&nbsp;&nbsp; &nbsp;</a>
							</div>
						</div>
					</div>
					</div>
					</div>
					<c:set var="vo" value="${list}" />
					<div class="board_write" style="margin-left : 70%;">
							<c:if test="${vo[0].category ne 'tip'}">
								<c:if test="${not empty loginMember}">
									<button type="button"
										style="background: white; border: 2px solid #FEB7D1; border-radius: 12px; font-size: 20px; color: black;box-shadow: 1px 1px 3px 1px #dadce0;">
										<span class="site-title"><a
											href="boardWrite.do?cate=${vo[0].category}">글쓰기</a></span>
									</button>
								</c:if>
							</c:if>
						</div>
	<div class="content-wrapper">
		<div class="w-container">
			<div class="w-row">
				<div class="content-column w-col w-col-9">
					<div class="w-dyn-list">
						<div role="list" class="w-dyn-items">
						<c:set var="cnt" value="${fn:length(vo)}" />
						<c:forEach var="vo" items="${list}">
							<div role="listitem" class="w-dyn-item">
								<div data-w-id="53cc7567-513c-3103-cd72-dfb075f10bef"
									style="opacity: 1; transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1) rotateX(0deg) rotateY(0deg) rotateZ(0deg) skew(0deg, 0deg); transform-style: preserve-3d;"
									class="post-wrapper">
									<div class="post-content">
										<div class="w-row">
											<div class="w-col w-col-4 w-col-medium-4">
											<img src="${cpath}/resources/images/header_logo.png" style="max-width: 172px; margin-left:195px;">
												<!-- <a href="/posts/cafe-au-lait-turkish-doppio-ristretto"
													style="background-image: url(&amp;quot;https://assets.website-files.com/5e4b1a54e48aed65701ff226/5e4b1a54e48aed3f261ff24a_photo-1441512673622-3eaa1c39ba28.jpg&amp;quot;)"
													class="blog-image w-inline-block"></a> -->
											</div>
											<div class="w-col w-col-8 w-col-medium-8" style="margin-left: 66px; width:55%;">
												<a href="${cpath}/boardContent.do?board_no=${vo.board_no}"
													class="blog-title-link w-inline-block"><h2
														class="blog-title">${vo.title}</h2></a>
												<div class="details-wrapper">
													<div class="post-info">${vo.indate}</div>
													<div class="post-info">|</div>
													<a href="/categories/art" class="post-info when-link">${vo.category }</a>
												</div>
												<div class="post-summary-wrapper">
													<p class="post-summary"></p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=5e4b1a54e48aed761d1ff229"
		type="text/javascript"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script
		src="https://assets.website-files.com/5e4b1a54e48aed761d1ff229/js/webflow.bf6a5095c.js"
		type="text/javascript"></script>
	<!--[if lte IE 9]><script src="//cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif]-->

		 <footer class="site-footer" style="background: white;">
      <div class="container" style = "background-color : #f0f0f0;">
         <div class="row">
               <div class="col-md-4">
                  <div class="widget" style = "margin-left : -23%;">
                     <small class="slide-subtitle"
                        style="color: black; position: relative; font-size: 23px">SIXBABY</small>
                     <br> <br>

                     <h2 class="widget-title"
                        style="color: #666666; position: relative;">'아기'뿐만이 아니라 '육아가 처음인 부모'를 위한</h2>
                  </div>
               </div>
            </div>
            <!-- .row -->
            <p class="colophon"></p>
         </div>
         <!-- .container -->
   </footer>
	</div>
</body>

<%-- <body>

	<div class="site-content">

		<%@ include file="header.jsp"%>

		<div class="page-head"
			data-bg-image="${cpath}/resources/images/bg.png">
			<div class="container">
				<h2 class="page-title">커뮤니티</h2>
			</div>
		</div>
		
		
		<div class="fullwidth-block">
			<div class="container">
				<div class="row">

					<div class="sidebar col-md-3 col-md-offset-1">
						<div class="widget">
							<h3 class="widget-title">카테고리</h3>
							<div class="arrow_category">
								<a href="boardList.do">자유게시판&nbsp;&nbsp; &nbsp;</a>
								<a href="itemList.do">용품추천&nbsp;&nbsp; &nbsp;</a>
								<a href="helpList.do">도움요청&nbsp;&nbsp; &nbsp;</a>
								<a href="tipList.do">육아꿀팁&nbsp;&nbsp; &nbsp;</a>
							</div>
						</div>
					</div>

					<div class="content col-md-8">
						<c:set var="vo" value="${list}" />
						<c:if test="${vo[0].category eq 'free'}">
							<div class="board_align">
							<h2 class="section-title community_title">자유게시판</h2>
							</div>
						</c:if>
						<c:if test="${vo[0].category eq 'item'}">
							<h2 class="section-title community_title">용품추천</h2>
						</c:if>
						<c:if test="${vo[0].category eq 'help'}">
							<h2 class="section-title community_title">도움요청</h2>
						</c:if>
						<c:if test="${vo[0].category eq 'tip'}">
							<h2 class="section-title community_title">육아꿀팁</h2>
						</c:if>

						<div class="board_write" align="right">
							<c:if test="${vo[0].category ne 'tip'}">
								<c:if test="${not empty loginMember}">
									<button type="button"
										style="background: white; border: 2px solid #FEB7D1; border-radius: 12px; font-size: 20px; color: black;box-shadow: 1px 1px 3px 1px #dadce0;">
										<span class="site-title"><a
											href="boardWrite.do?cate=${vo[0].category}">글쓰기</a></span>
									</button>
								</c:if>
							</c:if>
						</div>
					<div class="table_align">
						<div class="table-responsive">
							<table class="table_board">
								<thead>
									<tr class="board_tr">
										<th class="board_no">번호</th>
										<th class="board_title">제목</th>
										<th class="board_nick">닉네임</th>
										<th class="board_date">작성일</th>
									</tr>
								</thead>
								<tbody>
									<c:set var="cnt" value="${fn:length(vo)}" />
									<c:forEach var="vo" items="${list}">
										<tr class="board_value">
											<td>${cnt}</td>
											<td><a
												href="${cpath}/boardContent.do?board_no=${vo.board_no}">${vo.title}</a></td>
											<td>${vo.nickname}</td>
											<td>${vo.indate}</td>
										</tr>
										<c:set var="cnt" value="${cnt-1}" />
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					</div>

				</div>
			</div>
		</div>
		

		<div class="fullwidth-block">
			<div class="container">
				<div class="row">

					<div class="sidebar col-md-3 col-md-offset-1">
						<div class="widget">
							<h3 class="widget-title">카테고리</h3>
							<div class="arrow_category">
								<a href="boardList.do">자유게시판&nbsp;&nbsp; &nbsp;</a>
								<a href="itemList.do">용품추천&nbsp;&nbsp; &nbsp;</a>
								<a href="helpList.do">도움요청&nbsp;&nbsp; &nbsp;</a>
								<a href="tipList.do">육아꿀팁&nbsp;&nbsp; &nbsp;</a>
							</div>
						</div>
					</div>

					<div class="content col-md-8">
						<c:set var="vo" value="${list}" />
						<c:if test="${vo[0].category eq 'free'}">
							<div class="board_align">
							<h2 class="section-title community_title">자유게시판</h2>
							</div>
						</c:if>
						<c:if test="${vo[0].category eq 'item'}">
							<h2 class="section-title community_title">용품추천</h2>
						</c:if>
						<c:if test="${vo[0].category eq 'help'}">
							<h2 class="section-title community_title">도움요청</h2>
						</c:if>
						<c:if test="${vo[0].category eq 'tip'}">
							<h2 class="section-title community_title">육아꿀팁</h2>
						</c:if>

						<div class="board_write" align="right">
							<c:if test="${vo[0].category ne 'tip'}">
								<c:if test="${not empty loginMember}">
									<button type="button"
										style="background: white; border: 2px solid #FEB7D1; border-radius: 12px; font-size: 20px; color: black;box-shadow: 1px 1px 3px 1px #dadce0;">
										<span class="site-title"><a
											href="boardWrite.do?cate=${vo[0].category}">글쓰기</a></span>
									</button>
								</c:if>
							</c:if>

						</div>
					<div class="table_align">
						<div class="table-responsive">
							<table class="table_board">
								<thead>
									<tr class="board_tr">
										<th class="board_no">번호</th>
										<th class="board_title">제목</th>
										<th class="board_nick">닉네임</th>
										<th class="board_date">작성일</th>
									</tr>
								</thead>
								<tbody>
									<c:set var="cnt" value="${fn:length(vo)}" />
									<c:forEach var="vo" items="${list}">
										<tr class="board_value">
											<td>${cnt}</td>
											<td><a
												href="${cpath}/boardContent.do?board_no=${vo.board_no}">${vo.title}</a></td>
											<td>${vo.nickname}</td>
											<td>${vo.indate}</td>
										</tr>
										<c:set var="cnt" value="${cnt-1}" />
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					</div>

				</div>
			</div>
		</div>

		<%@ include file="footer.jsp"%>
	</div> --%>


<script src="${cpath}/resources/js/js/jquery-1.11.1.min.js"></script>
<script src="${cpath}/resources/js/js/plugins.js"></script>
<script src="${cpath}/resources/js/js/app.js"></script>
<script src="${cpath}/resources/js/js/loginJS.js"></script>
<script src="${cpath}/resources/js/js/joinJS.js"></script>
</body>
</html>