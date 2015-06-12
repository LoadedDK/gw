<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="content">
<%
	if(request.getParameter("idx1").equals("home")) {
		
	}

	else if(request.getParameter("idx1").equals("1")) {
		if(request.getParameter("idx2") == null) {
			
		}
		else if(request.getParameter("idx2").equals("1")) {
 			%> <%@ include file="draft_list.jsp"%> <%
 		}
		else if(request.getParameter("idx2").equals("2")) {
			
		}
	}
	else if(request.getParameter("idx1").equals("2")) {
		if(request.getParameter("idx2") == null) {
			
		}
		else if(request.getParameter("idx2").equals("1")) {
 			%> <%@ include file="employee_list.jsp"%> <%
 		}
 		else if(request.getParameter("idx2").equals("2")) {
 			%> <%@ include file="register_form.jsp"%> <%			
 		}
	}
%>
</div>