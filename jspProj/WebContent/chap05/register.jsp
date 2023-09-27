<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
</head>
<script type="text/javascript">
let message = "${param.message}";
console.log("message : " + message);

if(message=="error"){
	alert("관리자 아이디(admin)는 가입 불가")	
}
</script>

<body>
<h2>회원가입</h2>
<!-- 
요청URI : /chap05/registerProcess.jsp
요청파라미터(QueryString) : {memId=a001,memPw=java,memName=개똥이}
요청방식 : post
 -->
	<form action="/chap05/registerProcess.jsp" method="post">
		<p>아이디 : <input type="text" name="memId" placeholder="아이디입력"></p>
		<p>비밀번호 : <input type="password" name="memPw" placeholder="비밀번호입력"></p>
		<p>이	름 : <input type="text" name="memName" placeholder="이름입력"></p>
		<input type="submit" value="회원가입">
	</form>

</body>
</html>