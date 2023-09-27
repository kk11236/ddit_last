<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
//JSP 내장객체
request.setCharacterEncoding("UTF-8");
//localhost/chap03/footer.jsp?memId=개똥이
//요청URL : localhost/chap03/footer.jsp
//요청파라미터(쿼리스트링) : memId=개똥이
String memId = request.getParameter("memId");
memId = URLDecoder.decode(memId);
%>
Copyright <%=memId%>