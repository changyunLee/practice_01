<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogIn Page</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<%@ include file ="../bbs/header.jsp" %>
<%@ include file ="../bbs/nav2.jsp" %>
	<div class="container">

		<h2>계좌 로그인</h2>
		<div class="form-horizontal">
			<form method="post" action="login_action.do" class="form-horizontal">
				<div class="form-group">

					<label class="control-label col-sm-2" for="text">계좌번호:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" 
							 name="account_no" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Password:</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" 
							name="password"  />
					</div>
				<hr />
				
				
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" class="btn btn-default" value="로그인" onclick="alert('Hi')"/>
						</div>
					</div>
				</div>
			</form>

		</div>
	</div>
	<hr />

	<form method="get" action="account_input.do" class="form-horizontal">
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" class="btn btn-default" value="계좌회원가입" />
			</div>
		</div>
	</form>

<%@ include file ="../bbs/footer.jsp" %>
</body>
</html>