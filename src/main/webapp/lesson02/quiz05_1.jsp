<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>

	<%
	double cm = Integer.valueOf(request.getParameter("cm"));
	// checkbox와 같은 여러 파라미터를 받아올 때 getParameterValues()
	String[] length = request.getParameterValues("length");
	%>

	<h1>길이 변환 결과</h1>
	<h3><%=cm%>cm
	</h3>
	<hr>
	<%
	for (String result : length) {
		switch (result) {
		case "in":
			double in = cm / 2.54;
			out.print("<h2>" + in + " in </h2>");
			break;
		case "yd":
			double yd = cm / 91.44;
			out.print("<h2>" + yd + " yd </h2>");
			break;
		case "ft":
			double ft = cm / 30.48;
			out.print("<h2>" + ft + " ft </h2>");
			break;
		case "m":
			double m = cm / 100;
			out.print("<h2>" + m + " m </h2>");
			break;
		}
	}
	%>

</body>
</html>