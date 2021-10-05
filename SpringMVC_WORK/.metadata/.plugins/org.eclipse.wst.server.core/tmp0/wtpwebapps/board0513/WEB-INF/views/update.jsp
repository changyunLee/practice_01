<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<meta charset="UTF-8">

<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function update() {
		$.ajax({
			url : "/updatej.do",
			type : "POST",
			data : $("#update").serialize(),
			dataType : "JSON",
			success : function(result) {
				console.log(result);
				alert("수정 완료");
				location.href = "/home.do";
			}

		})
	}
</script>
</head>
<body>

		<h2>update page</h2>
		<form id="update">
			<input type="hidden" name="bnum" value="${board.bnum}" /><br />
			<div class="form-group">
				<label for="title">수정할 제목:</label> <input type="text"
					class="form-control" id="title" name="title"
					placeholder="${board.title} .....">
			</div>
			<div class="form-group">
				<label for="title">수정할 내용:</label>
				<textarea class="form-control" rows="5" id="bcontent" name="bcontent" placeholder="${board.bcontent} ....." ></textarea>
				
				
			</div>

		</form>
		<button type="button" onclick="update()" class="btn btn-primary">수정 하기</button>
		<a href="home.do">목록으로 돌아가기</a>



</body>
</html>