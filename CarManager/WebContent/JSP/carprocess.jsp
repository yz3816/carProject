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
String id=request.getParameter("id");
String name=request.getParameter("name");
String password=request.getParameter("password");
String gender=request.getParameter("gender");
String email=request.getParameter("email");
String phone=request.getParameter("phone1")+request.getParameter("phone2");
String home=request.getParameter("home1")+request.getParameter("home2")+request.getParameter("home3");
String address=request.getParameter("address");
String carnumber=request.getParameter("carnumber");
String carfield=request.getParameter("carfield");

PreparedStatement pstmt=null;
try{
	String sql="insert into car_member value(?,?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.setString(2,name);
	pstmt.setString(3,password);	
	pstmt.setString(4,gender);
	pstmt.setString(5,email);
	pstmt.setString(6,phone);
	pstmt.setString(7,home);
	pstmt.setString(8,address);
	pstmt.setString(9,carnumber);
	pstmt.setString(10,carfield);	
	pstmt.executeUpdate();
	System.out.println("저장 완료");
	out.println(id);%><br>
	<%
	out.println(name);%><br>
	<%
	out.println("등록되었습니다.");
}catch(SQLException e){
	e.printStackTrace();
	System.out.println("저장 실패");
	out.println("등록 실패");
}


%>



</body>
</html>