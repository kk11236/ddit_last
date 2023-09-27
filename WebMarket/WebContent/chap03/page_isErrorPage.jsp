<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%-- <%@ page isErrorPage="true" %> --%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
<!-- 	<h4>에러가 발생되었습니다.</h4> -->
<!-- 	<h5>exception 내장 객체 변수</h5> -->
<%-- 	<% --%>
<!--	exception.printStackTrace(new PrintWriter(out)); -->
<%-- 	%> --%>
	
	<%
	
		request.setAttribute("RequestAttribute", "request 내장 객체");
	
	%>
	${requestScope.RequestAttribute}
</body>
</html>