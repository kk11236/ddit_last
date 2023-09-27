<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<%
	int a = 2;
	int b = 3;
	int sum = a + b;
	int count = 0;
	List<String> list = new ArrayList<String>();
	out.print("2 + 3 = " + sum + "<br/>" );
	out.print("count : " + ++count + "<br/>" );
	out.print("2의 배수를 출력(1~10의 범위)<br/>");
	
	for (int i =1; i <=10; i++){
		if(i % 2 == 0){
// 			out.print(i + "<br/>");
			//list 변수에 누적해보자
			list.add(String.valueOf(i));
		}
	}
	//누적된 list 값을 화면에 출력해보자.
	for(String str : list){
		out.print(str + "<br/>");
	}
%>

</body>
</html>