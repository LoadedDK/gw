<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="gw.*"%>
<% boardDAO.setBoardList(); %>
<div id="board_list">
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성시간</th>
		</tr>
		<% for(gw.board.Board d : boardDAO.getBoardList()) { %>
		<tr>
			<td><%=d.getBoard() %></td>
			<td style="text-align: left; width: 350px;"
				onclick="javascript_: location.href='main.jsp?idx1=3&idx2=3&board=<%=d.getBoard()%>';"><%=d.getTitle() %>
			</td>
			<td><%=d.getWritername() %></td>
			<td style="font-size: 12px;'"><%=d.getRegtime() %></td>
		</tr>
		<% }
		if(boardDAO.getBoardList().toString().equals("[]")) { %>
		<tr>
			<td colspan="4" style="text-align: center;'">게시글이 없습니다.</td>
		</tr>
		<% } %>
	</table>
	<br>
	<button style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=3&idx2=2';">글쓰기</button>
</div>