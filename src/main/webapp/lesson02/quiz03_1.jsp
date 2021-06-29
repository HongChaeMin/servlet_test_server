<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>

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
</head>
<body>

	<%
	int weigth = Integer.valueOf(request.getParameter("weigth"));
	int heigth = Integer.valueOf(request.getParameter("heigth"));

	double bmi = weigth / ((heigth / 100.0) * (heigth / 100.0));

	String suchi = "";

	if (bmi <= 20) {
		suchi = "저체중";
	} else if (bmi <= 25) {
		suchi = "정상";
	} else if (bmi <= 30) {
		suchi = "과체중";
	} else {
		suchi = "비만";
	}
	%>
	
	<h1>BMI 측정 결과</h1>
	<div class="display-3 mb-3">
		당신은 <span style="color: purple;"><%=suchi%></span> 입니다.
	</div>
	<h5>BMI 수치 : <%=bmi%></h5>

</body>
</html>