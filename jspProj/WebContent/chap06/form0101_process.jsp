<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String memId = request.getParameter("memId");
	String memPw = request.getParameter("password");
	String rememberMe = request.getParameter("remember-me");
	%>
	
	<h2>회원 정보</h2>
	
	<p>아이디 : <%=memId %></p>
	<p>비밀번호 : <%=memPw %></p>
	<p>자동로그인 : <%=rememberMe %></p>
	
	<% if(rememberMe.equals("on") && rememberMe != null){
		
		session.getAttribute(memId);
		
	} %>
</body>
</html>