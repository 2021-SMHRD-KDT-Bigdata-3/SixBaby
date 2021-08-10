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
		
		<title>회원정보 수정</title>

		<!-- Loading third party fonts -->
		<link href="${cpath}/resources/fonts/novecento-font/novecento-font.css" rel="stylesheet" type="text/css">
		<link href="${cpath}/resources/fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

		<!-- Loading main css file -->
		<link rel="stylesheet" href="${cpath}/resources/css/style.css">
		
		<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->
<style>
.correct_th{
padding:0px;
}
</style>
</head>
<body>
<div class="site-content">

					 <%@ include file="header.jsp"%>

			<div class="page-head" data-bg-image="${cpath}/resources/images/bg.png">
				<div class="container">
					<h2 class="page-title">회원 정보 수정</h2>
				</div>
			</div>

				<div class="fullwidth-block">
					<div class="container">
						<div class="row">
							<div class="content col-md-13">
								<div class="row">
									
									<div class="correction_form">
							            <table class="correct_table" align="center">
							              <tbody>
							              <tr class="correct_tr">
							                	<td colspan="2"><div class="correct_btn2"><button id="modal_open_btn_secession" class="correct_btn" >탈퇴</button></div></td>
							                </tr>
							                <br>
							                <tr class="correct_tr">
							                  <th class="correct_th"><span>아이디</span></th>
							                  <td><input type="text" placeholder="ID 를 입력하세요." style="border:1px solid #FDDBDB; width:270px;box-shadow: 1px 1px 3px 1px #dadce0 inset; height:30px;"></td>
							                </tr>
							                <tr class="correct_tr">
							                  <th class="correct_th"><span>비밀번호</span></th>
							                  <td><input type="password" placeholder="비밀번호를 입력하세요." style="border:1px solid #FDDBDB; width:270px;box-shadow: 1px 1px 3px 1px #dadce0 inset; height:30px;"></td>
							                </tr>
							                <!-- <tr class="correct_tr">
							                  <th class="correct_th"><span>비밀번호 확인</span></th>
							                  <td><input type="password" placeholder="비밀번호를 확인하세요."></td>
							                </tr>-->
							                <tr class="correct_tr">
							                  <th class="correct_th"><span>이름</span></th>
							                  <td><input type="text" placeholder="이름을 입력하세요." style="border:1px solid #FDDBDB; width:270px;box-shadow: 1px 1px 3px 1px #dadce0 inset; height:30px;"></td>
							                </tr>
							                <tr class="correct_tr">
							                <th class="correct_th"><span>성별</span></th>
							                  <td>남♂<input type="radio" name="gender" value="man">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							                  여♀<input type="radio" name="gender" value="woman"></td>
							                </tr>
							                <tr class="correct_tr">
							                  <th class="correct_th"><span>닉네임</span></th>
							                  <td><input type="text" placeholder="닉네임을 입력하세요." style="border:1px solid #FDDBDB; width:270px;box-shadow: 1px 1px 3px 1px #dadce0 inset; height:30px;"></td>
							                </tr>
							                <tr class="correct_tr">
							                  <th class="correct_th"><span>생년월일</span></th>
							                   <!--<td><input type="date"></td>-->
							                  <td><input type="text" placeholder="ex) 1996 2월 18일 : 960218" style="border:1px solid #FDDBDB; width:270px;box-shadow: 1px 1px 3px 1px #dadce0 inset; height:30px;"></td>
							                </tr>
							                
							                <tr class="correct_tr">
							                  <th class="correct_th"><span>휴대폰 번호</span></th>
							                  <td><input type="text" placeholder="전화번호를 입력하세요."style="border:1px solid #FDDBDB; width:270px;box-shadow: 1px 1px 3px 1px #dadce0 inset; height:30px;"></td>
							                </tr>
							                <tr class="correct_tr">
							                	<td colspan="2"><div class="correct_btn2"><button class="correct_btn">완료</button></div></td>
							                </tr>
							                
							              </tbody>
							            </table>
							            <div class="exform_txt correct_btn2" style="color:darkgray; font-weight:400" ><span>정보를 정확히 입력하셨으면 완료눌러주세요.</span></div>
							          </div><!-- correction_form E  -->
								</div>
								
							</div>
						</div>
					</div>
				</div>


					<div id="modal_secession">
					   
									    <div class="modal_content">
					        <div class="form_txtInput">
					          <h2 class="sub_tit_txt" align="center">회원 탈퇴</h2>
					          <p class="exTxt" align="center">정말 탈퇴하시겠습니까?</p>
					          <div class="join_form">
					            <table align="center">
					              <colgroup>
					                <col width="40%"/>
					                <col width="auto"/>
					              </colgroup>
					              <tbody>
					                <tr class="correct_tr_term">
					                  <th><span>아이디</span></th>
					                  <td><input type="text" placeholder="ID 를 입력하세요." style="border:1px solid #FDDBDB; width:250px;box-shadow: 1px 1px 3px 1px #dadce0 inset; height:30px;"></td>
					                </tr>
					                <tr class="correct_tr_term">
					                  <th><span>비밀번호</span></th>
					                  <td><input type="password" placeholder="PW 를 입력하세요" style="border:1px solid #FDDBDB; width:250px;box-shadow: 1px 1px 3px 1px #dadce0 inset; height:30px;"></td>
					                </tr>
					                <tr>
					                	<td colspan="2" align="center"><button class="correct_btn">확인</button></td>
					                </tr>
					              </tbody>
					            </table>
					          </div><!-- join_form E  -->
					          <div class="btn_wrap">
					            <button id="modal_close_btn_secession" class="correct_btn">닫기</button>
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