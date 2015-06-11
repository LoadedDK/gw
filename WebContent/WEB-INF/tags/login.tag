<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form name="loginform" method="post" action="user_control.jsp">
<c:choose>
<c:when test="${uid != null}">
	<input type="hidden" name="action" value="logout">
	<input type="submit" value="로그아웃">
</c:when>
<c:otherwise>
	<input type="hidden" name="action" value="login">
	<input type="text" name="id" size="10"><br>
	<input type="password" name="pw" size="10"><br>
	<input type="submit" value="로그인">
</c:otherwise>
</c:choose>
</form>