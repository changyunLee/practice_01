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
	function insert() {
		$.ajax({
			url : "/insertj.do",
			type : "POST",
			data : $("#input").serialize(),
			dataType : "JSON",
			success : function(result) {
				alert("작성 완료");
				location.href = "/home.do";
			}

		})

	}
</script>
</head>


<h3 style="text-align: center">새글 작성</h3>
<body>

	<div class="container">



		<form id="input">
			<div class="table">
				<input type="hidden" name="bnum" value="${max }" /><br /> 
				<input class="form-control" type="text" name="title" placeholder="title ..." /><br /> 
				<input class="form-control" type="text" name="writer" value="${id }" readonly="readonly"/><br /> 
				<textarea class="form-control" rows="5" id="bcontent" name="bcontent" placeholder="content ..."  ></textarea><br /> 
				<input type="hidden" name="bcnt" value="0" /> 
				<input type="hidden" name="btype" value="게시판" />
			</div>
		</form>
		<button class="btn btn-primary" id="btn btn-default"
			onclick="insert()" type="button">글입력</button>
		<button type="button" class="btn btn-info"
			onclick="location.href='home.do'">홈으로 돌아가기</button>


	</div>
</body>


</html>