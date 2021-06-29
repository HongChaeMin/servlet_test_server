<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체격 조건</title>

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

	<div class="container">
		<div class="display-3 mb-4">체격 조건 입력</div>
		<div>
			<form method="get" action="quiz03_1.jsp" class="d-flex w-100">
				<div class="form-group d-flex mr-3 align-items-end">
					<input type="text" class="form-control mr-3" id="heigth" name="heigth" placeholder="키를 입력하세요">
					<div>cm</div>
				</div>
				<div class="form-group d-flex mr-3 align-items-end">
					<input type="text" class="form-control mr-3" id="weigth" name="weigth" placeholder="몸무게를 입력하세요">
					<div>kg</div>
				</div>
				<button type="submit" class="btn btn-info">계산</button>
			</form>
		</div>
	</div>

</body>
</html>