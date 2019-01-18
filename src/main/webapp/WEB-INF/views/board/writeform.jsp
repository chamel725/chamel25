<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>write</title>
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
  margin:1em auto;
  background:rgba(0,0,0,0.3);
  box-shadow:0 0 0px 3px rgba(0,0,0,0.2);
  opacity:0.4
}#btn-twtr:hover{color:#fff;opacity:1}

#title1{
width: 20%;
font-size: 120%;
}
#content{
width: 90%;
}
#team1{
font-size: 130%;
}
.title2{
width: 63%;
}
.gr-top-z-index gr-top-zero{
display: none;
}
</style>
</head>
<body>
<h1>[ write ]</h1>
<form method="post" action="write" onsubmit="return formCheck()">
<table>
<tr>
<th id="title1">title</th>
<td><input type="text" name="title" id="title" class="title2"></td>
</tr>
<tr>
<th id="title1">content</th>
<td><textarea rows="10" cols="40" name="content" id="content"></textarea></td>
</tr>
<tr>
<th id="title1">team</th>
<td id="team1"><input type="radio" name="team" value="twins" checked="checked">LgTwins
<input type="radio" name="team" value="tigers">KiaTigers
<input type="radio" name="team" value="wiz">KtWiz
<input type="radio" name="team" value="giants">LotteGiants
<input type="radio" name="team" value="Lions">SamsungLions
<input type="radio" name="team" value="bears">DoosanBears<br>
<input type="radio" name="team" value="heros">NexenHeros
<input type="radio" name="team" value="dionors">NcDinors
<input type="radio" name="team" value="eagles">HanhwaEagles
<input type="radio" name="team" value="wyverns">SkWyverns</td>
</tr>
<tr>
<td colspan="2" style="text-align: center;"><input type="submit" value="save" id="btn-twtr"></td>
</table>
</form>
</body>
</html>