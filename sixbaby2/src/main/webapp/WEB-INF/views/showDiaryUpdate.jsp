<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<c:set var="vo" value="${selectedDiary}"/>
<form name="update" action = "${cpath }/diaryUpdate.do" method= "post">
<input type="hidden" name="id" value="${selectedDiary.id }">
<input type="hidden" name="diary_no" value="${vo.diary_no }">
<input type="hidden" name="diary_data" value="${vo.diary_data }">
<div class="write_table2">
	<div class="form-group">
		<label class="diary-name control-label col-sm-2">오늘의 (아기이름)</label>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2">제목</label>
		<input type="text" class="form-control" name="title" placeholder="Enter title" value="${vo.title}">
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2">내용</label>
		<textArea rows="5" class="form-control" name="contents" placeholder="Enter contents">${vo.contents }</textArea>
	</div>
	<div class="fileDrop" ondrop="imgDrop(e)">
		<input type="hidden" name="picture">
		<div>
			<a class="delThumbnail" onClick="delImg()" data-src="${selectedDiary.picture }"><img style="height : 100px; width : 100px; object-fit : cover;" src="imgDisplay.do?fileName=${selectedDiary.picture}">[delete]</a>
		</div>
	</div>
	
</div>