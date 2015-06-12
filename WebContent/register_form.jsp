<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<link rel="stylesheet" href="groupware.css" type="text/css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>regEmployee</title>
</head>

<body>

<h2>사원 등록</h2>

<hr>
<form name="form1" method="post" action="main.jsp?page_id=reg_employee">
<table border="1" >
<tr>
<th>사 번</th>
<td><input type="text" name="id"></td>
</tr>
<tr>
<th>비밀번호</th>
<td><input type="text" name="pw"></td>
</tr>
<tr>
<th>이 름</th>
<td><input type="text" name="name"></td>
</tr>
<tr>
<th>내선전화</th>
<td><input type="text"name="tel"></td>
</tr>
<tr>
<th>휴대전화</th>
<td><input type="text" name="phone"></td>
</tr>
<tr>
<th>직 급</th>
<td><input type="text" name="rank"></td>
</tr>
<tr>
<th>소속부서명</th>
<td><input type="text" name="depname"></td>
</tr>
<tr><td colspan="2" align="center">
<input type="submit" value="사원 등록 완료"></td></tr>

</table>
<hr>
</form>

</body>
</html>