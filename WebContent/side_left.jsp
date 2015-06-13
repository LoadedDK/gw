<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	if(request.getParameter("idx1").equals("1")) {
		%>
		<div id="side_left">
			<ul>
				<li><a href="main.jsp?idx1=1&idx2=1">기안 / 결재</a></li>
				<li><a href="main.jsp?idx1=1&idx2=2">draft2</a></li>
			</ul>
		</div>
		<%
	}
	else if(request.getParameter("idx1").equals("2")) {
		%>
		<div id="side_left">
			<ul>
				<li><a href="main.jsp?idx1=2&idx2=1">사원 목록</a></li>
				<li><a href="main.jsp?idx1=2&idx2=2">사원 등록</a></li>
			</ul>
		</div>
		<%
	} else {
	%>
	<div id="side_left">

	</div>
	<%
	}
%>