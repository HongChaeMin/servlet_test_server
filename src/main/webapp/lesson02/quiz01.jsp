<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>

	<%!public int sum(int n) {
		int sum = 0;
		for (int i = 1; i <= n; i++) {
			sum += i;
		}
		return sum;
	}%>

	<h1>
		1부터 50까지의 합은
		<%=sum(50)%>입니다
	</h1>

	<%
	int[] scores = { 80, 90, 100, 95, 80 };
	double avg = 0.0;

	for (int n : scores) {
		avg += n;
	}
	avg /= (double) scores.length;
	%>

	<h1>
		평균 점수는
		<%=avg%>입니다
	</h1>

	<%!private List<String> scoreList = Arrays.asList(new String[] { "X", "O", "O", "O", "X", "O", "O", "O", "X", "O" });
	private int sum;

	public int score() {
		for (String str : scoreList) {
			if (str.equals("O")) {
				this.sum += 100 / scoreList.size();
			}
		}
		return this.sum;
	}%>

	<h1>
		채점 결과는
		<%=score()%>점 입니다
	</h1>

	<%!private String birthDay = "20010820";

	public int birthDay() {
		return 2021 - Integer.valueOf(birthDay.substring(0, 4)) + 1;
	}%>

	<h1>
		20010820의 나이는
		<%=birthDay()%>세 입니다
	</h1>

</body>
</html>