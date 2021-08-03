<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${cpath}/resources/css/join.css">
</head>
<body>
<div class="wrap wd668">
      <div class="container">
        <div class="form_txtInput">
          <h2 class="sub_tit_txt">회원가입</h2>
          <p class="exTxt">회원가입시 이메일 인증을 반드시 진행하셔야 합니다.</p>
          <div class="join_form">
            <table>
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
                  <th><span>이름</span></th>
                  <td><input type="text" placeholder=""></td>
                </tr>
                <tr>
                  <th><span>비밀번호</span></th>
                  <td><input type="text" placeholder="비밀번호를 입력해주세요."></td>
                </tr>
                <tr>
                  <th><span>비밀번호 확인</span></th>
                  <td><input type="text" placeholder="비밀번호를 확인하세요"></td>
                </tr>
                
                <tr>
                  <th><span>휴대폰 번호</span></th>
                  <td><input type="text" placeholder="전화번호를 입력하세요."></td>
                </tr>
                <tr>
                  <th><span>태명/이름</span></th>
                  <td><input type="text" placeholder="태명 or 이름을 입력하세요."></td>
                </tr>
                <tr>
                  <th><span>성별</span></th>
                  <td>남♂<input type="radio" name="gender" value="man"></td>
                  <td>여♀<input type="radio" name="gender" value="woman"></td>
                </tr>
              </tbody>
            </table>
            <div class="exform_txt"><span>표시는 필수적으로 입력해주셔야 가입이 가능합니다.</span></div>
          </div><!-- join_form E  -->
          <div class="btn_wrap">
            <a href="javascript:;">다음</a>
          </div>
        </div> <!-- form_txtInput E -->
      </div><!-- content E-->
    </div> <!-- container E -->
</body>
</html>