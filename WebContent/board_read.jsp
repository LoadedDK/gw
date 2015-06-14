<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="gw.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:setProperty name="board" property="*"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
	int boardNum = 1;
	String title;
	String content;

	if(request.getParameter("board") == null) {
		response.sendRedirect("main.jsp?idx1=3&idx2=1");
	}
	else if(request.getParameter("board").equals("0")) {
		out.println("롸잇!!!");
		boardDAO.write(board);
	}
	else {
		boardNum = Integer.parseInt(request.getParameter("board"));
		if(request.getParameter("from") == null) {
		}
		else if(request.getParameter("from").equals("edit")) {
			out.println("에딧!!!");
			title = request.getParameter("title");
			content = request.getParameter("content");
			boardDAO.edit(title, content, boardNum);
		}
		board = boardDAO.read(boardNum);
		if(board == null) {
			out.println("널!!!널이다!!!!");	
		}
	}
%>
<div id="board_show">
	<table border="1">
	
		<tr>
			<th>제&nbsp;&nbsp;&nbsp;목</th>
			<td><%=board.getTitle()%></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=board.getWritername()%></td>
		</tr>
		<tr>
			<th colspan="2" align="center">내&nbsp;&nbsp;&nbsp;용</th>
		</tr>
		<tr>
			<td colspan="2" height="310px" > <textarea class="textarea1" cols="90" rows="10" name="content" readOnly><%=board.getContent()%></textarea></td>
		</tr>
		
	</table>
	<br>
	<center>
	<input type="button" value="수정" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=3&idx2=4&board=<%=boardNum%>';">&nbsp;&nbsp;
	<input type="button" value="목록" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=3&idx2=1';">&nbsp;&nbsp;
	<input type="button" value="삭제" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=3&idx2=5&board=<%=boardNum%>';">
	</center>
</div>

</body>
</html>