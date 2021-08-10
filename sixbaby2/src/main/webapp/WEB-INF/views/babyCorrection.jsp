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

<title>아기 정보 수정</title>

<!-- Loading third party fonts -->
<link href="${cpath}/resources/fonts/novecento-font/novecento-font.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/hyemin.css"
	rel="stylesheet" type="text/css">
<!-- Loading main css file -->
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
<link href="${cpath}/resources/fonts/nanum.css"
	rel="stylesheet" type="text/css">	
<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->
</head>
<body>
	<div class="site-content">

		<%@ include file="header.jsp"%>

		<div class="page-head"
			data-bg-image="${cpath}/resources/images/bg.png">
			<div class="container">
				<h2 class="page-title">아이 정보 수정</h2>
			</div>
		</div>

		<div class="fullwidth-block">
			<div class="container">
				<div class="row">
					<div class="content col-md-13">
						<div class="row">

							<div class="correction_form">
								<table align="center">
									<colgroup>
										<col width="40%" />
										<col width="auto" />
									</colgroup>
									<tbody>
										<tr class="correct_tr_term">
											<td><select class="babyselect_btn" name="아이를 골라골라~">
													<option value="첫째">첫째</option>
													<option value="둘째">둘째</option>
													<option value="셋째">셋째</option>
											</select>
											<td>
										</tr>
										<tr class="correct_tr_term">
											<th><span>아이 이름</span></th>
											<td><input class="correct_input" type="text"
												placeholder="태명 or 이름을 입력하세요."></td>
										</tr>
										<tr class="correct_tr_term">
											<th><span>아이 성별</span></th>
											<td>남♂<input type="radio" name="gender" value="man">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												여♀<input type="radio" name="gender" value="woman"></td>
										</tr>
										<tr class="correct_tr_term">
											<th><span>아이 생년월일</span></th>
											<td><input type="date" name="birth"
												style="background: white; border: 1px solid #FDDBDB; width: 108%; box-shadow: 1px 1px 3px 1px #dadce0 inset; height: 30px;"></td>
										</tr>
										<tr class="correct_tr_term">
											<td colspan="2" style="text-align: center;"><button
													class="correct_btn">완료</button></td>
										</tr>
										<tr class="correct_tr_term">
											<td colspan=2>
												<div class="exform_txt"
													style="color: darkgray; font-weight: 400">
													<span>정보를 정확히 입력하셨으면 완료눌러주세요.</span>
												</div>
											</td>
											<td></td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- correction_form E  -->
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
	<script src="${cpath}/resources/js/js/correctionJS.js"></script>
</body>
</html>