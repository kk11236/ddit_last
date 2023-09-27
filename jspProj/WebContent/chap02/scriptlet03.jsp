<%@page import="java.util.ArrayList"%>
<%@page import="vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>

<%
	List<BoardVO> boardList = new ArrayList<BoardVO>();

	BoardVO bvo = new BoardVO();
	bvo.setBoardNo("1");
	bvo.setBoardTitle("더글로리");
	bvo.setBoardWriter("홍길동");
	boardList.add(bvo);
	
	bvo = new BoardVO();
	bvo.setBoardNo("2");
	bvo.setBoardTitle("무빙");
	bvo.setBoardWriter("박명수");
	boardList.add(bvo);
	
	bvo = new BoardVO();
	bvo.setBoardNo("3");
	bvo.setBoardTitle("개똥이");
	bvo.setBoardWriter("짜장면");
	boardList.add(bvo);	
%>

	<table border= "1">
		<thead>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
		</thead>
<%
	for(BoardVO vo : boardList){
%>
		<tbody>
			<tr>
				<td><%=vo.getBoardNo()%></td>
				<td><%=vo.getBoardTitle() %></td>
				<td><%=vo.getBoardWriter() %></td>
			</tr>
		</tbody>
<%
	}
%>	
	</table>
</body>
</html>