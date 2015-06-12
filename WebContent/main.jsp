<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="emp" class="gw.employee.Employee"/>
<jsp:useBean id="empDAO" class="gw.employee.EmployeeDAO"/>
<%
	if(session.getAttribute("id") == null) {
		response.sendRedirect("login.jsp?error=1");
	}
%>

<html>
<head>
<link rel="stylesheet" href="groupware.css" type="text/css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>그룹웨어 시스템</title>
</head>
<body id="main">
	<table style="width:1200px;">
		<tr>
			<td colspan="2">
				<%@ include file="top.jsp"%>
			</td>
		</tr>
		<tr>
			<td style="width:200px;">
				<%@ include file="side_left.jsp"%>
			</td>
			<td style="vertical-align: top;">
				<%@ include file="content.jsp"%>
			</td>
		</tr>
		<tr>
			<td colspan="2"><%@ include file="bottom.jsp"%></td>
		</tr>
	</table>
</body>
</html>
