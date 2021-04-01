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

<%@ include file="carDB.jsp" %>

<%
request.setCharacterEncoding("utf-8");
PreparedStatement pstmt=null;
String partcode=request.getParameter("partcode");
String partname=request.getParameter("partname");
String model=request.getParameter("model");
String standard=request.getParameter("standard");
String unit=request.getParameter("unit");
String purchase=request.getParameter("purchase");
String sales=request.getParameter("sales");
String memo=request.getParameter("memo");
try{
	String sql="insert into parTbl value(?,?,?,?,?,?,?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,partcode);
	pstmt.setString(2,partname);
	pstmt.setString(3,model);
	pstmt.setString(4,standard);
	pstmt.setString(5,unit);
	pstmt.setString(6,purchase);
	pstmt.setString(7,sales);
	pstmt.setString(8,memo);	
	pstmt.executeUpdate();	
	out.print("저장 완료");	
}catch(SQLException e){
	e.printStackTrace();
	out.print("저장 실패");
}

%>

</body>
</html>