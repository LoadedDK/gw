<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="gw.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
	int draftNum = 1;
	if(request.getParameter("draft") == null) {
		response.sendRedirect("main.jsp?idx1=1&idx2=1");
	}
	else {
		draftNum = Integer.parseInt(request.getParameter("draft"));
		dft = dftDAO.read(draftNum);
		if(dft == null) {
			out.println("널!!!널이다!!!!");	
	}
	}
%>
<div id="draft_edit">
<form name="form1" method="post" action="main.jsp?idx1=1&idx2=3&draft=<%=draftNum%>">
	<table border="1">
		<tr>
			<th>제&nbsp;&nbsp;&nbsp;목</th>
			<td><input type="text" name="title" value= <%=dft.getTitle()%> style="width: 200px;"></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="draftername" style="width: 80px;" readOnly value=<%=dft.getDraftername()%> ></td>
		</tr>
		<tr>
			<th colspan="2" align="center">내&nbsp;&nbsp;&nbsp;용</th>
		</tr>
		<tr>
			<td colspan="2" height="310px" > <textarea class="textarea1" cols="90" rows="20" name="content"><%=dft.getContent()%></textarea></td>
		</tr>
	</table>
	<br>
	<center>
	<input type="hidden" name="from" value="edit">
	<input type="submit" value="수정 완료" style="width: 80px;">&nbsp;&nbsp;
	<input type="button" value="취소" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=1&idx2=3&draft=<%=draftNum%>';">
	</center>
</form>
	
</div>
</body>
</html>