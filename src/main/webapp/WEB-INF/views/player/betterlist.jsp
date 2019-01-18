<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./resources/css/player.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<c:if test="${team=='lgtwins'}">
		<c:forEach items="${list}" var="b">
			<h1 class="title-pen">
				Better Profile <span>UI</span>
			</h1>
			<div class="user-profile">
				<img class="avatar" src="${b.url}" alt="${b.name}" />
				<div class="username">${b.name}</div>
				<div class="bio">${b.position}</div>
				<div class="description">${b.team}</div>
				<ul class="data">
					<li><span>Year : ${b.year }</span></li>
					<li><span>Game : ${b.game }</span></li>
					<li><span>Avg : ${b.avg }</span></li>
					<li><span>Hit : ${b.hit }</span></li>
				</ul>
				<ul class="data">
					<li><span>HR : ${b.hr }</span></li>
					<li><span>RBI : ${b.rbi }</span></li>
					<li><span>SB : ${b.sb }</span></li>
				</ul>
			</div>
		</c:forEach>
	</c:if>
		<c:if test="${team=='lgtwins'}">
		<c:forEach items="${list}" var="p">
			<h1 class="title-pen">
				Pitcher Profile <span>UI</span>
			</h1>
			<div class="user-profile">
				<img class="avatar" src="${p.url}" alt="${p.name}" />
				<div class="username">${p.name}</div>
				<div class="bio">${p.position}</div>
				<div class="description">${p.team}</div>
				<ul class="data">
					<li><span>Year:${p.year}</span></li>
					<li><span>ERA:${p.era}</span></li>
					<li><span>Win:${p.win}</span></li>
					<li><span>Lose:${p.lose}</span></li>
				</ul>
				<ul class="data">
					<li><span>Save:${p.save}</span></li>
					<li><span>Hold:${p.hold}</span></li>
					<li><span>SO:${p.so}</span></li>
				</ul>
			</div>
		</c:forEach>
	</c:if>
	<c:if test="${team=='lgtwins'}">
		<c:forEach items="${list}" var="a">
			<h1 class="title-pen">
				All Profile <span>UI</span>
			</h1>
			<div class="user-profile">
				<img class="avatar" src="${a.url}" alt="${a.name}" />
				<div class="username">${a.name}</div>
				<div class="bio">${a.position}</div>
				<div class="description">${a.team}</div>
				<ul class="data">
					<li><span>year : ${a.year }</span></li>
					<li><span>game : ${a.game }</span></li>
					<li><span>avg : ${a.avg }</span></li>
					<li><span>hit : ${a.hit }</span></li>
				</ul>
				<ul class="data">
					<li><span>hr : ${a.hr }</span></li>
					<li><span>rbi : ${a.rbi }</span></li>
					<li><span>sb : ${a.sb }</span></li>
				</ul>
			</div>
		</c:forEach>
	</c:if>
	<c:if test="${player==''||player==null}">
		검색 결과가 없습니다.	
	</c:if>
	<footer>
		<h1>
			inspired by <a href="https://dribbble.com/shots/1033074-User-Profile">
				<span class="entypo-dribbble"></span> shot
			</a>
		</h1>
	</footer>
	
	
	
</body>
</html>