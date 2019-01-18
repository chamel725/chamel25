<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>joinForm</title>
<link rel="stylesheet" type="text/css" href="./resources/css/joinform.css">
<style type="text/css">
</style>
<script>
function check(){
	var id= document.getElementById('memberid');
	var pw= document.getElementById('password');
	var pw2= document.getElementById('password2');
	var nm= document.getElementById('name');

	
	if(id.value.length < 3 || id.value.length > 10){
		alert('id는 3~10자로 입력하세요.');
		id.focus();
		id.select();
		return false;
	}
	if(pw.value.length < 3 || pw.value.length > 10 ){
		alert('비밀번호는 3~10자로 입력하세요.');
		pw.focus();
		pw.select();
		return false;
	}
	if(pw.value != pw2.value){
		alert('비밀번호를 다시 확인하세요.');
		pw.focus();
		pw.select();
		return false;
	}
	if(nm.value == ''){
		alert('이름을 입력하세요');
		nm.focus();
		nm.select();
		return false;
	}	
	return true;
}
function openIdCheck(){
	window.open('idCheck','winCheck','top=200,left=600,width=300,height=300');
}


</script>
</head>
<body>


<form action="join" method="post" onsubmit="return check()">
<table class="joinForm">
<h1>Sign Up</h1>
<span class="number">♠</span>Welcome To BaseballWorld
<tr>
<td class="font">id</td>
<td><p><input type="text" name="memberid" id="memberid" readonly="readonly"></p>
<input type="button" value="IDCheck" class="button" id="button" onclick="openIdCheck()"></td>
</tr>
<tr>
<td class="font">password</td>
<td><p><input type="password" name="password" id="password"></p></td>
</tr>
<tr>
<td class="font">password check</td>
<td><p><input type="password" id="password2"></p></td>
</tr>
<tr>
<td class="font">name</td>
<td><p><input type="text" name="name" id="name" placeholder="김득구"></p></td>
</tr>
<tr>
<td class="font">email</td>
<td><p><input type="email" name="email" id="email" placeholder="123@naver.com"></p></td>
</tr>
<tr>
<tr>
	<td><input type="reset" class="button" value="   rewrite    "></td>
	<td><input type="submit" class="button" value="SignUp"></td>
</tr>
	</table>
</form>


</body>
</html>