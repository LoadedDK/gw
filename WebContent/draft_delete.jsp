<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="gw.*"%>
<div id="draft_delete">
	<%
	int draftNum = 1;
	if (request.getParameter("draft") == null) {
		response.sendRedirect("main.jsp?idx1=1&idx2=1");
	}
	else {
		draftNum = Integer.parseInt(request.getParameter("draft"));
		dftDAO.delete(draftNum);
	}
	%>
	게시물이 삭제되었습니다.<br><br>
	<input type="button" value="확인" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=1&idx2=1';">
</div>
