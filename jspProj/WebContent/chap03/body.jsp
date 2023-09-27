<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>include디렉티브</title>
</head>
<body>

<%
	String memId = "개똥이";
	memId = URLEncoder.encode(memId);
%>
<%@ include file="header.jsp" %>

<p>방문해 주셔서 감사합니다</p>

<!-- 1) include 디렉티브는 정적 파일 -->
<%-- <%@ include file="footer.jsp?memId=개똥이" %> --%>
<!-- 2) JSP 액션태그에서  include 사용 => 변수처리 가능(동적 파일처리) -->

<jsp:include page="footer.jsp">
	<jsp:param name="memId" value="<%=memId %>" />
</jsp:include>

</body>
</html>