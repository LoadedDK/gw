<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="rank"%>
<div id="reg_form">
	<form name="form1" method="post" action="main.jsp?idx1=2&idx2=3">
		<table border="1">
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
				<td><input type="text" name="tel"></td>
			</tr>
			<tr>
				<th>휴대전화</th>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<th>직 급</th>
				<td><rank:dropDown name="rank"/></td>
			</tr>
			<tr>
				<th>소속부서명</th>
				<td><rank:dropDown name="depname"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="사원 등록 완료"></td>
				<% empDAO.register(emp); %>
			</tr>
		</table>
	</form>
</div>