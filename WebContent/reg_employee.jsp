<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="gw.*"%>

<jsp:setProperty name="emp" property="*" />

<link rel="stylesheet" href="groupware.css" type="text/css" media="screen" />
<h2>등록 내용 확인</h2>
<table border="1" cellspacing="1" cellpadding="5">
	<tr>
		<th>사 번</th>
		<td><jsp:getProperty property="id" name="emp" /></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><%=emp.getPw()%></td>
	</tr>
	<tr>
		<th>이 름</th>
		<td><%=emp.getName()%></td>
	</tr>
	<tr>
		<th>내선전화</th>
		<td><%=emp.getTel()%></td>
	</tr>
	<tr>
		<th>휴대전화</th>
		<td><%=emp.getPhone()%></td>
	</tr>
	<tr>
		<th>직 급</th>
		<td><%=emp.getRank()%></td>
	</tr>
	<tr>
		<th>소속부서명</th>
		<td><%=emp.getDepname()%></td>
	</tr>
</table>
<hr>
<%
	empDAO.register(emp);
%>

<a href="main.jsp?page_id=employee_list">사원 목록 보기</a>