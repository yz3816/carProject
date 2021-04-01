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

<header>

<% 
String checkName="";
checkName = (String)session.getAttribute("s_Name");
if(checkName==null){
%>	

<h1>카센터 (붕붕이 나라)</h1>

<div id="form1">

<form method="post" action="header_login.jsp">
<fieldset>

회원 ID: <input type="text" name="id">
비밀번호: <input type="password" name="password">
<input type="submit" value="로그인">
<a href="insert.jsp">회원가입</a>
<%}
else{session.setMaxInactiveInterval(500);%>
<h1>카센터 (붕붕이 나라)</h1>
<div class="right" style="text-align:right;">
<%= checkName %> 님 환영합니다. 
<a href="header_logout.jsp">logout</a>
<a href="insert.jsp">회원가입</a>

</div>
<%} %>


</fieldset>
</form>
</div>




</header>


</body>
</html>