<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach var="list" items="${diaryList}">
	<tr>
		<td class="select_diary" value="${list.diary_no}"><c:out value="${list.title}"/></td>
		<td><c:out value="${list.diary_data}"/></td>
	</tr>
</c:forEach>

