<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입완료</title>
</head>
<body>
<!-- 
요청URI : /chap05/registerProcess.jsp
요청파라미터(QueryString) : {memId=a001,memPw=java,memName=개똥이}
요청방식 : post
 -->

 <%
    request.setCharacterEncoding("UTF-8");
    
    String memId = request.getParameter("memId");
    String memPw = request.getParameter("memPw");
    String memName = request.getParameter("memName");
    
    if(memId.equals("admin")){
        response.sendRedirect("/chap05/register.jsp?message=error");
    } else {
 %>
    <h3>회원가입 완료</h3>
    <p>아이디는 <%= memId %>이고</p>
    <p>비밀번호는 <%= memPw %> 이며</p>
    <p>이름은 <%= memName %>입니다</p>
<% } %>
</body>
</html>
