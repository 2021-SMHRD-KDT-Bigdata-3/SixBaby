<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>아기 정보 수정</title>

		<!-- Loading third party fonts -->
		<link href="${cpath}/resources/fonts/novecento-font/novecento-font.css" rel="stylesheet" type="text/css">
		<link href="${cpath}/resources/fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

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

			<div class="page-head" data-bg-image="${cpath}/resources/images/page-head-1.jpg">
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
							                <col width="30%"/>
							                <col width="auto"/>
							              </colgroup>
							              <tbody>
							              	<tr>
							              	<td>
							              		<select name="아이를 골라골라~">
							              			<option value="첫째">하나</option>
							              			<option value="둘째">두식이</option>
							              		</select>
							              		<td>
							              	</tr>
							                <tr>
							                  <th><span>아이 이름</span></th>
							                  <td><input type="text" placeholder="태명 or 이름을 입력하세요."></td>
							                </tr>
							                <tr>
							                  <th><span>아이 성별</span></th>
							                  <td>남♂<input type="radio" name="gender" value="man">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							                  여♀<input type="radio" name="gender" value="woman"></td>
							                </tr>
							                <tr>
							                  <th><span>아이 생년월일</span></th>
							                  <td><input type="text" placeholder="ex) 2020 5월 18일 : 200518"></td>
							                </tr>
							                <tr>
							                	<td><button type="button" id=""  style="position: relative; left: 120px; background:white;">완료</button></td>
							                </tr>
							                <tr>
							                	<td><button type="button" id="modal_open_btn_secession"><span class="site-title">탈퇴</span></button></td>
							                </tr>
							                <tr>
							                <td colspan=2>
							            <div class="exform_txt" style="color:darkgray; font-weight:400" ><span>정보를 정확히 입력하셨으면 완료눌러주세요.</span></div>
							            </td>
							            <td>
							            </td>
							            </tr>
							              </tbody>
							            </table>
							          </div><!-- correction_form E  -->
								</div>
								
							</div>
						</div>
					</div>
				</div>


					<div id="modal_secession">
					   
									    <div class="modal_content">
					        <div class="form_txtInput">
					          <h2 class="sub_tit_txt">회원 탈퇴</h2>
					          <p class="exTxt">신중해주세요.</p>
					          <div class="join_form">
					            <table align="center">
					              <colgroup>
					                <col width="30%"/>
					                <col width="auto"/>
					              </colgroup>
					              <tbody>
					                <tr>
					                  <th><span>아이디</span></th>
					                  <td><input type="text" placeholder="ID 를 입력하세요."></td>
					                </tr>
					                <tr>
					                  <th><span>비밀번호</span></th>
					                  <td><input type="password" placeholder="PW 를 입력하세요"></td>
					                </tr>
					                <tr>
					                	<td><button type="button" id="" style="border: solid white; background:white;">확인</button></td>
					                </tr>
					              </tbody>
					            </table>
					          </div><!-- join_form E  -->
					          <div class="btn_wrap">
					            <button type="button" id="modal_close_btn_secession" style="background:white; border-radius: 12px; border:solid white;">창 닫기</button>
					          </div>
					        </div> <!-- form_txtInput E -->
					    </div> <!-- container E -->
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