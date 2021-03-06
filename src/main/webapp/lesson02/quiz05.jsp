<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>

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

	<div class="container">
		<div class="display-4 mb-3">길이 변환</div>
		<form method="post" action="quiz05_1.jsp">
			<div class="form-group d-flex align-items-end">
				<input type="text" class="form-control" name="cm" placeholder="길이를 입력하세요">
				<span class="ml-3">cm</span>
			</div>
			<div class="form-group d-flex justify-content-around">
				<label for="in">인치 <input type="checkbox" name="length" id="in" value="in"></label>
				<label for="yd">야드 <input type="checkbox" name="length" id="yd" value="yd"></label>
				<label for="ft">피트 <input type="checkbox" name="length" id="ft" value="ft"></label>
				<label for="m">미터 <input type="checkbox" name="length" id="m" value="m"></label>
			</div>
			
			<button type="submit" class="btn btn-success">변환하기</button>
		</form>
	</div>

</body>
</html>