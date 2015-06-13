<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	if(request.getParameter("idx1").equals("1")) {
		%>
		<div id="side_left">
			<div style="color: #ffffff; text-align:center; font-weight: bold; font-size: 15pt; color: #0000ff;">
				업무관리
			</div>
			<ul>
				<li><a href="main.jsp?idx1=1&idx2=1">기안 / 결재</a></li>
			</ul>
		</div>
		<%
	}
	else if(request.getParameter("idx1").equals("2")) {
		%>
		<div id="side_left">
			<div style="color: #ffffff; text-align:center; font-weight: bold; font-size: 15pt; color: #0000ff;">
				사원관리
			</div>
			<ul>
				<li><a href="main.jsp?idx1=2&idx2=1">사원 목록</a></li>
				<li><a href="main.jsp?idx1=2&idx2=2">사원 등록</a></li>
			</ul>
		</div>
		<%
	}
%>