<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="content">
<%
	String page_id = "home";

 	if (!(request.getParameter("page_id") == null)) {
 		page_id = request.getParameter("page_id");

 		if (page_id.equals("home")) {
 			out.println("메인이다아");
 		}
 		else if (page_id.equals("register_form")) {
			%> <%@ include file="register_form.jsp"%> <%
 		}
 		else if (page_id.equals("employee_list")) {
			%> <%@ include file="employee_list.jsp"%> <%
 		}
 		else if (page_id.equals("employee_reg")) {
			%> <%@ include file="employee_reg.jsp"%> <%
 		}
	}
%>
</div>