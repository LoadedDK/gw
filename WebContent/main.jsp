<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="emp" class="gw.employee.Employee"/>
<jsp:useBean id="empDAO" class="gw.employee.EmployeeDAO"/>
<jsp:useBean id="dft" class="gw.draft.Draft"/>
<jsp:useBean id="dftDAO" class="gw.draft.DraftDAO"/>
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
	<div id="main_top">
		<%@ include file="top.jsp"%>
	</div>
	<div id="main_side_left">
		<%@ include file="side_left.jsp"%>
	</div>
	<div id="main_content">
		<%@ include file="content.jsp"%>
	</div>
	<div id="main_bottom">
		<%@ include file="bottom.jsp"%>
	</div>
</body>
</html>
