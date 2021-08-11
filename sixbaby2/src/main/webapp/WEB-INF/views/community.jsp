<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
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
<!-- Loading main css file -->
<link rel="stylesheet" href="${cpath}/resources/css/style.css">

</head>
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
							<ul class="arrow">
								<li><a href="boardList.do">자유게시판</a></li>
								<li><a href="itemList.do">용품추천</a></li>
								<li><a href="helpList.do">도움요청</a></li>
								<li><a href="tipList.do">육아꿀팁</a></li>
							</ul>
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
										style="background: white; border:1px solid white; border-radius: 12px; font-size: 20px; color: black;box-shadow: 1px 1px 3px 1px #dadce0;">
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
	</div>


	<script src="${cpath}/resources/js/js/jquery-1.11.1.min.js"></script>
	<script src="${cpath}/resources/js/js/plugins.js"></script>
	<script src="${cpath}/resources/js/js/app.js"></script>
</body>
</html>