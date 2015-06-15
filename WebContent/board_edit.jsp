<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="gw.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
	int boardNum = 1;
	if(request.getParameter("board") == null) {
		response.sendRedirect("main.jsp?idx1=3&idx2=1");
	}
	else {
		boardNum = Integer.parseInt(request.getParameter("board"));
		board = boardDAO.read(boardNum);
		if(board == null) {
			out.println("널!!!널이다!!!!");	
	}
	}
%>
<div id="board_edit">
<form name="form1" method="post" action="main.jsp?idx1=3&idx2=3&board=<%=boardNum%>">
	<table border="1">
		<tr>
			<th>제&nbsp;&nbsp;&nbsp;목</th>
			<td><input type="text" name="title" value= <%=board.getTitle()%> style="width: 200px;"></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="boardername" style="width: 80px;" readOnly value=<%=board.getWritername()%> ></td>
		</tr>
		<tr>
			<th colspan="2" align="center">내&nbsp;&nbsp;&nbsp;용</th>
		</tr>
		<tr>
			<td colspan="2" height="310px" > <textarea class="textarea1" cols="90" rows="20" name="content"><%=board.getContent()%></textarea></td>
		</tr>
	</table>
	<br>
	<center>
	<input type="hidden" name="from" value="edit">
	<input type="submit" value="수정 완료" style="width: 80px;">&nbsp;&nbsp;
	<input type="button" value="취소" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=3&idx2=3&board=<%=boardNum%>';">
	</center>
</form>
	
</div>
</body>
</html>