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
		
		<title>마이페이지</title>

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
			
			<div class="page-head" data-bg-image="${cpath}/resources/images/bg.png">
				<div class="container">
					<h2 class="page-title">MyPage</h2>
				</div>
			</div>
			
			<main class="main-content">
			
				<div class="fullwidth-block">
					<div class="container">
						<div class="row">
							<div class="content col-md-13">
								<div class="row">
									<div class="family">
								<h2 class="section-title">${loginMember.id}</h2>
								<div class="correct">
								<button class="correct_btn">
								<a href="correction.do">회원 정보 수정</a><br>
								</button>
								</div>
								<div class="correct">
								<button class="correct_btn">
								<a href="babyCorrection.do">아이 정보 수정</a><br>
								</button> &nbsp;&nbsp;
								<button class="correct_btn" id="modal_open_btn_baby"><span class="site-title">아이 추가</span></button>
								</div>
										<img src="${cpath}/resources/images/family-1.jpg" alt="" class="family-image">
										<h3 class="family-name">Smith</h3>
										<small style="color:#666666;">John, Anna, Patrick, Susan</small>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</main> <!-- .main-content -->
			
			<div id="modal_baby">
   
				    <div class="modal_content">
        <div class="form_txtInput">
          <h2 class="sub_tit_txt" align="center">아이 추가</h2>
          <p class="exTxt" align="center">정보를 정확히 입력해주세요.</p>
          <div class="join_form">
            <table align="center">
              <colgroup>
                <col width="40%"/>
                <col width="auto"/>
              </colgroup>
              <tbody>
                <tr class="correct_tr_term">
                  <th><span>아이 이름</span></th>
                  <td><input type="text" placeholder="태명 or 이름을 입력하세요." style="border:1px solid #FDDBDB; width:270px;box-shadow: 1px 1px 3px 1px #dadce0 inset; height:30px;"></td>
                </tr>
                <tr class="correct_tr_term">
                  <th><span>아이 성별</span></th>
                  <td>남♂<input type="radio" name="gender" value="man">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  여♀<input type="radio" name="gender" value="woman"></td>
                </tr>
                <tr class="correct_tr_term">
                  <th><span>아이 생년월일</span></th>
                  <td><input type="text" placeholder="ex) 2020 5월 18일 : 200518" style="border:1px solid #FDDBDB; width:270px;box-shadow: 1px 1px 3px 1px #dadce0 inset; height:30px;"></td>
                </tr>
                <tr class="correct_tr_term">
                	<td colspan="2" align="center">
			            <button class="correct_btn">완료</button>
                	</td>
                </tr>
              </tbody>
            </table>
            <div class="exform_txt" style="color:darkgray; font-weight:400; text-align:center; color:#6666666; fomt-size:18px;" ><span>정보를 정확히 입력하셨으면 완료눌러주세요.</span></div>
          </div><!-- join_form E  -->
          <div class="btn_wrap">
            <button type="button" id="modal_close_btn_baby" class="correct_btn">닫기</button>
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
		<script src="${cpath}/resources/js/js/babyJS.js"></script>
</body>
</html>