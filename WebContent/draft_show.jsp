<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="gw.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사원 목록</title>
</head>
<body>
<%
	if(request.getParameter("draft") == null) {
		response.sendRedirect("main.jsp?idx1=1&idx2=1");
	}
	else {
		int draftNum = Integer.parseInt(request.getParameter("draft"));
		dft = dftDAO.show(draftNum);
		if(dft == null) {
			out.println("널이다!!!!");	
	}
	}
%>
<div id="draft_show">
	<table border="1">
	
		<tr>
			<th>제목</th>
			<td><%=dft.getTitle()%></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=dft.getDrafter()%></td>
		</tr>
		<tr>
			<th colspan="2" align="center">내용</th>
		</tr>
		<tr>
			<td colspan="2" align="center"><%=dft.getContent()%></td>
		</tr>
		
	</table>
	<br /><br />
	<input type="button" value="목록" onclick="javascript_: location.href='main.jsp?idx1=1&idx2=1';">
</div>

</body>
</html>