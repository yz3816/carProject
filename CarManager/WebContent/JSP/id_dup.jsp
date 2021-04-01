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
request.setCharacterEncoding("utf-8");
Connection conn=null;
PreparedStatement pstmt=null;
String sql="";
ResultSet rs = null;
String rst="";
String msg="";

String jdbcdriver="com.mysql.cj.jdbc.Driver";
String jdbcurl="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";

try{
	Class.forName(jdbcdriver);
	conn = DriverManager.getConnection(jdbcurl,"root","1234");
	String id=request.getParameter("id");
	sql="select * from car_member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	rs = pstmt.executeQuery();
	if(rs.next()){
		%>
	<script type="text/javascript">
	alert("중복된 아이디 \n이미 등록된 아이디입니다.")
	history.back();
	</script>
	<%
	}else
	{	
	%>
	<script type="text/javascript">
	alert("사용 가능한 아이디입니다.");
	history.back();
	</script>	
	<%
	}
}catch(SQLException e){
	e.getMessage();
}	
	%>


</body>
</html>