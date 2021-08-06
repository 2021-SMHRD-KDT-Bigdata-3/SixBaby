<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	.fileDrop {
		width : 600px;
		height : 200px;
		border : 1px dotted blue;
	}
</style>
</head>
<body>
<form action = "imgTest.do" method = "post">
	<div id="preview"></div>
	<div class="fileDrop">
	</div>
	<div class="fileList"></div>
	<div>
		<input type="submit" value="submit">
	</div>
</form>
	
	<script src="${cpath}/resources/js/js/jquery-1.11.1.min.js"></script>
	<script src="${cpath}/resources/js/js/plugins.js"></script>
	<script src="${cpath}/resources/js/js/app.js"></script>
	<script src="${cpath}/resources/js/js/jquery-ui.js"></script>
	<script src="${cpath}/resources/js/js/imgtest.js"></script>
</body>
</html>