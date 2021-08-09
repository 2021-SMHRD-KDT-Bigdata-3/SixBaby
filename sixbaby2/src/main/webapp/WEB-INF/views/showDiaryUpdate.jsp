<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="vo" value="${selectedDiary}"/>
<form action = "${cpath }/diaryUpdate.do" method= "post">
<div class="write_table" style="border: 2px solid #E63F39; border-radius: 12px;">
	<div class="form-group">
		<label class="diary-name control-label col-sm-2">������ (�Ʊ��̸�)</label>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2">����</label>
		<input type="text" class="form-control" name="title" placeholder="Enter title" value="${vo.title}">
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2">����</label>
		<textArea rows="5" class="form-control" name="contents" placeholder="Enter contents">${vo.contents }</textArea>
	</div>
	<div class="fileDrop">
		<input type="hidden" name="picture">
		<div>
			<a class="delThumbnail" onClick="delImg()" data-src="${selectedDiary.picture }"><img style="height : 100px; width : 100px; object-fit : cover;" src="imgDisplay.do?fileName=${selectedDiary.picture}">[delete]</a>
		</div>
	</div>
	
</div>