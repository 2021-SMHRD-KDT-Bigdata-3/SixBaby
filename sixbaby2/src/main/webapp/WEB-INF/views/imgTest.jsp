<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="preview"></div>
	<div>
		<form action="${cpath }/imgTest.do" method="post" enctype="multipart/form-data">
			<input class="img" type="file" name="file">
			<input type="submit" value="submit">
		</form>
	</div>
</body>
</html>