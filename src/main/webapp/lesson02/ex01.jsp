<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP EX</title>
</head>
<body>

	<%-- 이렇게 코드 작성하는 회사 보면 도망쳐 --%>

	<!-- HTML 주석 : 소스보기에서 보인다 -->
	<%-- JSP 주석 : 소스보기에서 보이지 않는다 --%>

	<%
	// java 문법 시작 --> java 주석
	// scriptlet
	// - 메인 함수에 정의 하는 느낌

	int sum = 0;

	for (int i = 1; i <= 10; i++) {
		sum += i;
	}
	%>

	<b>합계 : </b>
	<input type="text" value="<%=sum%>">

	<hr>

	<%!
	// 선언문
	// - 일반 클래스 느낌 (필드, 메소드 정의)

	// field
	private int num = 100;

	// method
	public String getHelloWorld() {
		return "Hello World!";
	}%>

	<%-- 표현식 : 선언되어 있는 변수값이나, 메소드의 리턴 값을 출력한다 --%>
	<%=getHelloWorld()%>
	
	<hr>
	
	<%=num + 200%>

</body>
</html>