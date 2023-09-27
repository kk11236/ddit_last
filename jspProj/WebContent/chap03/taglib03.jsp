<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>JSTL 구구단 출력</title>
</head>
<body>
<%
//요청URI :/chap03/taglib03.jsp?dan=2
//파라미터 값을 String타입 
String dan = request.getParameter("dan");
%>
<c:set var="dan" value="<%=dan%>"/>
<p>단은?${dan}</p>
2단
2 x 1 = 2

2 x 2 = 4

2 x 3 = 6

2 x 4 = 8

2 x 5 = 10

2 x 6 = 12

2 x 7 = 14

2 x 8 = 16

2 x 9 = 18
</body>
</html>