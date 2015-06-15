<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="gw.*"%>
<jsp:setProperty name="board" property="*"/>
<%
	int boardNum = 1;
	String title;
	String content;

	if(request.getParameter("board") == null) {
		response.sendRedirect("main.jsp?idx1=3&idx2=1");
	}
	else if(request.getParameter("board").equals("0")) {
		boardDAO.write(board);
	}
	else {
		boardNum = Integer.parseInt(request.getParameter("board"));
		if(request.getParameter("from") == null) {
		}
		else if(request.getParameter("from").equals("edit")) {
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
<div id="board_read">
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
			<td colspan="2" height="310px" > <textarea class="textarea1" cols="90" rows="20" name="content" readOnly><%=board.getContent()%></textarea></td>
		</tr>
	</table>
	<br>
	<input type="button" value="수정" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=3&idx2=4&board=<%=boardNum%>';">&nbsp;&nbsp;
	<input type="button" value="목록" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=3&idx2=1';">&nbsp;&nbsp;
	<input type="button" value="삭제" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=3&idx2=5&board=<%=boardNum%>';">
</div>