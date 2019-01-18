<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>loginForm</title>
<link rel="stylesheet" type="text/css" href="./resources/css/loginform.css">
</head>
<body>
<h2>[ login ]</h2>
<form method="post" action="login">
<table>
<tr>
<td>id<input type="text" name="id">${messageid}</td>
</tr>
<tr>
<td>password<input type="password" name="password" class="button">${messagepw}</td>
</tr>
<tr>
<td style="text-align: center"><input type="submit" value="login" class="button"></td>
</tr>
</table>
</form>
</body>
</html>