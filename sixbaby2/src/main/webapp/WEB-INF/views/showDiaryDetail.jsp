<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="write_table" style="border: 2px solid #E63F39; border-radius: 12px;">
	<c:set var="selectedDiary" value="${selectedDiary}"/>
	<div class="form-group">
		<label class="diary-name control-label col-sm-2">오늘의 (아기이름)</label>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2">제목</label>
		<input type="text" class="form-control" name="title" placeholder="Enter title" value="${selectedDiary.title}" readonly>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2">내용</label>
		<textArea rows="5" class="form-control" name="contents" placeholder="Enter contents" readonly>${selectedDiary.contents }</textArea>
	</div>
	<div class="picture">
		<img src="${selectedDiary.picture}">
	</div>
</div>
