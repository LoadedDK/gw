<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="name" %>

<select style="width:150px;" name="${name}">
<c:choose>
<c:when test="${name == 'rank'}">
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
</c:when>
<c:when test="${name == 'depname'}">
				<option value="개발">개발</option>
				<option value="디자인">디자인</option>
				<option value="영업">영업</option>
				<option value="회계">회계</option>
				<option value="지휘부">지휘부</option>
				<option value="웹">웹</option>
				<option value="앱">앱</option>
</c:when>
</c:choose>				
</select>

