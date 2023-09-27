<%@page import="java.text.Format"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<title>표현문</title>
</head>
<body>
	<p>Today's date : <%=new java.util.Date() %></p>
	<p>today's date : <%=new Date() %></p>
	<p>
		<!-- 2023-09-22  -->
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String dt = sdf.format(new Date());

%>

	<p>Today's date : <%=dt%></p>
</body>
</html>