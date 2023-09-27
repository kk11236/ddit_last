<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<% 
		request.setCharacterEncoding("UTF-8");
		/* name 을 찾아서 value로 치환한다. */
		String name = request.getParameter("name");//개똥이
		String memId = request.getParameter("memId");//a001
	%>
	<p>이름  : <%=name %></p>
	<p>아이디 : <%=memId %></p>
</body>
</html>