<%@ page contentType = "text/html; charset=utf-8" %>
<jsp:useBean id="member" scope="request"
             class="chap08.member.MemberInfo" />
<html>
<head><title>인사말</title></head>
<body>

<%= member.getName() %> (<%= member.getId() %>) 회원님
안녕하세요.
이 페이지는 useObject 입니다.
</body>
</html>
