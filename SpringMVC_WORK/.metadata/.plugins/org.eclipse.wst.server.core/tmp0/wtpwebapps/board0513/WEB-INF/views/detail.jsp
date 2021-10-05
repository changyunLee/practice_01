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
	function reply() {
		$.ajax({
			url : "/reply.do",
			type : "POST",
			data : $("#writerply").serialize(),
			dataType : "JSON",
			success : function(result) {
				console.log(result);
				alert("작성 완료");
				location.href = "/home.do";
			}
		})
	}
</script>
</head>
<body>

	<div class="container">

		<table class="table table-striped">

			<tr>
				<th>번호</th>
				<td>${board.bnum}</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${board.title}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${board.writer}</td>
			</tr>
			<tr>
				<th>날짜</th>
				<td>${board.bdate}</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${board.bcnt}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea class="form-control" rows="5" id="bcontent" name="bcontent" readonly >${board.bcontent }</textarea></td>
			</tr>

		</table>

		<button type="button" class="btn btn-warning"
			onclick="location.href='update.do?bnum=${board.bnum}'">게시글
			수정</button>
		<button type="button" class="btn btn-danger"
			onclick="location.href='delete.do?bnum=${board.bnum}'">게시글
			삭제</button>
		<button type="button" class="btn btn-info"
			onclick="location.href='home.do'">홈으로 돌아가기</button>




		<!-- 댓글  -->

		<table border="1" width="50%">
			<form id="writerply">

				<h3 style="text-align: center">---------------------------------------댓글---------------------------------------</h3>
				<input type="hidden" name="bnum" value=" ${board.bnum }" /><br />

				<div class="form-group">
					<label for="writer">writer:</label> <input type="text"
						class="form-control" id="writer" name="writer"
						value="${member.userid }" readonly>
				</div>
				<div class="form-group">
					<label for="content">content:</label>
					<textarea class="form-control" rows="5" id="content" name="content"></textarea>
				</div>
			</form>
		</table>
		<button type="button" class="btn btn-primary" onclick="reply()">댓글
			입력</button>

		<div id="reply">
			<ol class="replyList">
				<c:forEach items="${replyList }" var="reply">
					<li>
						<p>
							<span class="glyphicon glyphicon-user"></span> 작성자 :
							${reply.writer } <br /> 작성 날짜 : ${reply.regdate }<br />
						</p>
						<p class="bg-info">-->${reply.content}</p>

					</li>
				</c:forEach>
			</ol>
		</div>
	</div>

</body>
</html>