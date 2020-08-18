<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head><title>pageContext 기본 객체</title></head>
<body>

<%
	HttpServletRequest httpRequest = 
		(HttpServletRequest)pageContext.getRequest();

	HttpServletResponse httpResponse = 
		(HttpServletResponse)pageContext.getResponse();
%>
request 기본 객체와 pageContext.getRequest()의 동일여부:<br>
<%= request == httpRequest %>
<br>
response 기본 객체와 pageContext.getResponse()의 동일여부:<br>
<%= response == httpResponse %>
<br>

pageContext.getOut() 메서드를 사용한 데이터 출력:

<% pageContext.getOut().println("안녕하세요!"); %>
</body>
</html>
