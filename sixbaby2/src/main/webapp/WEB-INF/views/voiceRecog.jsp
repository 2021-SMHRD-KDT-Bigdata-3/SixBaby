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
<link href="${cpath}/resources/fonts/nanum.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/hyemin.css"
	rel="stylesheet" type="text/css">

<!-- Loading main css file -->
<link rel="stylesheet" href="${cpath}/resources/css/style.css">

<script>
	var cnt = 0;
	/* function analysis() {
		$.ajax({
			url : "${cpath}/cryAnalysis.do",
			type : "get",
			dataType : "json",
			success : (res) =>{
				console.log(res);
				if(res.conditions !== "not_crying"){
					var audio = document.getElementById("audio");
					var source = document.getElementById("audioSource");
					source.src = "resources/sound/test.wav";
					audio.load();
					audio.play();
				}
				resultHtml(res)
			},
			error : function() {
				alert("error");
			}
		});
	} */
	function analysis() {
		$.ajax({
			url : "${cpath}/cryAnalysis.do",
			type : "get",
			dataType : "json",
			success : resultHtml,
			error : function() {
				alert("error");
			}
		});
	}
	function resultHtml(data) {
		if(cnt%2==0){
			var result = "<table class='voice_table'>";
			result += "<tr class='voice_td'>";
			result += "<td>우는 이유</td>";
			result += "</tr>";
			result += "<tr>";
			result += "<td class='voice_tr'>"+ data.conditions + "</td>";
			result += "</tr>";
			result += "<tr class='voice_td'>";
			result += "<td>설명</td>";
			result += "</tr>";
			result += "<tr>";
			result += "<td class='voice_tr'>" + data.exp + "</td>";
			result += "</tr>";
			result += "<tr class='voice_td'>";
			result += "<td>해결책</td>";
			result += "</tr>";
			result += "<tr>";
			result += "<td class='voice_tr'>" + data.solu + "</td>";
			result += "</tr>";
			result += "<tr>";
			result += "<td>";
			result += "</td>";
			result += "</tr>";
			result += "</table>";
			cnt++;
		}else{
			var result = "";
            cnt++;
		}
		$("#reason").html(result);
	}
</script>
</head>
<body>

	<div class="site-content">
		<%@ include file="header.jsp"%>

		<div class="page-head"
			data-bg-image="${cpath}/resources/images/bg.png">
			<div class="container">
				<h2 class="page-title">울음분석</h2>
			</div>
		</div>
		<div class="fullwidth-block">
			<div class="container">
				<div class="row">
				<audio id="audio">
					<source id="audioSource" src="">
				</audio>
					<div class="content col-md-8 voice_align">

						<h2>분석을 시작하기 전 필독!!</h2>
						<h2>대부분의 경우 울음의 원인을 제거하면 아기는 곧 울음을 그치니 아기가 우는 상황에서 중요한 것은 침착한 마음으로 원인을 재빨리 찾아내는 것입니다.</h2>
						<p>아기 울음소리를 구분하기 전 기초 세팅 2가지</p>
						<p>1. 부모의 마인드 세팅</p>
						<p>울음의 원인이 해결되지 않는 경우 더 크게 웁니다. 일반적인 상황에서는 아기들은 항상 낑낑대는 상황을 거치고 여기서 해결되지 않으면 더 불같이 웁니다. 잘못된 대응을 할 경우 오히려 울음을 키워 아기 성격을 버리게 할 수도 있습니다. </p>
						<p>2. 아기의 행동 패턴 파악</p>
						<p>배고프거나 기저귀가 불편하거나 졸려서 우는 울음은 평소의 패턴을 통해 재빠르게 파악할 필요가 있습니다.</p>
						
						<c:set var="vo" value="${vo}" />
						<h1>
							<button class="voice_btn" type="button" onclick="analysis()">울음분석하기(클릭!)</button>
						</h1>
						<div id="reason"></div>

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