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

<section>
<h1 style="text-align:center;"> 고객 LIST</h1>
<%@ include file="carDB.jsp" %>

<table border=1>
<tr>
<th>고객ID</th>
<th>고객이름</th>
<th>자동차 번호</th>
<th>자동차 종류</th>
<th>핸드폰</th>
<th>전화번호</th>
<th>주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소</th>
</tr>



<%
request.setCharacterEncoding("utf-8");
PreparedStatement pstmt=null;
ResultSet rs=null;

try{
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String carnumber=request.getParameter("carnumber");
	String carfield=request.getParameter("carfield");
	String phone=request.getParameter("phone1")+request.getParameter("phone2");
	String home=request.getParameter("home1")+request.getParameter("home2")+request.getParameter("home3");
	String address=request.getParameter("address");
	String sql ="select * from car_member";
	pstmt = conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
		
	while(rs.next()){%>
	<tr>
		<td><%= rs.getString("id") %></td>
		<td><%= rs.getString("name") %></td>
		<td><%= rs.getString("carnumber") %></td>
		<td><%= rs.getString("carfield") %></td>
		<td><%= rs.getString("phone") %></td>
		<td><%= rs.getString("home") %></td>
		<td><%= rs.getString("address") %></td>
	</tr>
	<%
	}	
}catch(SQLException e){
	e.printStackTrace();
}






%>

</table>

</section>
</body>
</html>