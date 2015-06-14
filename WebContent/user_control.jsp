<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="emp" class="gw.employee.Employee" />
<jsp:setProperty name="emp" property="*" />
<jsp:useBean id="empDAO" class="gw.employee.EmployeeDAO" />

<%
	// 컨트롤러 요청 action 코드값
	String action = request.getParameter("action");

	// 로그인
	if(action.equals("login")) {
		if(empDAO.login(emp.getId(),emp.getPw())) {
			// 로그인 성공시 세션에 "id" 저장
			session.setAttribute("id",emp.getId());
			response.sendRedirect("main.jsp?idx1=1");
		}
		else {
			out.println("<script>alert('아이디나 비밀번호가 틀렸습니다.!!');history.go(-1);</script>");
		}
	} 
	// 로그아웃
	else if(action.equals("logout")) {
		// 세션에 저장된 값 초기화
		session.removeAttribute("id");
		response.sendRedirect("login.jsp");
	}
%>