<%@page import="com.mysql.fabric.xmlrpc.base.Member"%>
<%@ page contentType = "text/html; charset=utf-8" %>
<%@page import="chap11.Member"%>
<%
	request.setAttribute("name", "최범균");
%>

<html>
<head><title>EL Object</title></head>
<body>

요청 URI: ${pageContext.request.requestURI}<br>
request의 name 속성: ${requestScope.name}<br>
code 파라미터: ${param.code}

<%
	Member m = new Member("박영운",24);
	m.setName("강감찬");
%>

</body>
</html>
