<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="gw.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="emp" class="gw.employee.Employee"/>
<jsp:useBean id="empDAO" class="gw.employee.EmployeeDAO"/>
<jsp:setProperty name="emp" property="*"/>

<html>
<head>
<link rel="stylesheet" href="groupware.css" type="text/css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>reg_Employee</title>
<%@ include file="topMenu.jsp" %>
</head>
<body>
<center>
<h2>등록 내용 확인</h2>
<table border=1 cellspacing="1" cellpadding="5">
<tr>
<td>사 번</td>
<td><jsp:getProperty property="id" name="emp"/></td>
</tr>
<tr>
<td>비밀번호</td>
<td><%=emp.getPw() %></td>
</tr>
<tr>
<td>이 름</td>
<td><%=emp.getName() %></td>
</tr>
<tr>
<td>내선전화</td>
<td><%=emp.getTel() %></td>
</tr>
<tr>
<td>휴대전화</td>
<td><%=emp.getPhone() %></td>
</tr>
<tr>
<td>직 급</td>
<td><%=emp.getRank() %></td>
</tr>
<tr>
<td>소속부서명</td>
<td><%=emp.getDepname() %></td>
</tr>
<tr><td colspan="2" align="center">
<input type="submit" value="사원 등록 완료"></td></tr>
</table>
<hr>
<% empDAO.register(emp); %>

<a href="main_form.jsp">목록 보기</a>
</center>
<%@ include file="bottom.jsp" %>
</body>
</html>