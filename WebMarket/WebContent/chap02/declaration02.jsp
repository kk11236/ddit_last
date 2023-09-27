<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<%!
		String makeItLower(String data){
			return data.toLowerCase();
	}
	%>
	
	<%
		out.println(makeItLower("Hello World"));
	%>
</body>
</html>