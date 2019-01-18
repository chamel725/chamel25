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
  margin-top: 8em;
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
#title1{
width: 20%;
}
#text1{
width: 90%;
}
#title2{
width: 50%;
}
</style>
</head>
<body>
<h1> Update </h1>
<form action="updateBoard" method="post">
<table>
	<tr>
		<td id="title1">Title</td><td id="title2"><input type="text" name="title" value="${list.title}" ></td>
	</tr>
	<tr>
		<td>ID</td><td id="title2">${list.id}</td>
	</tr>
	<tr>
		<td>Day</td><td id="title2">${list.inputdate}</td>
	</tr>
	<tr>
		<td>Team</td><td id="title2">${list.team}</td>
	</tr>
	<tr>
		<td>Content</td>
		<td><textarea rows="10" cols="40" name="content" id="text1">${list.content}</textarea></td>
	</tr>
</table>
<input type="hidden" name="boardnum" value="${list.boardnum}">
<input type="hidden" name="id" value="${list.id}">
<input type="submit" value="Update" id="btn-twtr">
</form>
</body>
</html>