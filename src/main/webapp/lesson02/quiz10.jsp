<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이번달 달력</title>

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
	
	<style type="text/css">
		h1 {text-align: center; margin: 10px}
		th {text-align: center;}
		td {text-align: center;}
	</style>
</head>
<body>

	<%
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
	%>

	<div class="container">
		<h1>2021-07</h1>
		<table class="table">
			<thead>
				<tr>
					<th>일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
			<tbody>
				<%
					int maxDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH) - 1;	
				
					int day[][] = new int[6][7];
					for (int i = 1; i <= maxDay; i++) {
						out.println((cal.get(Calendar.WEEK_OF_MONTH) - 1) + " " + (cal.get(Calendar.DAY_OF_WEEK) - 1) + "<br>");
						cal.set(Calendar.DATE, i);
						day[cal.get(Calendar.WEEK_OF_MONTH) - 1][cal.get(Calendar.DAY_OF_WEEK) - 1] = i;
					}
					
					for (int i = 0; i < 6; i++) {
						%>
				<tr>
						<%
						for (int j = 0; j < 7; j++) {
							if (day[i][j] != 0) {
								%>
					<td><%= day[i][j] + 1 %></td>
								<%
							} else {
								%>
					<td> </td>
								<%
							}
						}
						%>
				</tr>
						<%
					}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>