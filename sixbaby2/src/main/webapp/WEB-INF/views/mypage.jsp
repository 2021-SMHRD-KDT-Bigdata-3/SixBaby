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
			
			<div class="page-head" data-bg-image="${cpath}/resources/images/page-head-1.jpg">
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
								<a href="correction.do">회원 정보 수정</a><br>
								<a href="babyCorrection.do">아이 정보 수정</a><br>
								<button type="button" id="modal_open_btn_baby"><span class="site-title">아이 추가</span></button>
										<img src="${cpath}/resources/images/family-1.jpg" alt="" class="family-image">
										<h3 class="family-name">Smith</h3>
										<small>John, Anna, Patrick, Susan</small>
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
          <button type="button" id="modal_close_btn_baby" style="background:white; border-radius: 12px;">창 닫기</button>
          <h2 class="sub_tit_txt">아이 추가</h2>
          <p class="exTxt" >정보를 정확히 입력해주세요.</p>
          <div class="join_form">
            <table align="center">
              <colgroup>
                <col width="30%"/>
                <col width="auto"/>
              </colgroup>
              <tbody>
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
              </tbody>
            </table>
            <div class="exform_txt" style="color:darkgray; font-weight:400" ><span>정보를 정확히 입력하셨으면 완료눌러주세요.</span></div>
          </div><!-- join_form E  -->
          <div class="btn_wrap">
            <a href="javascript:;"></a>
            <button type="button" id="" style="position: relative; right: 150px; background:white;">완료</button>
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