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

<title>메인</title>
<style>
ul, li {
	list-style: none;
}

.slide {
	height: 150px;
}

.slide ul {
	height: 100%;
}

.slide li {
	height: 100%;
}

.slide li:nth-child(1) {
	background: #ECBFCA;
}

.slide li:nth-child(2) {
	background: #ECBFCA;
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
<link href="${cpath}/resources/fonts/nanum.css" rel="stylesheet"
	type="text/css">
<link href="${cpath}/resources/fonts/hyemin.css" rel="stylesheet"
	type="text/css">
<link href="${cpath}/resources/fonts/jua.css" rel="stylesheet"
	type="text/css">
<link href="${cpath}/resources/fonts/onglip.css" rel="stylesheet"
	type="text/css">
<link href="${cpath}/resources/fonts/kyobo.css" rel="stylesheet"
	type="text/css">


<!-- Loading main css file -->
<link rel="stylesheet" href="${cpath}/resources/css/style.css">

<!-- 폰트적용 -->
<link rel="stylesheet" href="css/font.css" />

<!--[if lt IE 9]>
      <script src="js/ie-support/html5.js"></script>
      <script src="js/ie-support/respond.js"></script>
      <![endif]-->
</head>
<body>

	<div class="site-content">

		<%@ include file="header.jsp"%>


		<!-- 페이드 슬라이드 배너 -->
		<div class="slide" style="height: 350px; width: 100%; text-align:center;">
			<ul>
				<li>
					<img class="main_bn" src="${cpath}/resources/images/solution.jpg">
				</li>
				<li>
					<img class="main_bn" src="${cpath}/resources/images/crys.jpg">
				</li>
			</ul>
		</div>

		<div class="fullwidth-block2">
			<div class="container2">
				<div class="row">


					<div class="content col-md-15">
						<div class="main_block">
								<div class="sub_block">
								<br><img class="main_content_img" src="${cpath}/resources/images/mike.png"><br>실시간 음성 인식 서비스
								</div>
						</div>
						<div class="main_block">
								<div class="sub_block">
								<br><img class="main_content_img" src="${cpath}/resources/images/diary.png"><br>아이를 위한 육아 일기
								</div>
						</div>
						<div class="main_block">
								<div class="sub_block">
								<br><img class="main_content_img" src="${cpath}/resources/images/communication.png"><br>아이를 위한 소통
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
	<script src="${cpath}/resources/js/js/jquery-ui.js"></script>
	<script src="${cpath}/resources/js/js/loginJS.js"></script>
	<script src="${cpath}/resources/js/js/joinJS.js"></script>
</body>
</html>