<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="gw.*"%>
<% empDAO.getEmployeeList(); %>
<link rel="stylesheet" href="groupware.css" type="text/css" media="screen" />

<div id="employee_list">
사원 목록<br>
	<table border="1">
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>직급</th>
			<th>소속부서</th>
			<th>내선번호</th>
			<th>휴대전화</th>
		</tr>
		<%
			for (gw.employee.Employee e : empDAO.getList()) {
		%>
		<tr>
			<td><%=e.getId()%></td>
			<td><%=e.getName()%></td>
			<td><%=e.getRank()%></td>
			<td><%=e.getDepname()%></td>
			<td><%=e.getTel()%></td>
			<td><%=e.getPhone()%></td>
		</tr>
		<%
			}
		%>
	</table>
</div>