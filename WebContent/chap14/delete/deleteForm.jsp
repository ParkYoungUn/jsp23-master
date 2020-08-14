<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head><title>삭제</title></head>
<body>

<form action="delete.jsp" method="post">
<table border="1">
<tr>
	<td>아이디</td>
	<td><input type="text" name="memberID" size="10"></td>
	<td>비밀번호</td>
	<td><input type="text" name="memberPassword" size="10"></td>
</tr>
<tr>
	<td colspan="2"><input type="submit" value="삭제"></td>
</tr>
</table>
</form>
</body>
</html>
