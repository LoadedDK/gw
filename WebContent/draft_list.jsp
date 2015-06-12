<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="gw.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="dft" class="gw.draft.Draft"/>
<jsp:useBean id="dftDAO" class="gw.draft.DraftDAO"/>
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
<table border="1">
<tr><th>번호</th><th>제목</th><th>작성자</th><th>작성시간</th></tr>
<%
for(gw.draft.Draft d : dftDAO.getDraftList()) {
%>

<tr onclick="javascript_: location.href='draft_show.jsp?&draft=<%=d.getDraft()%>';">
<td><%=d.getDraft() %> </td>
<td><%=d.getTitle() %> </td>
<td><%=d.getDraftername() %> </td>
<td><%=d.getRegtime() %> </td>
</tr>
<%
}
%>
</table><br /><br />
<button onclick="javascript_: location.href='draft_write.jsp';">글쓰기</button>
</body>
</html>