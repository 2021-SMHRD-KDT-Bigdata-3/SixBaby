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
          <h2 class="sub_tit_txt">ȸ������</h2>
          <p class="exTxt">ȸ�����Խ� �̸��� ������ �ݵ�� �����ϼž� �մϴ�.</p>
          <div class="join_form">
            <table>
              <colgroup>
                <col width="30%"/>
                <col width="auto"/>
              </colgroup>
              <tbody>
                <tr>
                  <th><span>���̵�</span></th>
                  <td><input type="text" placeholder="ID �� �Է��ϼ���."></td>
                </tr>
                <tr>
                  <th><span>�̸�</span></th>
                  <td><input type="text" placeholder=""></td>
                </tr>
                <tr>
                  <th><span>��й�ȣ</span></th>
                  <td><input type="text" placeholder="��й�ȣ�� �Է����ּ���."></td>
                </tr>
                <tr>
                  <th><span>��й�ȣ Ȯ��</span></th>
                  <td><input type="text" placeholder="��й�ȣ�� Ȯ���ϼ���"></td>
                </tr>
                
                <tr>
                  <th><span>�޴��� ��ȣ</span></th>
                  <td><input type="text" placeholder="��ȭ��ȣ�� �Է��ϼ���."></td>
                </tr>
                <tr>
                  <th><span>�¸�/�̸�</span></th>
                  <td><input type="text" placeholder="�¸� or �̸��� �Է��ϼ���."></td>
                </tr>
                <tr>
                  <th><span>����</span></th>
                  <td>����<input type="radio" name="gender" value="man"></td>
                  <td>����<input type="radio" name="gender" value="woman"></td>
                </tr>
              </tbody>
            </table>
            <div class="exform_txt"><span>ǥ�ô� �ʼ������� �Է����ּž� ������ �����մϴ�.</span></div>
          </div><!-- join_form E  -->
          <div class="btn_wrap">
            <a href="javascript:;">����</a>
          </div>
        </div> <!-- form_txtInput E -->
      </div><!-- content E-->
    </div> <!-- container E -->
</body>
</html>