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

<title>회원정보 수정</title>

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

<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->
<script type="text/javascript">
	function membupdate() {
		alert("회원정보가 수정되었습니다.");
	}
	function memDel(){
		alert("회원탈퇴되었습니다.");
	}
</script>
</head>
<body>
	<div class="site-content">

		<%@ include file="header.jsp"%>

		<div class="page-head"
			data-bg-image="${cpath}/resources/images/bg.png">
			<div class="container">
				<h2 class="page-title">회원 정보 수정</h2>
			</div>
		</div>
		<form action="${cpath}/memberUpdate.do" method="POST">
			<div class="fullwidth-block">
				<div class="container">
					<div class="row">
						<div class="content col-md-13">
							<div class="row">

								<div class="correction_form">
									<table class="correct_table" align="center">
										<tbody>
											<tr class="correct_tr">
												<th class="correct_th"><span>아이디</span></th>
												<td><input class="correct_input" type="text" name="id"
													value="${loginMember.id}" readonly="readonly"></td>
											</tr>
											<tr class="correct_tr">
												<th class="correct_th"><span>비밀번호</span></th>
												<td><input class="correct_input" type="password"
													name="pw" placeholder="비밀번호를 입력하세요."></td>
											</tr>
											<tr class="correct_tr">
												<th class="correct_th"><span>비밀번호 확인</span></th>
												<td><input class="correct_input" type="password"
													placeholder="비밀번호를 확인하세요."></td>
											</tr>
											<tr class="correct_tr">
												<th class="correct_th"><span>이름</span></th>
												<td><input class="correct_input" type="text"
													name="name" readonly="readonly"
													value="${loginMember.name }"></td>
											</tr>
											<tr class="correct_tr">
												<th class="correct_th"><span>성별</span></th>
												<td>남♂<input type="radio" name="gender" value="man">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													여♀<input type="radio" name="gender" value="woman"></td>
											</tr>
											<tr class="correct_tr">
												<th class="correct_th"><span>닉네임</span></th>
												<td><input class="correct_input" type="text"
													name="nickname" placeholder="닉네임을 입력하세요."></td>
											</tr>
											<tr class="correct_tr">
												<th class="correct_th"><span>생년월일</span></th>
												<td><input class="correct_input" type="text"
													name="birth" value="${loginMember.birth }" readonly="readonly"></td>
											</tr>

											<tr class="correct_tr">
												<th class="correct_th"><span>휴대폰 번호</span></th>
												<td><input class="correct_input" type="text"
													name="tell" placeholder="전화번호를 입력하세요."></td>
											</tr>
											<tr class="correct_tr">
												<td colspan="2"><div class="correct_btn2">
														<input type="submit" value="수정하기" class="correct_btn"
															onclick="membupdate()">
													</div></td>
										</tbody>
									</table>
								</div>
								<div class="exform_txt correct_btn2"
									style="color: darkgray; font-weight: 400">
									<span>정보를 정확히 입력하셨으면 수정하기 버튼을 눌러주세요.</span>
								</div>
								<!-- correction_form E  -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>


		<div class="correct_btn2">
			<button id="modal_open_btn_secession" class="correct_btn">회원탈퇴</button>
		</div>

		<div id="modal_secession">

			<div class="modal_content">
				<div class="form_txtInput">
					<h2 class="sub_tit_txt" align="center">회원 탈퇴</h2>
					<p class="exTxt" align="center">신중해주세요.</p>
					<form action="${cpath}/memberDelete.do" method="POST">
						<div class="join_form">
							<table align="center">
								<colgroup>
									<col width="40%" />
									<col width="auto" />
								</colgroup>
								<tbody>
									<tr class="correct_tr_term">
										<th><span>아이디</span></th>
										<td><input type="text" name="id"
											placeholder="ID 를 입력하세요."></td>
									</tr>
									<tr class="correct_tr_term">
										<th><span>비밀번호</span></th>
										<td><input type="password" name="pw"
											placeholder="PW 를 입력하세요"></td>
									</tr>
									<tr>
										<td colspan="2" align="center"><button
												class="correct_btn" onclick="memDel()">탈퇴</button></td>
									</tr>
								</tbody>
							</table>
						</div>
					</form>
					<!-- join_form E  -->
					<div class="btn_wrap">
						<button id="modal_close_btn_secession" class="correct_btn">창
							닫기</button>
					</div>
				</div>
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
	<script src="${cpath}/resources/js/js/correctionJS.js"></script>
</body>
</html>