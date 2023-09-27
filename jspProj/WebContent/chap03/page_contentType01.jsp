<%@page import="java.util.Date"%>
<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="page_errorPage_error.jsp" %> <!-- 오류 넘긴 거 -->
<!DOCTYPE html>
<html>
<head>
<title>디렉티브 태그</title>
</head>
<body>

	Today is : <%=new java.util.Date() %>
	<hr/>
	Today is : <%=new Date() %>
	<%
		String str = null;
		out.print(str.toString());
	%>

</body>
</html>