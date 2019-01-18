<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list</title>
<script src="./resources/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="./resources/css/homeHeader.css">
<style type="text/css">

.dropdown {
    padding: 5px 5px 5px 5px;
    position: relative;
    display: inline-block;
    border-radius: 3px;
}

.dropdown-content {
	
    display: none;
    position: absolute;
    background-color: rgb(51, 77, 77,0.5);
    min-width: 160px;
    padding:  auto;
    z-index: 1;
}

.dropdown:hover .dropdown-content {
    display: block;
}


h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
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
	background-size:10%;
	background-repeat:repeat;
	font-size: 0.9em;
  font-family: 'Roboto', sans-serif;
  margin-top: 10em;
}
section{
  margin: 50px;
}
#navigator, #pagingForm{
	text-align: center;
	margin: 1em;
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
  display:inline-block;
  font-family:sans-serif;
  font-size:18px;
  width:6em;
  padding:3px 6px;
  font-weight:600;
  position:relative;
  margin:1em 1em;
  background:rgba(0,0,0,0.3);
  box-shadow:0 0 0px 3px rgba(0,0,0,0.2);
  opacity:0.4
}#btn-twtr:hover{color:#fff;opacity:1}

</style>
<script type="text/javascript">
function pagingFormSubmit(p){
	var pagingForm = document.getElementById('pagingForm');
	var page = document.getElementById('page');
	page.value = p;		//폼에 요청할 페이지 번호 저장
	pagingForm.submit(); //폼 전송
}

var count=1;
function player(){
	if(count%2==0){
		$("#player").html('');
	}else{
	var html = '<form action ="./search" method ="post"><select name="player"><option value="better">Better</option><option value="pitcher">Pitcher</option></select>'
		html += '<input type="text" name ="name"><input type="submit" value="검색"></form>';
	$("#player").html(html);
	}
	count++;
};


</script>
</head>
<body >
<header class="header" id="header1">
    <nav>
        <ul class="">
            <li class="active"><a href="./">Home</a>
            </li>
            <div class="dropdown">
            <li><a href="#">Team</a>
            <div class="dropdown-content">
            <ul>
            	<li><a href="LgTwinsList?team=LG">LgTwins</a></li>
            	<li><a href="#">LotteGiants</a></li>
            	<li><a href="#">HanhwaEagles</a></li>
            	<li><a href="#">SamsungLions</a></li>
            	<li><a href="#">KiaTigers</a></li>
            	<li><a href="#">KtWiz</a></li>
            	<li><a href="#">DoosanBears</a></li>
            	<li><a href="#">SkWyverns</a></li>
            	<li><a href="#">NcDinors</a></li>
            	<li><a href="#">NexenHeros</a></li>
            </ul>
            </div>
            </li>
            </div>
            <li><a href="javascript:player()">Player</a>
            </li>
            <li><a href="listform">Board</a>
            </li>
        </ul>
    </nav>
    <div id="player"></div>
</header>
<h1>BOARD</h1>
<table >
<tr>
<th style="text-align: center"; >Num</th>
<th style="text-align: center";>ID</th>
<th style="text-align: center";>Title</th>
<th style="text-align: center";>Team</th>
<th style="text-align: center";>Hit</th>
<th style="text-align: center";>Day</th>
</tr>
<c:if test="${list == null || list == ''}">
<tr><td colspan="5">nothing</td></tr>
</c:if>
<c:if test="${list != null || list != ''}">
<c:forEach items="${list}" var="board">
<tr>
<td>${board.boardnum}</td>
<td>${board.id}</td>
<td><a href="content?boardnum=${board.boardnum}">${board.title}</a>
<td>${board.team}</td>
<td>${board.hits}</td>
<td>${board.inputdate}</td>
</tr>
</c:forEach>
</c:if>
</table>
<form id="pagingForm" method="get" action="listform">
	<input type="hidden" name="page" id="page">
	Title:
	<input type="text" name="searchText" value="${searchText}">
	<input type="button" id="btn-twtr" onclick="pagingFormSubmit(1)" value="Search"><!-- (1):무조건 1페이지 -->
</form>
<div id="navigator">
<!-- 페이지 이동 부분 -->                      
	<a href="javascript:pagingFormSubmit(${navi.currentPage - navi.pagePerGroup})">◁◁ </a> &nbsp;&nbsp;
	<a href="javascript:pagingFormSubmit(${navi.currentPage - 1})">◀</a> &nbsp;&nbsp;

	<c:forEach var="counter" begin="${navi.startPageGroup}" end="${navi.endPageGroup}"> 
		<c:if test="${counter == navi.currentPage}"><b></c:if>
			<a href="javascript:pagingFormSubmit(${counter})">${counter}</a>&nbsp;
		<c:if test="${counter == navi.currentPage}"></b></c:if>
	</c:forEach>
	&nbsp;&nbsp;
	<a href="javascript:pagingFormSubmit(${navi.currentPage + 1})">▶</a> &nbsp;&nbsp;
	<a href="javascript:pagingFormSubmit(${navi.currentPage + navi.pagePerGroup})">▷▷</a>
<a href="writeform"><input id = "btn-twtr" type="submit" value="Write"></a>
</body>
</html>