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
.fileDrop {
	width: 200px;
	height: 100px;
	border: 1px dotted pink;
	position: relative;
}
.hidden {
	display: none;
}
.diary_detail{
	width : 200px;
	height : 200px;
	object-fit : cover;
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
						<table class="table diary_table">
							<thead class="diary_table_head">
								<tr>
									<th style="width: 35%">제목</th>
									<th style="width: 12%">작성일</th>
								</tr>
							</thead>
							<tbody id="diaryList">
							</tbody>
						</table>
						<div class="btn_wrap">
							<button type="button" id="modal_back_btn_diary">뒤로가기</button>
						</div>
					</div>

					<div class="content col-md-14">
							<div id="modal_diary_insert" class="hidden">
								<div class="modal_content write_table">
									<form name="insert" action="${cpath }/diaryInsert.do"
										method="post">
										<input type="hidden" name="id" value="${loginMember.id }">
										<input type="hidden" name="diary_data">
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
											<div class="form-group">
										<label class="control-label col-sm-2" for="input-file"
											style="font-weight: bold; font-size: 16;">사진 첨부</label>
											<input type="hidden" name="picture">
											<div class="fileDrop">
											</div>
									</div>
										</div>
									</form>
								</div>
										<div class="col-sm-offset-13 col-sm-13">
											<button type="submit" id="modal_insert_btn_dairy">저장</button>
											<button type="button" id="modal_close_btn_dairy_insert">취소</button>
										</div>
							</div>
					</div>

					<div id="modal_diary_detail" class="hidden">
						<div id="diary_detail" class="modal_content"></div>
						<div class="btn_wrap">
							<button type='button' id='modal_detail_btn_diary'>수정하기</button>
							<button type="button" id="modal_back_btn_diary_list">뒤로가기</button>
						</div>
					</div>

					<div id="modal_diary_update" class="hidden">
						<div id="diary_update" class="modal_content">
					</form>
				</div>
				<div class="btn_wrap">
					<button type="submit" id="modal_update_btn_dairy">수정</button>
					<button type="reset" id="modal_reset_btn_dairy">초기화</button>
					<button type="button" id="modal_back_btn_dairy_detail">취소</button>
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