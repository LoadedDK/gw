<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="sns"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="groupware.css" type="text/css" media="screen" />
<title>그룹웨어 시스템</title>
</head>
<body>
<div align="center">
<h2>그룹웨어 시스템</h2>
<hr>

<%
	if(request.getParameter("error") == null) {
		
	}

	else if(request.getParameter("error").equals("1")) {
		out.println("로그인을 해야 이용할 수 있습니다.<br><br>");
	}
%>

<sns:login />

</div>
</body>
</html>