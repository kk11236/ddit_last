<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>크롬 to 톰켓</title>
</head>
<body>
	<!-- 
	요청URI,파라미터 : /chap05/process.jsp?name=개똥이&id=a001 <--get방식
	요청파라미터 : {name=개똥이,id=a001} <--post방식,url에 안보임
	 -->
	<form action="/chap05/process.jsp" method="post">
		<!-- 폼데이터 -->
		<p>
			이름 : <input type="text" name="name"/><br/>
			아이디 : <input type="text" name="memId"/>
			<input type="submit" value="전송"/>
		</p>
	</form>
</body>
</html>