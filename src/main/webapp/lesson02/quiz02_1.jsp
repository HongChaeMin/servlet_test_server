<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02</title>
</head>
<body>

	<%
	Date now = new Date();
	SimpleDateFormat time = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다");
	SimpleDateFormat date = new SimpleDateFormat("현재 날짜는 yyyy년 MM월 dd일 입니다");

	String prDate = request.getParameter("date");

	if (prDate.equals("time")) {
		prDate = time.format(now);
	} else {
		prDate = date.format(now);
	}
	%>

	<h1><%=prDate%></h1>

</body>
</html>