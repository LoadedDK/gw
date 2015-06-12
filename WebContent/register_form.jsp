<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
사원 등록
<div id="reg_form">
	<form name="form1" method="post" action="main.jsp?page_id=employee_reg">
		<table>
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
				<td><select name="rank">
				<option value="인턴">인턴</option>
				<option value="사원">사원</option>
				<option value="대리">대리</option>
				<option value="과장">과장</option>
				<option value="차장">차장</option>
				<option value="부장">부장</option>
				<option value="이사">이사</option>
				<option value="상무">상무</option>
				<option value="전무">전무</option>
				<option value="사장">사장</option>
				</select></td>
			</tr>
			<tr>
				<th>소속부서명</th>
				<td><input type="text" name="depname"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="사원 등록 완료"></td>
			</tr>
		</table>
	</form>
</div>