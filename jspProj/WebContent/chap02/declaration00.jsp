<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>전역변수</title>
</head>
<body>
<%!
	//전역변수
	int count = 0;

	//전역메소드
	public int sum(int count, int count2){
		return count + count2;
	}
%>
<%
	int count2 = 0;
	out.print("page Count is : " + ++count);
	out.print("<br/>");	
	out.print("page Count is : " + ++count2);
	out.print("<br/>");		
	out.print("count + count2 = " + sum(count,count2));
%>
</body>
</html>