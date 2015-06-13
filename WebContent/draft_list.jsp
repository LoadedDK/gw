<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="gw.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	dftDAO.setDraftList();
%>
<html>
<head>
<link rel="stylesheet" href="groupware.css" type="text/css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사원 목록</title>
</head>
<body>
<div id="draft_list">
	<table border="1">
	
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성시간</th>
			</tr>
				
		<% for(gw.draft.Draft d : dftDAO.getDraftList()) { %>

			<tr onclick="javascript_: location.href='main.jsp?idx1=1&idx2=4&draft=<%=d.getDraft()%>';">
				<td><%=d.getDraft() %> </td>
				<td><%=d.getTitle() %> </td>
				<td><%=d.getDraftername() %> </td>
				<td><%=d.getRegtime() %> </td>
			</tr>
		<% } %>
		
	</table>
</div>
<br />
<button onclick="javascript_: location.href='main.jsp?idx1=1&idx2=2';">글쓰기</button>
</body>
</html>