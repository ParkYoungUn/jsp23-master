<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>

<style>
#div_root{
	margin:auto;
	width:1200px;
}
#div1 {
	float:left;
	background-color:red;
}
#div2 {
	float:left;
	background-color:blue;
}
#div3 {
	float:left;
	background-color:green;
}
#div4 {
	flex-direction:column;
	background-color:pink;
}
#div5 {
	margin-left:1015px;
	background-color:pink;
}
#div6 {
	float:right;
	background-color:pink;
}
#div7 {
	float:right;
	background-color:pink;
}
#tableA{
	margin-top:300px;
	border:1px solid black;
}
</style>
</head>
<body>
<div id=div_root>

	<div>
		<jsp:include page="/chap14/viewMemberList.jsp" flush="false" />
	</div>
	<div id=div1>
		<jsp:include page="/chap14/insert/insertForm.jsp" flush="false" />
	</div>
	<div id=div2>
		<jsp:include page="/chap14/update/updateForm.jsp" flush="false" />
	</div>
	<div id=div3>
		<jsp:include page="/chap14/delete/deleteForm.jsp" flush="false" />
	</div>
	
	<div id=div4>
		<a href="../chap14/viewMemberList.jsp">
		<input type="button" name="btn1" value="조회">
		</a>
	</div>
	
		
	<div id=div4>
		<a href="../chap14/insert/insertForm.jsp">
		<input type="button" name="btn1" value="등록">
		</a>	
	</div>
	
	
	<div id=div4>
		<a href="../chap14/update/updateForm.jsp">
		<input type="button" name="btn1" value="변경">
		</a>
	</div>
	
	<div id=div5>
		<a href="../chap14/delete/deleteForm.jsp">
		<input type="button" name="btn1" value="삭제">
		</a>
	</div>
	
	<div>
	<table id="tableA">
	<tr>
		<td><a href="../chap14/viewMemberList.jsp">조회</a></td>
		<td><a href="../chap14/insert/insertForm.jsp">등록</a></td>
		<td><a href="../chap14/update/updateForm.jsp">변경</a></td>
		<td><a href="../chap14/delete/deleteForm.jsp">삭제</a></td>
	</tr>
	</table>
	</div>
</div>
</body>
</html>