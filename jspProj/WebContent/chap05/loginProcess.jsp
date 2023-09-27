<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<!-- 
		요청URI : "/chap05/loginProcess.jsp"
		요청파라미터 : {memId=a001&memPw=java&memAuto=on}
		요청방식 : post
	 -->

	<%
		request.setCharacterEncoding("UTF-8");
	
		String memId = request.getParameter("memId");//a001
		String memPw = request.getParameter("memPw");//java
		//체크 시 String타입의 "on"문자 / 비체크 시 null
		String memAuto = request.getParameter("memAuto");//on
	%>
	
	<% if(memId.equals("a001")){ %>
		<h2>로그인성공</h2>
		<p>아이디는 <%=memId %>입니다.</p>
	<%} else { %>
		<p>로그인실패</p>
	<%} %>
	
	<%
		if(memAuto == null){//비체크
			out.print("<p>자동로그인을 비사용합니다.</p>");
			response.sendRedirect("/chap05/login.jsp");
		}else {//체크
			out.print("<p>자동로그인을 사용합니다.</p>");
			response.sendRedirect("/chap03/body.jsp");
		}
	
	%>

	
	<h2>웹 브라우저/서버 정보 출력</h2>
	
	<p>요청 정보 길이 : <%=request.getContentLength() %></p>
	<p>클라이언트 전송 방식 : <%=request.getMethod() %></p>
	<p>요청 URI : <%=request.getRequestURI() %></p>
	<p>서버 이름 : <%=request.getServerName() %></p>
	<p>서버 포트 : <%=request.getServerPort() %></p>
	<p>클라이언트 IP : <%=request.getRemoteAddr() %></p>
	<p>요청 정보 콘텐츠 유형 : <%=request.getContentType() %></p>
	<p>요청 정보 프로토콜 : <%=request.getProtocol() %></p>
	<p>콘텍스트 경로 : <%=request.getContextPath() %></p>
	<p>쿼리문 : <%=request.getQueryString() %></p>
	
</body>
</html>