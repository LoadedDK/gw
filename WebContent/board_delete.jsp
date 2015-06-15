<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="gw.*"%>
<div id="board_delete">
<%
	int boardNum = 1;
	if(request.getParameter("board") == null) {
		response.sendRedirect("main.jsp?idx1=3&idx2=1");
	}
	else {
		boardNum = Integer.parseInt(request.getParameter("board"));
		boardDAO.delete(boardNum);	
	}
%>
게시물이 삭제되었습니다.<br><br>
<input type="button" value="확인" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=3&idx2=1';">
</div>