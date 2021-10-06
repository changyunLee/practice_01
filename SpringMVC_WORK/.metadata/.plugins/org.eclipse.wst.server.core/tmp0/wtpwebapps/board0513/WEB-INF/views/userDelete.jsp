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

<title>userDelete</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

function userDel(){
 		$.ajax({
	
			url:"userdeleteJ.do",
			type: "POST",
			dataType: "JSON",
			data : $("#del").serialize(),
			success: function(result) {
				console.log(result);
				alert("삭제 완료");
				location.href="login.do";
					}
				});
 		
			}



</script>
</head>
<body>
  <div class="container">
  <div>
  <h2>회원 탈퇴</h2>
  </div>
	<form id="del">
	<div class="form-group">
		<input class="form-control" type="text" name="userid" value="${id}" } readonly /><br />
		<input class="form-control" type="text" name="userpass" placeholder="password ..." }  />
	</div>
	</form>
		<button class="btn btn-warning" type="button" id="submit" onclick="userDel()">회원 삭제</button>
  </div>
</body>
</html>