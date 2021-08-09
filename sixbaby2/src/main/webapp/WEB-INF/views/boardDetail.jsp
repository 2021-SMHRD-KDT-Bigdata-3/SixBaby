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

<script>
	  
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
	           	      result+="<td><a href='${cpath}/commentDelete.do?board_no="+board_no+"&comment_no="+obj.comment_no+"'></a></td>";
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
					<div class="content col-md-8">


						<!-- 여기는 본인 일때 -->
						<input type="hidden" id="mem" value="${loginMember.nickname}">
						<input type="hidden" id="num" value="${vo.board_no}">
						<c:if test="${loginMember.nickname eq vo.nickname}">
							<form class="form-horizontal" action="${cpath}/boardUpdate.do"
								method="post">
								<c:set var="vo" value="${vo}" />
								<input type="hidden" name="board_no" value="${vo.board_no}">
								<input type="hidden" name="category" value="${vo.category}">
								<div class="form-group">
									<div class="detail_nick_date">
										<div
											style="border: 2px solid #E63F39; border-radius: 12px; font-size: 20px; text-align: center; width: 25%; display: inline-block;">
											<input class="detail_value" type="text" name="nickname"
												value="${vo.nickname}" readonly="readonly">
										</div>
										<div
											style="border: 2px solid #E63F39; border-radius: 12px; font-size: 20px; text-align: center; width: 31%; display: inline-block;">
											<input class="detail_value" type="text" name="indate"
												value="${vo.indate}" readonly="readonly">
										</div>
									</div>
									<div
										style="border: 2px solid #E63F39; border-radius: 12px; font-size: 25px; text-align: center; width: 100%; display: inline-block;">
										<input class="detail_value" type="text" name="title"
											value="${vo.title}">
									</div>
								</div>
								<br>

								<div class="write_table"
									style="border: 2px solid #E63F39; border-radius: 12px;">
									<div class="form-group">
										<img class="detail_value"
											src="${cpath}/resources/images/logotest.png"
											style="max-width: 150px;">
										<textArea class="detail_value" rows="5" name="contents"
											placeholder="Enter contents">${vo.contents}</textArea>
									</div>
								</div>

								<br>
								<div class="form-group">
									<div class="col-sm-offset-13 col-sm-13">
										<button type="submit" class="btn_detail"
											style="position: relative; border-radius: 12px; background: white; width: 20%; font-size: 22px; border: 2px solid #E63F39; color: black;">수정</button>
										&nbsp;
										<button type="button" class="btn_detail"
											style="position: relative; border-radius: 12px; background: white; width: 20%; font-size: 22px; border: 2px solid #E63F39; color: black;"
											onclick="goDel('${vo.board_no}','${vo.category}')">삭제</button>
										&nbsp;
										<button type="reset" class="btn_detail"
											style="position: relative; border-radius: 12px; background: white; width: 20%; font-size: 22px; border: 2px solid #E63F39; color: black">
											<a href="boardBack.do?cate=${vo.category}">뒤로가기</a>
										</button>

									</div>
								</div>
							</form>
						</c:if>


						<!-- 본인 아닐때 -->
						<c:if test="${loginMember.nickname ne vo.nickname}">
							<form class="form-horizontal" action="${cpath}/boardUpdate.do"
								method="post">
								<c:set var="vo" value="${vo}" />
								<input type="hidden" name="board_no" value="${vo.board_no}">
								<input type="hidden" name="category" value="${vo.category}">
								<div class="form-group">
									<div class="detail_nick_date">
										<div
											style="border: 2px solid #E63F39; border-radius: 12px; font-size: 20px; text-align: center; width: 25%; display: inline-block;">
											<input class="detail_value" type="text" name="nickname"
												value="${vo.nickname}" readonly="readonly">
										</div>
										<div
											style="border: 2px solid #E63F39; border-radius: 12px; font-size: 20px; text-align: center; width: 31%; display: inline-block;">
											<input class="detail_value" type="text" name="indate"
												value="${vo.indate}" readonly="readonly">
										</div>
									</div>
									<div
										style="border: 2px solid #E63F39; border-radius: 12px; font-size: 25px; text-align: center; width: 100%; display: inline-block;">
										<input class="detail_value" type="text" name="title"
											value="${vo.title}" readonly="readonly">
									</div>
								</div>
								<br>

								<div class="write_table"
									style="border: 2px solid #E63F39; border-radius: 12px;">
									<div class="form-group">
										<img class="detail_value"
											src="${cpath}/resources/images/logotest.png"
											style="max-width: 150px;">
										<textArea class="detail_value" rows="5" name="contents"
											placeholder="Enter contents" readonly="readonly">${vo.contents}</textArea>
									</div>
								</div>

								<br>
								<div class="form-group">
									<div class="col-sm-offset-13 col-sm-13">
										<button type="reset" class="btn_detail"
											style="position: relative; border-radius: 12px; background: white; width: 20%; font-size: 22px; border: 2px solid #E63F39; color: black">
											<a href="boardBack.do?cate=${vo.category}">뒤로가기</a>
										</button>
									</div>
								</div>
							</form>
						</c:if>


						<div class="col-sm-offset-13 col-sm-13">
							<button class="btn btn-success btn-sm"
								onclick="getComment('${vo.board_no}')"
								style="background: white; border-radius: 12px; border: solid 2px skyblue; font-size: 17px;">댓글
								보기</button>
							<div id="comment"></div>

							<c:if test="${not empty loginMember}">
								<form class="comment_form"
									action="${cpath}/commentInsert.do?=${vo.board_no}"
									method="post">
									<input type="hidden" name="board_no" value="${vo.board_no}">
									<input type="hidden" name="nickname"
										value="${loginMember.nickname}"> <input
										class="comment_input" type="text" name="contents"
										placeholder="댓글을 입력해주세요."> <input class="comment_btn"
										type="submit"
										style="border: solid 2px white; font-size: 30px; box-shadow: none; border-radius: 12px; background: white; color: black;"
										value="확인">
								</form>
							</c:if>

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