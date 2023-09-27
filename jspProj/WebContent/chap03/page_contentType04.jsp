<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="page_errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>오류 처리</title>
</head>
<body>
<%
MemberVO memberVO = null;

// memberVO = new MemberVO();

memberVO.setMemNo("1");
memberVO.setMemNm("개똥이");
memberVO.setEnabled("1");
//오류나는 이유는? MemberVO 객체 생성 안해서?
//오류를 errorPage 속성으로 처리해보자
//그리고 오류를 디버깅 해보자

out.print(memberVO.getMemNo());
out.print(memberVO.getMemNm());
out.print(memberVO.getEnabled());

%>
</body>
</html>