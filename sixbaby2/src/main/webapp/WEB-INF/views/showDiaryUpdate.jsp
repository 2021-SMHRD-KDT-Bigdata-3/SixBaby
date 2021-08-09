<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="vo" value="${selectedDiary}"/>
<form action = "${cpath }/diaryUpdate.do" method= "post">
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
	<div class="picture">
		<input type="file" name="picture">
	</div>
</div>