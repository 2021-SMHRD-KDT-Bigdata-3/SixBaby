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

<title>알람</title>

<!-- Loading third party fonts -->
<link href="${cpath}/resources/fonts/novecento-font/novecento-font.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/nanum.css" rel="stylesheet"
	type="text/css">
<link href="${cpath}/resources/fonts/hyemin.css" rel="stylesheet"
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

		<h1 align="center">alarm</h1>
		<div id="alarm" align="center">
			<h1>아기가 울고 있어요!!!!</h1>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
	
	
	<script src='${cpath}/resources/js/js/jquery-3.6.0.js'></script>
	<script src='${cpath}/resources/js/js/jquery-ui.js'></script>
	<script>
		$('#alarm').css('font-size', '50px').css('border', '0px dotted red')
				.animate({
					'border-width' : '4px'
				}, 1000).animate({
					'border-width' : '0px'
				}, 1000).animate({
					'font-size' : '30px',
					'color' : 'black'
				}, 1000);
	</script>


	<script src="${cpath}/resources/js/js/jquery-1.11.1.min.js"></script>
	<script src="${cpath}/resources/js/js/plugins.js"></script>
	<script src="${cpath}/resources/js/js/app.js"></script>
	<script src="${cpath}/resources/js/js/jquery-ui.js"></script>
	<script src="${cpath}/resources/js/js/loginJS.js"></script>
	<script src="${cpath}/resources/js/js/joinJS.js"></script>
</body>
</html>