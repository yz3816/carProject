<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%



Connection conn=null;
try{
	String jdbcDriver="com.mysql.cj.jdbc.Driver";
	String jdbcurl="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";	
	String user="root";
	String pass="1234";
	Class.forName(jdbcDriver);
	conn=DriverManager.getConnection(jdbcurl,user,pass);
	System.out.println("데이터베이스 연결 성공");	
}catch(SQLException e){
	e.printStackTrace();
	System.out.println("데이터베이스 연결 실패");
}


%>

</body>
</html>