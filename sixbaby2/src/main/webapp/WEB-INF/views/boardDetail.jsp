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

<title>게시글 상세 및 댓글</title>

<!-- Loading third party fonts -->
<link href="${cpath}/resources/fonts/novecento-font/novecento-font.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- Loading main css file -->
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
<style>
.form-group{

}
</style>
<script>
      var cnt = 0;
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
           if(cnt%2==0){
              var result = "<table class='comment_table'>";
              result+="<tr class='comment_tr'>";
              result+="<td class='comment_no'>댓글번호</td>";
              result+="<td class='comment_nick'>닉네임</td>";
              result+="<td>내용</td>";
              result+="<td class='comment_fa'>추천수</td>";
              result+="</tr>";
              $.each(data, (index,obj)=>{
                 result+="<tr class='value_tr'>";
                   result+="<td>"+obj.comment_no+"</td>";
                   result+="<td>"+obj.nickname+"</td>";
                   result+="<td>"+obj.contents+"</td>";
                   result+="<td>"+obj.likes+"</td>";
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
      </script>
</head>
<body>
	<div class="site-content">
		<%@ include file="header.jsp"%>

		<div class="page-head"
			data-bg-image="${cpath}/resources/images/page-head-1.jpg">
			<div class="container">
				<h2 class="page-title">Community</h2>
			</div>
		</div>
		<div class="fullwidth-block">
			<div class="container">
				<div class="row">
					<div class="content col-md-8" style="text-align:center">

						<form class="form-horizontal" action="${cpath}/boardUpdate.do"
							method="post">
							<c:set var="vo" value="${vo}" />
							<input type="hidden" name="board_no" value="${vo.board_no}">
							<input type="hidden" name="category" value="${vo.category}">
							<div class="form-group">
							<div class="detail_nick_date">
							
								</div>
							
								<div style="font-size: 20px; text-align: center; width: 25%; display: inline-block;">
									<input class="detail_value" type="text" name="nickname" value="${vo.nickname}" readonly="readonly" style="font-size: 18px; color:#666666; font-family:'NanumSquareRound'; font-weight:550;">
								</div>
								
								<div style="font-size: 18px; text-align: center; width: 31%; display: inline-block; position:absolute; right:30;">
									<input class="detail_value" type="text" name="indate" value="${vo.indate}" readonly="readonly" style="font-size: 18px; color:#666666; font-family:'NanumSquareRound'; font-weight:550;">
								</div>
									<div style="border: 1px solid white; border-radius: 12px; font-size: 25px; text-align: center; width: 100%; display: inline-block;">
									<input class="detail_value" type="text" name="title" value="${vo.title}" style="font-size: 18px; color:#323232; font-family:'NanumSquareRound'; font-weight:550;">
									</div>
								</div>
								
							<br>

							<div class="write_table"
								style="border: 1px solid #E63F39; border-radius: 12px;">
								<div class="form-group">
									<img class="detail_value"  src="${cpath}/resources/images/logotest.png"
										style="max-width: 150px; font-size: 27px; color:#323232; font-family:'NanumSquareRound'; font-weight:600;">
									<textArea class="detail_value"  rows="5" name="contents"
										placeholder="Enter contents">${vo.contents}</textArea>
								</div>
							</div>

							<br>
							<div class="form-group">
								<div class="col-sm-offset-13 col-sm-13">
									<button type="submit" class="btn_detail"
										style="position: relative; border-radius: 12px; border:2px solid white; background: white; width: 20%; font-size: 20px; color:#323232;
										 font-family:'NanumSquareRound'; font-weight:600;">목록보기</button>
									&nbsp;
									<!-- <button type="reset" class="btn_detail"
										style="position: relative; border-radius: 12px; background: white; width: 20%; font-size: 22px;color:#323232; font-family:'NanumSquareRound'; font-weight:600;">
										<a href="boardList.do">자유게시판</a></button>-->
								</div>
							</div>
							<br>
						</form>
						<div class="col-sm-offset-13 col-sm-13">
							<button class="btn btn-success btn-sm" onclick="getComment()"
								style="background: white; border-radius: 12px; border: 1px solid white; font-size: 20px; font-family:'NanumSquareRound'; font-weight:600; color:#323232;">댓글</button>
							<div id="comment"></div>
							<form class="comment_form" action="${cpath}/commentInsert.do"
								method="post">
								<input class="comment_input" type="textarea"
									placeholder="댓글을 입력해주세요."> <input class="comment_btn"
									type="submit"
									style="border: solid 1px white; font-size: 20px;border-radius: 12px; background: white; color:#666666; font-family:'NanumSquareRound'; font-weight:600;"
									value="입력">
							</form>
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
		<script src="${cpath}/resources/js/js/jquery-ui.js"></script>
		<script src="${cpath}/resources/js/js/popup.js"></script>
</body>
</html>