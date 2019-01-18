<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="./resources/css/homeBackground.css">
<link rel="stylesheet" type="text/css" href="./resources/css/homeHeader.css">
<link rel="stylesheet" type="text/css" href="./resources/css/homeLogo.css">
<head>
	<title>Home</title>
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
    top:2.2em;
 	left:-5em;
    z-index: 1;
}
.dropdown:hover .dropdown-content {
    display: block;
}

#player{
display: table;
margin-left: auto;
margin-right: auto;
}

</style>
<script src="./resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
 var count=1;
function player(){
	if(count%2==0){
		$("#player").html('');
	}else{
	var html = '<form action ="./search" method ="post"><select name="player"><option value="better">Better</option><option value="pitcher">Pitcher</option></select>'
		html += '<input type="text" name ="name"><input type="submit" value="검색" ></form>';
	$("#player").html(html);
	}
	count++;
};

</script>
</head>
<body>
<header class="header" id="header1">
    <nav>
        <ul class="">
            <li class="active"><a href="./">Home</a>
            </li>
            <div class="dropdown">
            <li><a href="allplayer">Team</a>
            <div class="dropdown-content">
            <ul>
            	<li><a href="playerList?team=LG트윈스">LgTwins</a></li>
            	<li><a href="playerList?team=롯데자이언츠">LotteGiants</a></li>
            	<li><a href="playerList?team=한화이글스">HanhwaEagles</a></li>
            	<li><a href="playerList?team=삼성라이온즈">SamsungLions</a></li>
            	<li><a href="playerList?team=KIA타이거즈">KiaTigers</a></li>
            	<li><a href="playerList?team=KT위즈">KtWiz</a></li>
            	<li><a href="playerList?team=두산베어스">DoosanBears</a></li>
            	<li><a href="playerList?team=SK와이번스">SkWyverns</a></li>
            	<li><a href="playerList?team=NC다이노스">NcDinors</a></li>
            	<li><a href="playerList?team=넥센히어로즈">NexenHeros</a></li>
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
<c:if test="${id != null}">
<div class="logo"><b><span>id:${id}</span></b></div>
</c:if>
<c:if test="${id == null}">
<div class="logo"><b><span>W</span><span>h</span><span>o</span><span>A</span><span>r</span><span>e</span><span>Y</span><span>o</span><span>u</span></b></div>
</c:if>
<c:choose>
<c:when test="${id == null}">
	<a href="joinForm" id="btn-twtr">SignUp</a><br>
	<a href="loginForm"id="btn-twtr">Login</a><br>
	<a href="listform"id="btn-twtr">Board</a><br>
	</c:when>
	<c:when test="${id != null}">
	<a href="logout"id="btn-twtr" >Logout</a><br>
	<a href="updateForm"id="btn-twtr">Update</a><br>
	<a href="writeform"id="btn-twtr">Write</a><br>
	</c:when>
	</c:choose>
</body>
</html>
