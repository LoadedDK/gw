<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="gw.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div id="draft_sign" align="center">
		<br>
		<%
			if (request.getParameter("draft") == null) {
				response.sendRedirect("main.jsp?idx1=1&idx2=1");
			}
			else {
				dft = dftDAO.read(Integer.parseInt(request.getParameter("draft")));
				if (dft.getIssign().equals("N")) {
					if (dftDAO.sign(dft.getDraft())) {
						%> 결재가 성공적으로 완료되었습니다. <%
					}
					else {
						%> 결재 정보가 비정상적입니다. 확인해주세요. <%
					}
				}
				else if (dft.getIssign().equals("Y")) {
						out.println("이미 결재되었습니다.");
					}
				}
			%>
		<br><br>
		<input type="button" value="확인" style="width: 80px;" onclick="javascript_: location.href='main.jsp?idx1=1&idx2=1';">
	</div>
</body>
</html>