<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<section>
<h1 style="text-align:center;">차량 부품 관리</h1>
<form method="post" action="parTblprocess.jsp"> 
<table border=1 style="text-algin:center;">

<tr>
<td>부품번호</td>
<td colspan=3><input type="text" name="partcode"></td>
</tr>

<tr>
<td>부품명</td>
<td colspan=3><input type="text" name="partname"></td>
</tr>

<tr>
<td>모델명</td>
<td colspan=3><input type="text" name="model"></td>
</tr>

<tr>
<td>규격</td>
<td colspan=3><input type="text" name="standard"></td>
</tr>

<tr>
<td>단위</td>
<td colspan=3><input type="text" name="unit"></td>
</tr>

<tr>
<td>매입가</td>
<td><input type="text" name="purchase"></td>
<td>매출가</td>
<td><input type="text" name="sales"></td>
</tr>

<tr>
<td>메모</td>
<td colspan=3><textarea cols="80" rows="8" name="memo"></textarea></td>
</tr>

<tr>
<td colspan=4 align="center"><input type="submit" value="부품등록"><input type="reset" value="다시작성"></td>
</tr>

</table>
</form>
</section>

</body>
</html>