<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
<!-- 선언문 : 변수, 메소드 선언  -->
<%!
	int count =3;
	int dan = 2;
	int[] jumsu = {50,70,60};
	//전역변수 => 새로고침하면 메모리에 그대로 남아있음
// 	int sum = 0;
	
	//String타입의 매개변수 data(파라미터를 받음)
	//결과 값을 String타입으로 리턴해주는 메소드
	String makeItLower(String data){
		return data.toLowerCase();
	}
%>

<!-- 스크립틀릿  : 구현(분기, 반복, 로직) -->
<% 
	for(int i=1; i <= count; i++){
		out.print("개똥이 : " + i + "<br />");
	}

	out.print(dan + "단 <br/>");
	
	for(int i = 1; i <= 9; i++) {
		int result = dan * i;
		
		out.print(dan +" x "+ i + " = " + result + "<br/>");
	}
	//지역변수 => 새로고침하면 메모리에서 삭제 후 다시 생성.
	int sum =0;
	for(int j = 0; j < jumsu.length; j++){
		out.print(jumsu[j] + "점 <br/>");
		sum += jumsu[j];
	}
%>

<!-- 표현문 : 화면에 출력 -->
합계는 <%=sum %> 점 <br/>
평균은 <%=(double)sum/jumsu.length %>점<

<%=makeItLower("I Want your lift best <br/>") %>
</body>
</html>