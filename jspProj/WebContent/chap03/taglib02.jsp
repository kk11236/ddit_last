<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>JSTL 구구단 출력</title>
</head>
<body>
	<c:forEach var="k" begin="2" end="9" step="1">
	<h4>${k}단</h4>
		<c:forEach var="j" begin="1" end="9" step="1">
			<p>${k} x ${j} = ${k*j}</p>
		</c:forEach>
	</c:forEach>
</body>
</html>