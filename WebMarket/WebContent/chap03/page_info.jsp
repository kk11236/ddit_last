<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<%@ page info="Date 클래스를 이용한 날짜 출력하기" %>
	Today is <%=new java.util.Date() %>
</body>
</html>