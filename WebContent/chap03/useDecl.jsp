<%@ page contentType = "text/html; charset=utf-8" %>
<%!
	public int multiply(int a , int b) {
		int c = a * b;
		return c;
	}
%>

<%!
	int 가a(int a, int b) {
	int c = a+b ;
	return c;
	}

%>



<html>
<head><title>선언부를 사용한 두 정수값의 곱</title></head>
<body>
		
<%! 
	int sum2(int a, int b) {
	int c = a+b ;
	return c; 
	}
%>
		
10 * 25 = <%= multiply(10, 25) %><br>
10 + 25 = <%= 가a(10, 25) %><br>1
15 + 25 = <%= sum2(15, 25) %>


</body>
</html>
