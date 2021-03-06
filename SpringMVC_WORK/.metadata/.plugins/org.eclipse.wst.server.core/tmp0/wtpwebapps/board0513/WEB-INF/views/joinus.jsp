<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title></title>
<link href="/resources/css/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script type="text/javascript">

	$(document).ready(function() {
		//취소
		$("#cancle").on("click", function() {

			location.href = "/";
		})

		$("#submit").on("click", function() {
			if ($("#userid").val() == "") {
				alert("아이디를 입력 해주세요");
				$("#userid").focus();
				return false;
			}
			if ($("#userpass").val() == "") {
				alert("비밀번호를 입력 해주세요");
				$("#userpass").focus();
				return false;
			}
			if ($("#username").val() == "") {
				alert("이름을 입력 해주세요");
				$("#username").focus();
				return false;
			}

		});
	})

	function joinus() {

		$.ajax({
			url : "joinusJ.do",
			method : "POST",
			data : $("#joinus").serialize(),
			dataType : "JSON",
			success : function(i) {
		
					console.log(i);
					
					alert(i.msg);
					
					if(i.result == 1){
					location.href = "login.do";
					}else{
						location.href = "joinus.do";
					}
				}
				
					
				
		});
		
	}
</script>
</head>
<body class="bg-primary">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-7">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">Create
										Account</h3>
								</div>
								<div class="card-body">
									<form id="joinus">
										<div class="row mb-3">
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input class="form-control" type="text" name="userid" id="userid"
														placeholder="Enter your first name" /> <label>ID</label>
														
												</div>
											</div>
										</div>
										<div class="form-floating mb-3">
											<input class="form-control" type="text" name="username" id="username"
												placeholder="name@example.com" /> <label>NAME</label>
										</div>
										<div class="row mb-3">
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input class="form-control" name="userpass" type="password" id="userpass"
													placeholder="Create a password" />
													<label>Password</label>
												</div>
											</div>
										</div>

									</form>
									<div class="mt-4 mb-0">
										<div class="d-grid">
											<button  class="btn btn-primary" type="button" id="submit" onclick="joinus()">계정생성</button>
										</div>
									</div>
								</div>
								<div class="card-footer text-center py-3">
									<div class="small">
										<a href="login.do">계정이 있으신가요? 로그인 하러 가기</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="/resources/js/scripts.js"></script>
</body>
</html>
