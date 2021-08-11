<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="selectedDiary" value="${selectedDiary}"/>
<div class="write_table2">
	<div class="form-group">
	<br>
		<label class="diary-name control-label col-sm-2">오늘의 (아기이름)</label>
		<input class="diary_detail" type="text" class="form-control" name="" placeholder="애기 이름" value="" readonly>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2">제목</label>
		<input class="diary_detail" type="text" class="form-control" name="title" placeholder="Enter title" value="${selectedDiary.title}" readonly>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2">내용</label>
		<textArea class="diary_detail" rows="5" class="form-control" name="contents" placeholder="Enter contents" readonly style="border-radius:12px;">${selectedDiary.contents }</textArea>
		<div class="picture">
			<img class="diary_detail_pic" src="imgDisplay.do?fileName=${selectedDiary.picture}">
		</div><br>
	</div>
</div>