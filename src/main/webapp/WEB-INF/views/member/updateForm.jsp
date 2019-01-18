<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update</title>
<link rel="stylesheet" type="text/css" href="./resources/css/updateform.css">
<script type="text/javascript">
function formCheck(){
	var pw = document.getElementById('password');
	var pw2 = document.getElementById('pasword2');
	var name = document.getElementById('name');
	
	if(pw.value.length < 3 || pw.value.length > 10){
		alert('비밀번호는 3자 이상 입력하세요');
		pw.focus();
		pw.select();
		return false;
	}
	if(pw.value != pw2.value){
		alert('비밀번호가 일치하지 않습니다.');
		pw.focus();
		pw.select();
		return false;
	}
	if(name.value == ''){
		alert('이름을 입력하세요.');
		name.focus();
		name.select();
		return false;
	}
}
</script>
</head>
<body>
<h1>[ update ]</h1>
<form method="post" action="update" onsubmit="return formCheck()">
<table>
<tr>
<th>id</th>
<td><input type="text" id="memberid" name="memberid" value="${member.memberid}" readonly="readonly"></td>
</tr>
<tr>
<th>password</th>
<td><input type="password" id="password1" name="password"></td>
</tr>
<tr>
<th>password check</th>
<td><input type="password" id="password2"></td>
</tr>
<tr>
<th>name</th>
<td><input type="text" id="name" name="name" value="${member.name}"></td>
</tr>
<tr>
<th>email</th>
<td><input type="email" id="email" name="email" value="${member.email}"></td>
</tr>
<tr>
<td colspan="2" style="text-align: center;">
<input type="submit" class="button" value="update">
<input type="reset" class="button" value="rewrite">
</td>
</tr>
</table>
</form>
</body>
</html>