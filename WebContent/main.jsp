<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="emp" class="gw.employee.Employee"/>
<jsp:useBean id="empDAO" class="gw.employee.EmployeeDAO"/>
<html>
<head>
<link rel="stylesheet" href="groupware.css" type="text/css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Groupware System</title>
<%@ include file="topMenu.jsp" %>
</head>
<body>
	<section id="sidebar1">
				<h3>Links</h3>
				<ul> 
					<li><a href="main.jsp?page_id=register_form" >사원 등록</a></li>
					<li><a href="main.jsp?page_id=employee_list">사원 목록</a></li>
					<li><a href="#">가천대학교 길병원</a></li>
				</ul>
			</section>
		<section id="main">
			
			<section id="content">
			<div id="header">
		<div style="float:left; background-color:#987654;">
			Groupware System
		</div>
		<div>
			<% out.println("session status : " + session.getAttribute("id")); %>
		</div>
	</div>
<%
String page_id = "home";

if(!(request.getParameter("page_id") == null)) {
	page_id = request.getParameter("page_id");
	
	if(page_id.equals("home")) {
		out.println("메인이다아");
	}
	
	else if(page_id.equals("register_form")) {
	%>
	<%@ include file="register_form.jsp" %>
	<%
	}
	else if(page_id.equals("employee_list")) {
	%>
	<%@ include file="employee_list.jsp" %>
	<%
	}
	
	else if(page_id.equals("reg_employee")) {
		%>
		<%@ include file="reg_employee.jsp" %>
		<%
	}
	
}
%>
			</section>			
		</section>

</body>
<%@ include file="bottom.jsp" %>
</html>
