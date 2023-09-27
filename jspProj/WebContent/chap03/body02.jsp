<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>

<%@ include file="header02.jsp" %>

<hr/>

<p>환영합니다</p>

<hr/>

<%
	String memId = "김태영";
	memId = URLEncoder.encode(memId);
%>
<jsp:include page="footer02.jsp">
	<jsp:param value="<%=memId %>" name="memId"/>
</jsp:include>

</body>
</html>