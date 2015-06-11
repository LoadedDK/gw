<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Groupware System</title>
</head>
<body>
	<div id="header">
		<div style="float:left; background-color:#987654;">
			Groupware System
		</div>
		<div>
			<% out.println("session status : " + session.getAttribute("id")); %>
		</div>
	</div>

	<div id="sidebar">
		<ul>
			<li>
			메뉴1
			</li>
			<li>
			메뉴2
			</li>
			<li>
			메뉴3
			</li>
		</ul>
	</div>
</body>
</html>