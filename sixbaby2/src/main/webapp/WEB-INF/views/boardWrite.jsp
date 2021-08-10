<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1">

<title>게시글 작성</title>

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

		<div class="page-head"
			data-bg-image="${cpath}/resources/images/page-head-1.jpg">
			<div class="container">
				<h2 class="page-title">Community</h2>
			</div>
		</div>

		<div class="fullwidth-block">
			<div class="container">
				<div class="row">

					<div class="sidebar col-md-3 col-md-offset-1">
						<div class="widget">
							<h3 class="widget-title">Categories</h3>
							<ul class="arrow">
								<li><a href="boardList.do">자유게시판</a></li>
								<li><a href="itemList.do">용품추천</a></li>
								<li><a href="helpList.do">도움요청</a></li>
								<li><a href="tipList.do">육아꿀팁</a></li>
							</ul>
						</div>
					</div>
					
					<div class="content col-md-8">
						<form class="form-horizontal" action="${cpath}/boardInsert.do"
							method="post">
							<div class="form-group">
								<c:set var="cat" value="${cate}" />
								<div class="title_write">
									<input class="write_category"
										type="text" name="category" value="${cat}" readonly="readonly">
								</div>
							</div>
							<br>
							<table>
								<div class="write_table"
									style="border: 2px solid #E63F39; border-radius: 12px;">
									<div class="form-group">
										<label class="control-label col-sm-2">작성자</label> <input
											type="text" class="form-control" name="nickname"
											 value="${loginMember.nickname}" placeholder="Enter writer" readonly="readonly">
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
										<label class="control-label col-sm-2" for="input-file"
											style="font-weight: bold; font-size: 16;">사진 첨부</label> <input
											type="file" id="input-file" name="picture">
									</div>
								</div>
							</table>
							<div class="form-group">
								<div class="col-sm-offset-13 col-sm-13">
									<input type="submit" class="btn_write"
										style="position: relative; border-radius: 12px; background: white; width: 20%; font-size: 22px; border: 2px solid #E63F39; padding: 0px;"
										value="등록"> &nbsp;
									<button type="reset" class="btn_write" value="취소"
										style="position: relative; border-radius: 12px; background: white; width: 20%; font-size: 22px; border: 2px solid #E63F39;">
										<a href="boardList.do">취소</a>
									</button>
								</div>
							</div>
						</form>

					</div>



				</div>
			</div>
		</div>

		<%@ include file="footer.jsp"%>
	</div>


	<script src="${cpath}/resources/js/js/jquery-1.11.1.min.js"></script>
	<script src="${cpath}/resources/js/js/plugins.js"></script>
	<script src="${cpath}/resources/js/js/app.js"></script>
	<script src="${cpath}/resources/js/js/jquery-ui.js"></script>
	<script src="${cpath}/resources/js/js/popup.js"></script>
</body>
</html>