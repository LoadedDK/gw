<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="gw.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dft" class="gw.draft.Draft"/>
<jsp:setProperty name="dft" property="*"/>
<jsp:useBean id="dftDAO" class="gw.draft.DraftDAO"/>
<html>
<head>
<link rel="stylesheet" href="groupware.css" type="text/css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>reg_Employee</title>
</head>
<body>
<center>
등록이 완료되었습니다.<br /><br />
<button onclick="javascript_: location.href='draft_list.jsp';">확인</button>  
</center>
<% dftDAO.write(dft); %>
</body>
</html>