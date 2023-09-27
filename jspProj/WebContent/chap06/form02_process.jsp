<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<%
	//한글처리
	request.setCharacterEncoding("UTF-8");
	//form02_process.jsp를 요청시 폼데이터가 request 객체에 들어가고
	//form02_process.jsp로 값들이 전달 됨(name1=value&name2=value2....)
// 	String id = request.getParameter("id");
// 	String password = request.getParameter("password");
// 	String name = request.getParameter("name");
// 	String phone1 = request.getParameter("phone1");
// 	String phone2 = request.getParameter("phone2");
// 	String phone3 = request.getParameter("phone3");
// 	String gender = request.getParameter("gender");
// 	String hobby1 = request.getParameter("hobby1");
// 	String hobby2 = request.getParameter("hobby2");
// 	String hobby3 = request.getParameter("hobby3");
// 	String comment = request.getParameter("comment");
	
	Enumeration paramNames = request.getParameterNames();
	
	while(paramNames.hasMoreElements()){
		String paramName =  (String)paramNames.nextElement();
		out.print("<p>"+paramName+" : ");
		String paramValue = request.getParameter(paramName);
		out.print(paramValue+ " </p>");
	}
	out.print("<hr />");
	%>
	
	<!-- 표현문  -->
<%-- 	<p>id : <%=id %></p> --%>
<%-- 	<p>password : <%=password %></p> --%>
<%-- 	<p>name : <%=name %></p> --%>
<%-- 	<p>phone : <%=phone1 %> - <%=phone2 %> - <%=phone3 %></p> --%>
<%-- 	<p>gender : <%=gender %></p> --%>
<%-- 	<p>hobby : <%=hobby1 %> - <%=hobby2 %> - <%=hobby3 %></p> --%>
<%-- 	<pre><%=comment %></pre> --%>
</body>
</html>