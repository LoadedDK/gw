<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="gw.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="emp" class="gw.employee.Employee"/>
<jsp:useBean id="empDAO" class="gw.employee.EmployeeDAO"/>
<jsp:useBean id="dft" class="gw.draft.Draft"/>
<jsp:useBean id="dftDAO" class="gw.draft.DraftDAO"/>
<%
dftDAO.setDraftList();
%>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기안 작성</title>
</head>
<body>

<%
	gw.employee.Employee e = empDAO.getEmployee(Integer.parseInt(session.getAttribute("id").toString()));
%>
<form name="form1" method="post" action="draft_write_result.jsp">
<table border="1">
<tr>
<th>제목</th>
<td><input type="text" name="title"></td>
</tr>
<tr>
<th>작성자</th>
<td><input type="text" name="draftername" readOnly value=<%=e.getName()%> ></td>
</tr>
<tr>
<th colspan="2" align="center">내용</th>
</tr>
<tr>
<td colspan="2" align="center"><input type="text" name="content"></td>
</tr>
</table>
<input type="hidden" name="drafter" value=<%=e.getId()%> >
<br />
<input type="submit" value="제출하기">
<input type="button" value="취소" onclick="javascript_: location.href='draft_list.jsp';">
</form>

</body>
</html>