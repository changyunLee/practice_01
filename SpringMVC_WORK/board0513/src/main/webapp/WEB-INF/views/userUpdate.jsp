<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	$("#submit").on("click", function() {
		alert("회원 수정 완료");
	}
	</script>
</head>
<body>
<div class="container">
<div>
<h2>회원정보수정</h2>
</div>
<form action="userUpdate.do" method="post" class="form-horizontal">
<div class="form-group">
<label class="col-sm-2 control-label">user Id:</label>
<div class="col-sm-10">
<input type="text" name = "userid"  value="${id }" readonly="readonly" />	
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">user Password:</label>
<div class="col-sm-10">
<input type="text" name = "userpass"  placeholder="userPassword ....." />	
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">user Name:</label>
<div class="col-sm-10">
<input type="text" name = "username"  placeholder="userName...." />	
</div>
</div>
<div>
<input type="submit" value="회원정보수정"  id="submit" class="btn btn-primary"/>
</div>
</form>
<div>
<button class="btn btn-warning" type="button" onclick="location.href='userdelete.do'" >회원탈퇴</button>
</div>
</div>
</body>
</html>