<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="gw.*"%>
<jsp:setProperty name="emp" property="*" />
<link rel="stylesheet" href="groupware.css" type="text/css" media="screen" />

<% empDAO.register(emp); %>

<div id="employee_reg">
	등록 내용 확인<br>
	사번 : <jsp:getProperty property="id" name="emp" /><br>
	이름 : <%=emp.getName()%><br>
	사원등록이 완료되었습니다.<br>
	<a href="main.jsp?page_id=employee_list">사원목록</a>
</div>