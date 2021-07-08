<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HONG당무 마켓</title>

<link rel="stylesheet" type="text/css" href="quiz03_style.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>

	<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connection();

	String query = "SELECT A.*, B.* FROM `seller` as A JOIN `used_goods` as B ON A.id = B.sellerId;";
	ResultSet result = mysqlService.select(query);
	%>

	<div id="wrap" class="container">

		<jsp:include page="header.jsp" />

		<section class="d-flex flex-wrap">
			<%
			while (result.next()) {
				String url = result.getString("picture");
			%>
			<article class="list">
				<img src="<%=url%>" width="80%" height="60%">
				<div>
					<h6><%= result.getString("title") %></h6>
					<span><%= result.getString("price") %> 원</span> <br>
					<span><%= result.getString("nickname") %></span>
				</div>
			</article>
			<%
			}
			%>
		</section>

		<jsp:include page="footer.jsp" />

	</div>

</body>
</html>