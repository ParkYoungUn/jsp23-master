<%@page import="chap11.Thermometer"%>
<%@page import="chap11.Member"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Thermometer thermometer = new Thermometer();
	request.setAttribute("c", thermometer);
%>
<html>
<head>
	<title>온도 변환 예제</title>
</head>
<body>
요청 URI: ${pageContext.request.requestURI}<br>
request의 name 속성: ${requestScope.name}<br>
code 파라미터: ${param.code}
<%
	Member m = new Member();
	m.setName("이름");
%>
<c:set var="m" value="<%= m %>" />
<c:set var="name" value="${m.name}"/>
<%m.setName("이름2"); %>
${name}
<br>
${name}
<%m.setName("이름21 2"); %>
	${t.setCelsius('서울', 27.3)}
	서울 온도: 섭씨 ${t.getCelsius('서울')}도 / 화씨 ${t.getFahrenheit('서울')}

	<br/>
	정보: ${t.info}
</body>
</html>
