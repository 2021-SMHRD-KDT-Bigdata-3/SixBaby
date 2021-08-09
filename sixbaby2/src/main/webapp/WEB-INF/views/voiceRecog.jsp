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

<title>아기울음 분석</title>

<!-- Loading third party fonts -->
<link href="${cpath}/resources/fonts/novecento-font/novecento-font.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- Loading main css file -->
<link rel="stylesheet" href="${cpath}/resources/css/style.css">

<script>
	function analysis(conditions) {
		$.ajax({
			url : "${cpath}/cryAnalysis.do?conditions=" + conditions,
			type : "get",
			dataType : "json",
			success : resultHtml,
			error : function() {
				alert("error");
			}
		});
	}
	function resultHtml(data) {
		var result = "<table>";
		result += "<tr>";
		//result+="<td>배고픔</td>";
		//result+="<td>배변</td>";
		//result+="<td>트림</td>";
		//result+="<td>온도</td>";
		//result+="</tr>";
		result += "<tr>";
		result += "<td>우는 이유 : " + data.conditions + "</td>";
		result += "</tr>";
		result += "<tr>";
		result += "<td>설명 : " + data.exp + "</td>";
		result += "</tr>";
		result += "<tr>";
		result += "<td>해결책 : " + data.solu + "</td>";
		result += "</tr>";
		result += "</table>";
		$("#reason").html(result);
	}
</script>
</head>
<body>

	<div class="site-content">
		<%@ include file="header.jsp"%>

		<div class="page-head"
			data-bg-image="${cpath}/resources/images/page-head-1.jpg">
			<div class="container">
				<h2 class="page-title">VOICE RECOGNITION SERVICE</h2>
			</div>
		</div>
		<div class="fullwidth-block">
			<div class="container">
				<div class="row">
					<div class="content col-md-8">

						<h3>아기가 왜 울까요? 어떻게 하면 좋을지 알려드릴게요</h3>

						<c:set var="vo" value="${vo}" />
						<c:set var="cond" value="${ddong}" />
						<h1>
							<button type="button" onclick="analysis('${cond}')">울음분석하기(클릭!)</button>
						</h1>
						<div id="reason">--여기에 우는이유/설명/해결책 뜰거임---</div>

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