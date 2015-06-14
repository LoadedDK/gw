<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="gw.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	gw.employee.Employee user = empDAO.getEmployee(Integer.parseInt(session.getAttribute("id").toString()));
	dftDAO.setDraftList(user.getDepname().toString());
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
				<th>결재</th>
			</tr>
				
		<% for(gw.draft.Draft d : dftDAO.getDraftList()) { %>

			<tr>
				<td><%=d.getDraft() %> </td>
				<td style="text-align: left; width: 320px;" onclick="javascript_: location.href='main.jsp?idx1=1&idx2=3&draft=<%=d.getDraft()%>';"><%=d.getTitle() %> </td>
				<td><%=d.getDraftername() %> </td>
				<td style="font-size: 12px;'"><%=d.getRegtime() %> </td>
				<td><%=d.getIssign() %> </td>
			</tr>
		<% } %>
		
		<% if(dftDAO.getDraftList().toString().equals("[]")) { %>
				<tr>
					<td colspan="5" style="text-align:center;'"> 게시글이 없습니다. </td>
				</tr>
		<% } %>
	</table>
	<br>
	<center><button style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=1&idx2=2';">글쓰기</button></center>
</div>

</body>
</html>