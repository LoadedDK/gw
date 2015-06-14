<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="gw.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:setProperty name="dft" property="*"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
	int draftNum = 1;
	String title;
	String content;

	if(request.getParameter("draft") == null) {
		response.sendRedirect("main.jsp?idx1=1&idx2=1");
	}
	else if(request.getParameter("draft").equals("0")) {
		dftDAO.write(dft);
	}
	else {
		draftNum = Integer.parseInt(request.getParameter("draft"));
		if(request.getParameter("from") == null) {
		}
		else if(request.getParameter("from").equals("edit")) {
			title = request.getParameter("title");
			content = request.getParameter("content");
			dftDAO.edit(title, content, draftNum);
		}
		dft = dftDAO.read(draftNum);
		if(dft == null) {
			out.println("널!!!널이다!!!!");	
		}
	}
%>
<div id="draft_read">
	<table border="1">
	
		<tr>
			<th>제&nbsp;&nbsp;&nbsp;목</th>
			<td><%=dft.getTitle()%></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=dft.getDraftername()%></td>
		</tr>
		<tr>
			<th colspan="2" align="center">내&nbsp;&nbsp;&nbsp;용</th>
		</tr>
		<tr>
			<td colspan="2" height="310px" > <textarea class="textarea1" cols="90" rows="20" name="content" readOnly><%=dft.getContent()%></textarea></td>
		</tr>
		<tr>
			<th>결재권자</th>
			<td><%=dft.getDraftername()%></td>
		</tr>
		
	</table>
	<br>
	<center>
	<%
		gw.employee.Employee user = empDAO.getEmployee(Integer.parseInt(session.getAttribute("id").toString()));
		if(user.getDepname().toString().equals(dft.getDepname().toString())) {
	%>
		<input type="button" value="결재승인" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=1&idx2=6&draft=<%=draftNum%>';">&nbsp;&nbsp;
	<%
		}
		if(user.getId() == dft.getDrafter()) {
	%>
		<input type="button" value="수정" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=1&idx2=4&draft=<%=draftNum%>';">&nbsp;&nbsp;
	<%
		}
	%>
	
	<input type="button" value="목록" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=1&idx2=1';">&nbsp;&nbsp;
	<input type="button" value="삭제" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=1&idx2=5&draft=<%=draftNum%>';">
	</center>
</div>

</body>
</html>