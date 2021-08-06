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
		
		<title>BOARD_DETAIL</title>

		<!-- Loading third party fonts -->
		<link href="${cpath}/resources/fonts/novecento-font/novecento-font.css" rel="stylesheet" type="text/css">
		<link href="${cpath}/resources/fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

		<!-- Loading main css file -->
		<link rel="stylesheet" href="${cpath}/resources/css/style.css">
		
		<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->
		
		<script>
		function getComment(){
	  		$.ajax({
	  			url : "${cpath}/commentList.do",
	  			type : "get",
	  			dataType : "json",
	  			success : resultHtml,
	  			error : function(){ alert("error");}
	  		});
	  	}
		function resultHtml(data){
	  		var result = "<table class='table'>";
	  		result+="<tr>";
	  		result+="<td>댓글번호</td>";
	  		result+="<td>게시판번호</td>";
	  		result+="<td>닉네임</td>";
	  		result+="<td>내용</td>";
	  		result+="<td>추천수</td>";
	  		result+="</tr>";
	  		$.each(data, (index,obj)=>{
	  			result+="<tr>";
	  	  		result+="<td>"+obj.comment_no+"</td>";
	  	  		result+="<td>"+obj.board_no+"</td>";
	  	  		result+="<td>"+obj.nickname+"</td>";
	  	  		result+="<td>"+obj.contents+"</td>";
	  	  		result+="<td>"+obj.likes+"</td>";
	  	  		result+="</tr>";
	  		});
	  		
	  		result+="</table>";
	  		$("#List").html(result);
	  	}
		</script>
		
</head>
<body>
<div class="site-content">

 <%@ include file="header.jsp"%>
            
			<div class="page-head" data-bg-image="${cpath}/resources/images/page-head-1.jpg">
				<div class="container">
					<h2 class="page-title">Community</h2>
				</div>
			</div>

				<div class="fullwidth-block">
					<div class="container">
						<div class="row">
								
							<div class="content col-md-8">
								<form class="form-horizontal" action="${cpath}/boardInsert.do" method="post">
								<div class="form-group">
										<div style="border:2px solid #E63F39; border-radius: 12px; font-size:20px; text-align:center; width:25%; display:inline-block;">닉네임</div>
										<div style="border:2px solid #E63F39; border-radius: 12px; font-size:20px; text-align:center; width:25%; display:inline-block;">작성일</div>
								</div>
								<div>
										<div style="border:2px solid #E63F39; border-radius: 12px; font-size:25px; text-align:center; width:100%; display:inline-block;">제목</div>
								</div>
								<br>
								<table>
								<div class="write_table" style="border:2px solid #E63F39; border-radius: 12px;">
									<div class="form-group" >
										<img src="${cpath}/resources/images/logotest.png" style="max-width: 150px;">
											<textArea rows="5" class="form-control" name="contents"
												placeholder="Enter contents"></textArea>
									</div>
									</div>
									</table>
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<button type="submit" class="btn btn-primary btn-sm" style="position: relative; background:white; border:2px solid #E63F39;">등록</button>&nbsp;
											<button type="reset" class="btn btn-warning btn-sm" style="position: relative; background:white; border:2px solid #E63F39;">취소</button>
										</div>
									</div>
								</form>
								
								<button class="btn btn-success btn-sm" onclick="getComment()">댓글 리스트</button>
								<div id="List">댓글을 보여줘!</div>
								<form class="comment_form" action="${cpath}/commentInsert.do" method="post">
								<input class="comment_input" type="textarea"> <input class="comment_btn" type="submit" value="확인">
								</form>
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