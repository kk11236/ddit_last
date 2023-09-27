<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true" %> <!-- 오류 넘긴 거 받아 줌. -->
<!DOCTYPE html>
<html>
<head>
<title>서비스 문 제발생</title>
</head>
<body>
	<img src="/images/error.jpg"/>
	
	<%
		//isErrorPage 속성의 값이 true일 때.
		//고객에게 서비스 시 삭제해야 함
		//exception.printStackTrace(new PrintWriter(out));
	%>
	<hr/>
	<!-- 오류 타입  -->
	<%=exception.getClass().getName() %>
	<hr/>
	<!-- 오류 메시지 -->
	<%=exception.getMessage() %>
</body>
</html>