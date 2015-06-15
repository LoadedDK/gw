<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="gw.*"%>
<%
	gw.employee.Employee e = empDAO.getEmployee(Integer.parseInt(session.getAttribute("id").toString()));
	dftDAO.setDraftList(e.getDepname().toString());
	
	gw.draft.Draft d = dftDAO.findSigner(e.getDepname());
%>

<div id="draft_write">
	<form name="form1" method="post" action="main.jsp?idx1=1&idx2=3&draft=0">
		<table border="1">
			<tr>
				<th>제&nbsp;&nbsp;&nbsp;목</th>
				<td><input type="text" name="title" style="width: 200px;"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="draftername" style="width: 80px;"
					readOnly value=<%=e.getName()%>></td>
			</tr>
			<tr>
				<th colspan="2" align="center">내&nbsp;&nbsp;&nbsp;용</th>
			</tr>
			<tr>
				<td colspan="2" align="center"><textarea class="textarea1" cols="90" rows="20" name="content"></textarea></td>
			</tr>
		</table>

		<input type="hidden" name="drafter" value=<%=e.getId()%>>
		<input type="hidden" name="signer" value=<%=d.getSigner()%>>
		<input type="hidden" name="signername" value=<%=d.getSignername()%>>
		<input type="hidden" name="from" value="write"><br>
		<input type="submit" value="글 작성" style="width: 80px;">&nbsp;&nbsp;
		<input type="button" value="취소" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=1&idx2=1';">
	</form>
</div>