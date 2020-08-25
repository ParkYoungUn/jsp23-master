<%@ page contentType = "text/html; charset=utf-8" %>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>
<jsp:forward page="../Main_page.jsp" />

<jsp:useBean id="memberinfo" class="member.MemberInfo" scope="page"/>
<jsp:setProperty name="memberinfo" property="*"/>

<%
	request.setCharacterEncoding("utf-8");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	try {
		String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?" +
							"useUnicode=true&characterEncoding=utf8";
		String dbUser = "root";
		String dbPass = "1234";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		pstmt = conn.prepareStatement(
			"insert into MEMBER values (?, ?, ?, ?)");
		pstmt.setString(1, memberinfo.getMemberID());
		pstmt.setString(2, memberinfo.getPassword());
		pstmt.setString(3, memberinfo.getName());
		pstmt.setString(4, memberinfo.getEmail());
		
		pstmt.executeUpdate();
	} finally {
		if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	}
%>
<html>
<head><title>삽입</title></head>
<body>

MEMBER 테이블에 새로운 레코드를 삽입했습니다

</body>
</html>