<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="gw.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
empDAO.setEmployeeList();
%>
<html>
<head>
<link rel="stylesheet" href="groupware.css" type="text/css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사원 목록</title>
</head>
<body>
<table border=1 width=500>
<tr><th>사번</th><th>이름</th><th>직급</th><th>소속부서</th><th>내선번호</th><th>휴대전화</th></tr>
<%
for(gw.employee.Employee e : empDAO.getEmployeeList()) {
%>

<tr>
<td><%=e.getId() %> </td>
<td><%=e.getName() %></td>
<td><%=e.getRank() %></td>
<td><%=e.getDepname() %></td>
<td><%=e.getTel() %></td>
<td><%=e.getPhone() %></td>
</tr>
<%
}
%>
</table>
</body>
</html>