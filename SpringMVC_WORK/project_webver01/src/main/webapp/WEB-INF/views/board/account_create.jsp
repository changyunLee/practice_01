<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>

</style>
</head>
<body>
<%@ include file ="../bbs/header.jsp" %>
<%@ include file ="../bbs/nav2.jsp" %>

	<h3>계좌 회원가입</h3>
	<div>
	<form action="input.do" method="post">
		<table border="1" class="table">
			<tr>
				<td>비밀번호 : <input type="text" name="password" value="비밀번호" class="form-control" /><br /></td>
			</tr>
			<tr>
				<td>이름 : <input type="text" name="name" value="이름"  class="form-control"/><br /></td>
			</tr>
			<tr>
				<td>최초입금금액 : <input type="text" name="balance"
					value="최소 입금금액 : 1000원" class="form-control"/><br /></td>
			</tr>
			<tr>
			<td><input type="submit" value="가입하기" class="btn btn-default" /></td>
			</tr>
	</table>
	
	</form>
	</div>


<%@ include file ="../bbs/footer.jsp" %>
</body>
</html>