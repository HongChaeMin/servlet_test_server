<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="d-flex align-items-end mb-3">
	<div class="mr-4">
		<span class="display-4 font-weight-bold text-success">Melong</span>
	</div>

	<form method="get" action="templateSong.jsp">
			<div class="input-group" style="height: 40px">
				<input type="text" class="form-control" name="title"
					placeholder="노래 제목을 검색하세요">
				<div class="input-group-append">
					<button type="submit" class="btn btn-success">검색</button>
				</div>
			</div>
	</form>
</header>