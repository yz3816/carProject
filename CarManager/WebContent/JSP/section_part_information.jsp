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

<h1 style="text-align:center;"> 부품 정보 LIST</h1>
<%@ include file="carDB.jsp" %>

<table border=1 style="text-align:center;">	
		<tr>
			<th>부품코드</th>
			<th>부품명</th>
			<th>모델명</th>
			<th>규 격</th>
			<th>단 위</th>
			<th>매입단가</th>
			<th>매출단가</th>
			<th>메 모</th>
		</tr>
<%
request.setCharacterEncoding("utf-8");
PreparedStatement pstmt=null;
ResultSet rs=null;

try{
	String sql="select * from parTbl";
	pstmt=conn.prepareStatement(sql);	
	rs=pstmt.executeQuery();	
	while(rs.next()){%>	
	<tr>
		<td><%= rs.getString("partcode") %></td>
		<td><%= rs.getString("partname") %></td>
		<td><%= rs.getString("model") %></td>
		<td><%= rs.getString("standard") %></td>
		<td><%= rs.getString("unit") %></td>
		<td><%= rs.getString("purchase") %></td>
		<td><%= rs.getString("sales") %></td>
		<td><%= rs.getString("memo") %></td>
	</tr>		<%	
	}	
}catch(SQLException e){
	e.printStackTrace();
}

%>

</table>	
</body>
</html>