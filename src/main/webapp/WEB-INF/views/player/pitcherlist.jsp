<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>pitcherlist</title>
</head>
<body>
<h1>[ Pitcher List ]</h1>
<p><c:forEach items="${plist}" var="a">
Name: #{a.name}
Age: #{a.age}
team: #{a.team}
Year: #{a.year}
ERA: #{a.era}
Win: #{a.win}
Lose: #{a.lose}
Save: #{a.save}
Hold: #{a.hold}
S.O: #{a.so}
</c:forEach>
</body>
</html>