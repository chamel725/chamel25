<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>idCheck</title>
<script>
function input(){
	var id1 = "${mem1}";
	var id2 = opener.document.getElementById("memberid");
	id2.value=id1;
	window.close();
}
</script>
</head>
<body>
<form action = "idCheck" method="post">
<input type="text" name="memberid" id="id" value="${mem1}">
<input type="submit" value="클릭">
</form>
<c:if test="${amember=='success'}">사용할 수 있는 아이디 입니다.
<input type="button" value="사용하기" onclick="input()">
</c:if>
<c:if test="${amember=='fail'}">사용할 수 없는 아이디입니다.</c:if>
</body>
</html>