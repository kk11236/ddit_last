<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<!-- method(요청방식)
		- get : 보안이 안좋음(주소표시줄에 요청파라미터가 보임), 길이가 한정
				DB정보가 변경 안될 때 주로 사용(SELECT)
		- post : 보안이 좋음 (주소표시줄에 요청파라미터가 안보임), 길이가 무한대
				DB정보가 변경될 때 주소 사용(INSERT,UPDATE,DELETE)
	-->
	<!-- 
		요청URI : "/chap05/loginProcess.jsp"
		요청파라미터 : {memId=a001&memPw=java&memAuto=on}
		요청방식 : post
	 -->
	<form action="/chap05/loginProcess.jsp" method="post">
		<p>Id : <input type="text" name="memId" placeholder="id입력"/></p>
		<p>PW : <input type="text" name="memPw" placeholder="Pw입력"/></p>
			
		<p><input type="checkbox" name="memAuto">자동로그인</p>
		<input type="submit" value="로그인">
		
	
	</form>
</body>
</html>