<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="content">
<%
	if(request.getParameter("idx1").equals("1")) {
		if(request.getParameter("idx2") == null) {
			
		}
		else if(request.getParameter("idx2").equals("1")) {
 			%> <%@ include file="draft_list.jsp"%> <%
 		}
		else if(request.getParameter("idx2").equals("2")) {
			%> <%@ include file="draft_write.jsp"%> <%
		}
		else if(request.getParameter("idx2").equals("3")) {
			%> <%@ include file="draft_write_result.jsp"%> <%
		}
		else if(request.getParameter("idx2").equals("4")) {
			%> <%@ include file="draft_show.jsp"%> <%
		}
		else if(request.getParameter("idx2").equals("5")) {
			%> <%@ include file="draft_edit.jsp"%> <%
		}
		else if(request.getParameter("idx2").equals("6")) {
			%> <%@ include file="draft_delete.jsp"%> <%
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
 		else if(request.getParameter("idx2").equals("3")) {
 			%> <%@ include file="employee_reg.jsp"%> <%			
 		}
	}
%>
</div>