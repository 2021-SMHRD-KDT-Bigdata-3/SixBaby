<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1">

<title>test</title>

</head>
<body>

	<%
	String data = request.getParameter("data");
	System.out.println(data);
	%>
	<h1>iot_Test page</h1>
	<h3>wifi��⿡�� �޾Ƶ��� �� : <%=data %> �߳�?</h3>

</body>
</html>