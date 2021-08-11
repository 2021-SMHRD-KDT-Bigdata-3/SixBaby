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

<title>마이페이지</title>

<!-- Loading third party fonts -->
<link href="${cpath}/resources/fonts/novecento-font/novecento-font.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/nanum.css" rel="stylesheet"
	type="text/css">
<link href="${cpath}/resources/fonts/onglip.css" rel="stylesheet"
	type="text/css">
<link href="${cpath}/resources/fonts/kyobo.css" rel="stylesheet"
	type="text/css">


<!-- Loading main css file -->
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
<link href="${cpath}/resources/fonts/hyemin.css" rel="stylesheet"
	type="text/css">
<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->
<script>

	var cnt = 0;
	function view(id) {
		$.ajax({
			url : "${cpath}/babyView.do?id=" + id,
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
			var result = "<table>";
			result += "<tr class='voice_tr'>";
			result+="<tr>";
	        result+="<td>아기 이름</td>";
	        result+="<td>아기 성별</td>";
	        result+="<td>아기 생일</td>";
	        result+="</tr>";
			$.each(data, (index,obj)=>{
				result+="<tr>";
				result += "<td class='voice_td'>" + obj.baby_name + "</td>";
				result += "<td class='voice_td'>" + obj.baby_gender + "</td>";
				result += "<td class='voice_td'>" + obj.baby_birth + "</td>";
				result += "</tr>";
			});
			result += "</table>";
			cnt++;
		}else{
            var result = "";
            cnt++;
         }
		$("#baby").html(result);
	}
</script>
</head>
<body>
	<div class="site-content">

		<%@ include file="header.jsp"%>

		<div class="page-head"
			data-bg-image="${cpath}/resources/images/bg.png">
			<div class="container">
				<h2 class="page-title">마이페이지</h2>
			</div>
		</div>

		<main class="main-content">

			<div class="fullwidth-block">
				<div class="container">
					<div class="row">
						<div class="content col-md-13">
							<div class="row">
								<div class="family">
									<h2 class="section-title">${loginMember.name}님환영합니다</h2>
									<div class="correct">
										<button class="correct_btn">
											<a href="correction.do">회원 정보 수정</a><br>
										</button>
									</div>
									<div class="correct">
										<button class="correct_btn" id="modal_open_btn_baby">
											<span class="site-title">아이 추가</span>
										</button>
									</div>
									<div class="correct">
										<button class="correct_btn" id="modal_open_btn_baby"
											onclick="view('${loginMember.id}')">
											<span class="site-title">아기정보 확인</span>
										</button>
										<div id="baby"></div>
									</div>
									<img src="${cpath}/resources/images/header_logo.png" alt=""
										class="family-image" style="width: 150px;">
									<h3 class="family-name"></h3>
									<small></small>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</main>
		<!-- .main-content -->

		<div id="modal_baby">

			<div class="modal_content">
				<form action="${cpath}/babyInsert.do" method="POST">
					<div class="form_txtInput">
						<h2 class="sub_tit_txt" align="center">아이 추가</h2>
						<p class="exTxt" align="center">정보를 정확히 입력해주세요.</p>
						<div class="join_form">
							<input type="hidden" name="id" value="${loginMember.id}">
							<table align="center">
								<colgroup>
									<col width="40%" />
									<col width="auto" />
								</colgroup>
								<tbody>
									<tr class="correct_tr_term">
										<th><span>아이 이름</span></th>
										<td><input class="correct_input" type="text"
											name="baby_name" placeholder="태명 or 이름을 입력하세요."></td>
									</tr>
									<tr class="correct_tr_term">
										<th><span>아이 성별</span></th>
										<td>남♂<input type="radio" name="baby_gender" value="man">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											여♀<input type="radio" name="baby_gender" value="woman"></td>
									</tr>
									<tr class="correct_tr_term">
										<th><span>아이 생년월일</span></th>
										<td><input class="correct_input" type="text"
											name="baby_birth" placeholder="ex) 2020 5월 18일 : 200518"></td>
									</tr>
									<tr class="correct_tr_term">
										<td colspan="2" align="center">
											<button class="correct_btn">완료</button>
										</td>
									</tr>
								</tbody>
							</table>
							<div class="exform_txt"
								style="color: darkgray; font-weight: 400; text-align: center;">
								<span>정보를 정확히 입력하셨으면 완료눌러주세요.</span>
							</div>
						</div>
						<!-- join_form E  -->
						<div class="btn_wrap">
							<button type="button" id="modal_close_btn_baby"
								class="correct_btn">닫기</button>
						</div>
					</div>
				</form>
				<!-- form_txtInput E -->
			</div>
			<!-- container E -->
			<div class="modal_layer"></div>
		</div>

		<%@ include file="footer.jsp"%>
	</div>


	<script src="${cpath}/resources/js/js/jquery-1.11.1.min.js"></script>
	<script src="${cpath}/resources/js/js/plugins.js"></script>
	<script src="${cpath}/resources/js/js/app.js"></script>
	<script src="${cpath}/resources/js/js/babyJS.js"></script>
	<script src="${cpath}/resources/js/js/loginJS.js"></script>
	<script src="${cpath}/resources/js/js/joinJS.js"></script>
</body>
</html>