<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:setProperty name="emp" property="*"/>
<link rel="stylesheet" href="groupware.css" type="text/css" media="screen" />

<%
	if(request.getParameter("edit") == null) {
		
	}
	else if(request.getParameter("edit").equals("1")) {
		empDAO.editEmployee(emp);
	}
%>

<% gw.employee.Employee user = empDAO.getEmployee(Integer.parseInt(session.getAttribute("id").toString())); %>
<div id="mypage">
	<form name="form1" method="post" action="main.jsp?idx1=4&idx2=1&edit=1">
		<table border="1">
			<tr>
				<th>사번</th>
				<td><input type="text" name="id" value="<%=user.getId()%>" /></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" name="pw" value="<%=user.getPw()%>" /></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" value="<%=user.getName()%>" /></td>
			</tr>
			<tr>
				<th>직급</th>
				<td><input type="text" name="rank" value="<%=user.getRank()%>" /></td>
			</tr>
			<tr>
				<th>소속부서</th>
				<td><input type="text" name="depname" value="<%=user.getDepname()%>" /></td>
			</tr>
			<tr>
				<th>내선번호</th>
				<td><input type="text" name="tel" value="<%=user.getTel()%>" /></td>
			</tr>
			<tr>
				<th>휴대전화</th>
				<td><input type="text" name="phone" value="<%=user.getPhone()%>" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="수정 완료"></td>
			</tr>
		</table>
	</form>
</div>