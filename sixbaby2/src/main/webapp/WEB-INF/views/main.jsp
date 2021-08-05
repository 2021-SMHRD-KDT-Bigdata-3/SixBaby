<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Sixbaby</title>
<style>
  *{margin:0;padding:0;}
  ul,li{list-style:none;}
  .slide{height:150px;overflow:hidden;}
  .slide ul{height:100%;}
  .slide li{height:100%;}
  .slide li:nth-child(1){background:#faa;}
  .slide li:nth-child(2){background:#afa;}
  .slide li:nth-child(3){background:#aaf;}
  .slide li:nth-child(4){background:#faf;}
</style>
<script>
const all = ele => document.querySelectorAll(ele)
const one = ele => document.querySelector(ele)
const slide = _ => {
  const wrap = one('.slide')
  const target = wrap.children[0]
  const len = target.children.length
  const liStyle = `
    position:absolute;
    left:0;right:0;top:0;bottom:0;transition:1s;opacity:0
  `
  target.style.cssText = `position:relative;`
  Array.from(target.children)
  .forEach(ele => ele.style.cssText = liStyle)
  target.children[0].style.opacity = 1
  let pos = 0
  setInterval(_ => {
    target.children[pos].style.opacity = 0
    pos = (pos + 1) % len 
    target.children[pos].style.opacity = 1
  }, 1500)
}
window.onload = function () {
  slide()
}
</script>
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
			<header class="site-header">
				<div class="container">
							<button type="button" id="modal_open_btn_login"><span class="site-title" style="background:white; position: relative; left:800px; bottom:100px; font-size:20px;">Login</span></button> &nbsp; &nbsp;
    						<button type="button" id="modal_open_btn_join" style="background:white; border:white; position: relative; left:800px; bottom:100px; font-size:20px;"><span class="site-title">Join</span></button>
					<a href="#" class="branding">
							
						<img src="${cpath}/resources/images/logotest.png" alt="" class="logo" style="max-width: 150px;">
						<h1 class="site-title" style="color:#E63F39">SixBaby</h1>
					</a>
					
					 <div class="main-navigation">
						<button class="menu-toggle"><i class="fa fa-bars"></i> Menu</button>
							<ul class="menu">

								<li class="menu-item current-menu-item"><a href="main.jsp">Homepage</a></li>
								<li class="menu-item"><a href="community.jsp">Community</a></li>
								<li class="menu-item"><a href="#">Baby Diary</a></li>
								<li class="menu-item"><a href="#">Voice Recognition Service</a></li>
							</ul>
					</div>

					<div class="mobile-navigation"></div>
				</div>
			</header> <!-- .site-header -->
					<div id="modal_login">
   
				    <div class="modal_content" style="border-radius: 12px; border:1px solid #E63F39;">
        <div class="">
          <h2 class="sub_tit_txt" style="position:relative; left:170px;">�α���</h2>
          <p class="exTxt" style="position:relative; left:120px;">������ ��Ȯ�� �Է����ּ���.</p>
          <div class="login_form">
            <table align="center">
              <colgroup>
                <col width="30%"/>
                <col width="auto"/>
              </colgroup>
              <tbody>
              <form action="${cpath}/login.do" method="post">
                <tr>
                  <th><span>���̵�</span></th>
                  <td><input type="text" name="id" placeholder="ID �� �Է��ϼ���."></td>
                </tr>
                <tr>
                  <th><span>��й�ȣ</span></th>

                  <td><input type="password" placeholder="PW �� �Է��ϼ���"></td>
                </tr> 
                <tr>
                	<td><button type="button" id="" style="border: solid white; background:white; position: relative; left : 140px; ">Ȯ��</button></td>
                </tr>
              </form>

              </tbody>
            </table>
          </div><!-- join_form E  -->
          <div class="btn_wrap">
            <button type="button" id="modal_close_btn_login" style="background:white; border-radius: 12px; border:solid white;">â �ݱ�</button>
          </div>
        </div> <!-- form_txtInput E -->
    </div> <!-- container E -->
				    	<div class="modal_layer"></div>
					</div>
					<div id="modal_join">
   
				    <div class="modal_content" style="background:white; border-radius: 12px; border:1px solid #E63F39;">
		<form action="${cpath}/memberInsert.do" method="post">
        <div class="form_txtInput">
          <button type="button" id="modal_close_btn_join" style="background:white; border:solid white; ">â �ݱ�</button>
          <h2 class="sub_tit_txt"  style="position:relative; left:170px;" >ȸ������</h2>
          <p class="exTxt" style="position:relative; left:120px;">������ ��Ȯ�� �Է����ּ���.</p>
          <div class="join_form">
            <table align="center">
              <colgroup>
                <col width="30%"/>
                <col width="auto"/>
              </colgroup>
              <tbody>
                <tr>
                  <th><span>���̵�</span></th>
                  <td><input type="text" name="id" placeholder="ID �� �Է��ϼ���."></td>
                </tr>
                <tr>
                  <th><span>��й�ȣ</span></th>
                  <td><input type="password" name="pw" placeholder="��й�ȣ�� �Է��ϼ���."></td>
                </tr>
                <tr>
                  <th><span>��й�ȣ Ȯ��</span></th>
                  <td><input type="password" placeholder="��й�ȣ�� Ȯ���ϼ���."></td>
                </tr>
                <tr>
                  <th><span>�̸�</span></th>
                  <td><input type="text" name="name" placeholder="�̸��� �Է��ϼ���."></td>
                </tr>
                <tr>
                <th><span>����</span></th>
                  <td>����<input type="radio" name="gender" value="man">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  ����<input type="radio" name="gender" value="woman"></td>
                </tr>
                <tr>
                  <th><span>�г���</span></th>
                  <td><input type="text" name="nickname" placeholder="�г����� �Է��ϼ���."></td>
                </tr>
                <tr>
                  <th><span>�������</span></th>
                  <td><input type="date"></td>
                </tr>
                
                <tr>
                  <th><span>�޴��� ��ȣ</span></th>
                  <td><input type="text" name="tell" placeholder="��ȭ��ȣ�� �Է��ϼ���."></td>
                </tr>

              </tbody>
            </table>
            <div align="center" class="exform_txt" style="color:darkgray; font-weight:400; position:relative; left:150;" ><span>������ ��Ȯ�� �Է��ϼ����� �Ϸᴭ���ּ���.</span></div>
          </div><!-- join_form E  -->
          <div class="btn_wrap">
            <a href="javascript:;"></a>
            <br>
            <button type="submit" style="position: relative; right: 150px; background:white;">�Ϸ�</button>
          </div>
        </div> <!-- form_txtInput E -->
        </form>
    </div> <!-- container E -->
				    	<div class="modal_layer"></div>
					</div> 
					<!-- <div class="mobile-navigation"></div> -->

			<!-- ���̵� �����̵� ��� -->
					<div class="slide" style=" height: 400px; width: 100%;">
					  <ul>
					    <li></li>
					    <li></li>
					    <li></li>
					    <li></li>
					  </ul>
					</div>
				
					
				</div>
			</div>

			<footer class="site-footer" style="background:white;">
				<div class="container">
					<div class="row">
						<div class="col-md-4">
							<div class="widget">
		
						</div>
						<div class="col-md-4">
							<div class="widget">
							 <small class="slide-subtitle" style="color: black; position:relative; left:140px; font-size:15px">Sixbaby</small>
							 <br><br>
								<h2 class="widget-title" style="color: #666666; position:relative; right:30px;">��Ʈ��Ʈ��Ʈ��Ʈ��Ʈ��Ʈ��Ʈ��ƮƮ��Ʈ��Ʈ��ƮƮ��Ʈ��Ʈ��Ʈ</h2>
							</div>
						</div>
					</div> <!-- .row -->

					<p class="colophon"></p>
				</div><!-- .container -->
			</footer> <!-- .site-footer -->

		</div>
		

		<script src="${cpath}/resources/js/js/jquery-1.11.1.min.js"></script>
		<script src="${cpath}/resources/js/js/plugins.js"></script>
		<script src="${cpath}/resources/js/js/app.js"></script>
		<script src="${cpath}/resources/js/js/jquery-ui.js"></script>
		<script src="${cpath}/resources/js/js/loginJS.js"></script>
		<script src="${cpath}/resources/js/js/joinJS.js"></script>

</body>
</html>