<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="gw.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:setProperty name="dft" property="*"/>

<html>
<head>
<link rel="stylesheet" href="groupware.css" type="text/css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>reg_Employee</title>
</head>
<body>
<center>
<br /><br />등록이 완료되었습니다.<br /><br />
<button onclick="javascript_: location.href='main.jsp?idx1=1&idx2=1';">확인</button>  
</center>
<% dftDAO.write(dft); %>
</body>
</html>