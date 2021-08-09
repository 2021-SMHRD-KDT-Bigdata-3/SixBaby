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

<title>메인</title>
</script>
<!-- Loading third party fonts -->
<link href="${cpath}/resources/fonts/novecento-font/novecento-font.css"
	rel="stylesheet" type="text/css">
<link href="${cpath}/resources/fonts/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- Loading main css file -->
<link rel="stylesheet" href="${cpath}/resources/css/style.css">

<!--[if lt IE 9]>
      <script src="js/ie-support/html5.js"></script>
      <script src="js/ie-support/respond.js"></script>
      <![endif]-->

<style type="text/css">
.picture {
	width: 200px;
	height: 100px;
	border: 1px dotted pink;
	position: relative;
}

.hidden {
	display: none;
}
</style>
</head>
<body>
	<div class="site-content">
		<%@ include file="header.jsp"%>

		<div class="page-head"
			data-bg-image="${cpath}/resources/images/page-head-1.jpg">
			<div class="container">
				<h2 class="page-title">Diary</h2>
			</div>
		</div>

		<div class="fullwidth-block">
			<div class="container">
				<div class="row">

					<div class="diary-btns">
						<button class="select">일기검색</button>
						<button class="write">일기작성</button>
					</div>

					<div id="modal_diary_select_month" class="hidden">
						<div class="modal_content slt_month">
							<h2 class="sub_tit_txt">작성월</h2>
							<input class="id" type="hidden" value="${loginMember.id }">
							<c:forTokens var="month"
								items="01,02,03,04,05,06,07,08,09,10,11,12" delims=",">
								<button class="month" value="2021-${month}%">${month}월</button>
							</c:forTokens>
						</div>
					</div>

					<div id="modal_diary_list" class="table-responsive hidden">
						<table class="table">
							<thead>
								<tr>
									<th>제목</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody id="diaryList">
							</tbody>
						</table>
						<div class="btn_wrap">
							<button type="button" id="modal_back_btn_diary"
								style="background: white; border-radius: 12px; border: solid white;">뒤로가기</button>
						</div>
					</div>

					<div class="content col-md-14">
							<div id="modal_diary_insert" class="hidden">
								<div class="modal_content write_table">
									<form id="diary-insert" action="${cpath }/diaryInsert.do"
										method="post">
										<input type="hidden" name="id" value="${loginMember.id }">
										<div class="">
											<div class="form-group">
												<label class="control-label col-sm-2">제목</label> <input
													type="text" class="form-control" name="title"
													placeholder="Enter title">
											</div>
											<div class="form-group">
												<label class="control-label col-sm-2">내용</label>
												<textArea rows="5" class="form-control" name="contents"
													placeholder="Enter contents"></textArea>
											</div>
											<div class="picture">
												<input type="hidden" name=picture>
											</div>
										</div>
										<div class="btn_wrap">
											<button type="submit" id="modal_insert_btn_dairy"
												style="background: white; border-radius: 12px; border: solid white;">저장</button>
											<button type="button" id="modal_close_btn_dairy_insert"
												style="background: white; border-radius: 12px; border: solid white;">취소</button>
										</div>
									</form>
								</div>
							</div>
					</div>

					<div id="modal_diary_detail" class="hidden">
						<div id="diary_detail" class="modal_content"
							style="border: 2px solid #E63F39; border-radius: 12px;"></div>
						<div class="btn_wrap">
							<button type='button' id='modal_detail_btn_diary'
								style='background: white; border-radius: 12px; border: solid white;'>수정하기</button>
							<button type="button" id="modal_back_btn_diary_list"
								style="background: white; border-radius: 12px; border: solid white;">뒤로가기</button>
						</div>
					</div>

					<div id="modal_diary_update" class="hidden">
						<div id="diary_update" class="modal_content"
							style="border: 2px solid #E63F39; border-radius: 12px;">
					</form>
				</div>
				<div class="btn_wrap">
					<button type="submit" id="modal_update_btn_dairy"
						style="background: white; border-radius: 12px; border: solid white;">수정</button>
					<button type="reset" id="modal_reset_btn_dairy"
						style="background: white; border-radius: 12px; border: solid white;">초기화</button>
					<button type="button" id="modal_back_btn_dairy_detail"
						style="background: white; border-radius: 12px; border: solid white;">취소</button>
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
	<script src="${cpath}/resources/js/js/babyDiary.js"></script>
</body>
</html>