<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>
</head>
<body>
	<%--
		Flow
		
	 	유저 추가 ) ex02.jsp (input 폼 화면) -> ex02_insert (서블릿, insert 쿼리) -> ex02_1.jsp(유저 목록)
	 
	 --%>

	<form method="post" action="/lesson04/ex02_insert">
		<p>
			<b>이름</b>
			<input type="text" name="name">
		</p>
		
		<p>
			<b>생년월일</b>
			<input type="text" name="brith">
		</p>
		<p>
			<b>이메일</b>
			<input type="email" name="email">
		</p>
		<p>
			<b>자기소개</b>
			<textarea name="introduce" rows="5" cols="50"></textarea>
		</p>
		<button type="submit">회원 가입</button>
	</form>

</body>
</html>