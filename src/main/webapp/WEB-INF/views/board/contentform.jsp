<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
	display:table;
	margin-left:auto;
	margin-right:auto;
  width:50%;
  table-layout: fixed;
   background: linear-gradient(to right, rgba(37, 196, 129,0.4), rgba(37, 183, 196,0.4));
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:300px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
  text-align: center;
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
	background-image:url(./resources/image/p.png);
	font-size: 0.9em;
  font-family: 'Roboto', sans-serif;
}
section{
  margin: 50px;
}
#navigator, #pagingForm{
	text-align: center;
	margin: 1em;
}
a{
text-align: center;
}
a:ACTIVE{
color: white;
text-decoration: none;
}
a:BEFORE{
color: white;
text-decoration: none;
}
a:LINK{
color: white;
text-decoration: none;
}
a:VISITED {
color: #99e6ff;
text-decoration: none;
}
a:HOVER {
color:#ffb366;
text-decoration: none;
}
#btn-twtr{
  clear:both;
  color:#fff;
  border:2px solid;
  border-radius:3px;
  text-align:center;
  text-decoration:none;
  display:block;
  font-family:sans-serif;
  font-size:18px;
  width:13em;
  padding:5px 10px;
  font-weight:600;
  position:relative;
  margin:3em auto;
  background:rgba(0,0,0,0.3);
  box-shadow:0 0 0px 3px rgba(0,0,0,0.2);
  opacity:0.4
}#btn-twtr:hover{color:#fff;opacity:1}


</style>
</head>
<body>
	<h1> Read </h1>

	<table>
		<tr>
			<td>Num : ${list.boardnum}</td>
		</tr>
		<tr>
			<td>Title :${list.title}</td>
		</tr>
		<tr>
			<td>ID :${list.id}</td>
		</tr>
		<tr>
			<td>Team : ${list.team}</td>
		</tr>
		<tr>
			<td>Content : ${list.content}</td>
		</tr>
		<tr>
			<td>Hit :${list.hits}</td>
		</tr>
		<tr>
			<td>Day : ${list.inputdate}</td>
		</tr>
		
	</table>


	<c:if
		test="${sessionScope.id != null
						&& sessionScope.id == list.id}">
		<form method="get" action="update" style="display:inline;">
			<input type="hidden" name="boardnum" value="${list.boardnum}">
			<input id="btn-twtr" type="submit" value="Update">
		</form>
	</c:if>

	<c:if
		test="${sessionScope.id != null
						&& sessionScope.id == list.id}">
		<form method="post" action="delete" style="display:inline;">
			<input type="hidden" name="boardnum" value="${list.boardnum}">
			<input id="btn-twtr" type="submit" value="Delete">
		</form>
	</c:if>
	<button id="btn-twtr" onclick="location.href='listform'">List</button>
	<br>

</body>
</html>