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

<title>아기울음 분석</title>

<!-- Loading third party fonts -->
<link href="${cpath}/resources/fonts/novecento-font/novecento-font.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- Loading main css file -->
<link rel="stylesheet" href="${cpath}/resources/css/style.css">

<!-- <script>
	  
      var cnt = 0;
      function getComment(board_no){
           $.ajax({
              url : "${cpath}/commentList.do?board_no="+board_no,
              type : "get",
              dataType : "json",
              success : resultHtml,
              error : function(){ alert("error");}
           });
        }
      function resultHtml(data){
           if(cnt%2==0){
              var result = "<table class='comment_table'>";
              result+="<tr>";
              result+="<td>댓글번호</td>";
              result+="<td>닉네임</td>";
              result+="<td>내용</td>";
              result+="<td>추천수</td>";
              result+="<td>비고</td>";
              result+="</tr>";
              $.each(data, (index,obj)=>{
                  result+="<tr>";
                  result+="<td>"+obj.comment_no+"</td>";
                  result+="<td>"+obj.nickname+"</td>";
                  result+="<td>"+obj.contents+"</td>";
                  result+="<td>"+obj.likes+"</td>";
	              if(obj.nickname==$("#mem").val()){
	           	      result+="<td><a href='${cpath}/commentDelete.do?board_no="+$("#num").val()+"&comment_no="+obj.comment_no+"'>삭제</a></td>";
	           	      return true;
	              }
	              result+="</tr>";
              });
              result+="</table>";
              cnt++;
           }else{
              var result = "";
              cnt++;
           }
           $("#comment").html(result);
        }
      
      function goDel(board_no, category){
      	location.href="${cpath}/boardDelete.do?board_no="+board_no+"&cate="+category;
      }
      </script> -->
</head>
<body>

	<div class="site-content">
		<%@ include file="header.jsp"%>

		<div class="page-head"
			data-bg-image="${cpath}/resources/images/bg.png">
			<div class="container">
				<h2 class="page-title">VOICE RECOGNITION SERVICE</h2>
			</div>
		</div>
		<div class="fullwidth-block">
			<div class="container">
				<div class="row">
					<div class="content col-md-8">
						<h1>울지마라쫌</h1>






					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>

	<script src="${cpath}/resources/js/js/jquery-1.11.1.min.js"></script>
	<script src="${cpath}/resources/js/js/plugins.js"></script>
	<script src="${cpath}/resources/js/js/app.js"></script>
	<script src="${cpath}/resources/js/js/jquery-ui.js"></script>
	<script src="${cpath}/resources/js/js/popup.js"></script>
</body>
</html>