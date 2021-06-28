<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GET Method</title>
</head>
<body>

	<%-- Response(server) page --%>
	<%-- request 객체는 jsp에서 import없이 바로 사용할 수 있다 (다른 것도 있음) --%>

	<b>id : </b>
	<%= request.getParameter("user_id") %> <br>
	<b>name : </b>
	<%= request.getParameter("name") %> <br>
	<b>age : </b>
	<%= request.getParameter("age") %>

</body>
</html>