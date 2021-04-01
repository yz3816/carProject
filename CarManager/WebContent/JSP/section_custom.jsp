<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>

function check(){
	if(document.customform.id.value==""){
		alert("아이디를 입력하세요");
	}
	if(document.customform.name.value==""){
		alert("이름을 입력하세요");
	}
	if(document.customform.password.value==""){
		alert("비밀번호를 입력하세요");
	}
	if(document.customform.passwordcheck.value==""){
		alert("확인 비밀번호를 입력하세요");
	}	
	if(document.customform.passwordcheck.value!="" && document.customform.password.value!=""){
		if(document.customform.password.value != document.customform.passwordcheck.value){
			alert("비밀번호가 일치하지 안습니다");
			document.customform.password.focus();
		}
		else{
			document.customform.submit();
		}
	}
	if(document.customform.email.value==""){
		alert("이메일을 입력하세요");
	}
	if(document.customform.phone1.value==""){
		alert("핸드폰 번호 입력하세요");
	}
	if(document.customform.home1.value==""){
		alert("전화번호 입력하세요");
	}
	if(document.customform.address.value==""){
		alert("주소를 입력하세요");
	}
	if(document.customform.carnumber.value==""){
		alert("차량번호를 입력하세요");
	}
	if(document.customform.carfield.value==""){
		alert("차량종류를 입력하세요");
	}
}

function id_check(){
	window.open("id_dup.jsp?id="+document.customform.id.value,target="display_area");
}

</script>


</head>
<body>

<section>
<fieldset>
<legend>고객관리</legend>

<form method="post" action="carprocess.jsp" name="customform">
<table  border=1>

<tr>
<td>아이디</td>
<td><input id="yellow" type="text" name="id" ><input type="button" value="중복체크" onclick="javascript:id_check();"></td>
</tr>

<tr>
<td>이름</td>
<td><input id="yellow"  type="text" name="name"></td>
</tr>

<tr>
<td>비밀번호</td>
<td><input type="password" name="password"></td>
</tr>

<tr>
<td>비밀번호확인</td>
<td><input type="password" name="passwordcheck"></td>
</tr>

<tr>
<td>성별</td>
<td><input type="radio" name="gender" value="1">남<input type="radio" name="gender" value="2">여</td>
</tr>

<tr>
<td>이메일</td>
<td><input id="yellow" type="text" name="email">@<select><option>naver.com</option>
<option>hanmail.net</option>
<option>gmail.com</option>
</select></td>
</tr>

<tr>
<td>핸드폰</td>
<td><select><option>010</option>
<option>011</option>
<option>016</option>
<option>017</option>
</select>-<input type="text" name="phone1">-<input type="text" name="phone2"></td>
</tr>

<tr>
<td>전화번호</td>
<td><input type="text" name="home1">-<input type="text" name="home2">-<input type="text" name="home3"></td>
</tr>

<tr>
<td>주소</td>
<td><input id="yellow"  type="text" name="address"></td>
</tr>

<tr>
<td>차량번호</td>
<td><input id="yellow"  type="text" name="carnumber"></td>
</tr>

<tr>
<td>차량종류</td>
<td><input type="text" name="carfield"></td>
</tr>

<tr id="table12id" align="center">
<td colspan=2>
<input type="submit" value="회원가입" onclick="javascript:check();"><input type="reset" value="다시작성"></td>
</tr>

</table>


</form>

</fieldset>

</section>
</body>
</html>