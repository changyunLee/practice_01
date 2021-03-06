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

<script type="text/javascript"  src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function login() {
		$.ajax({
			url : "loginj.do",
			method : "POST",
			data : $("#login").serialize(),
			dataType : "JSON",
			success : function(result) {
				var vo = result.result;
				// msg 가없으면 오류가 없음 즉 로그인 성공 
				if (vo.msg != null) {
					alert(vo.msg);
				} else {
					console.log(result);
					alert("안녕하세요 회원님");
					location.href = "home.do";
				}
			}
		});
	}
	/* function sslogin() {
		$.ajax({
			url : "kakaoLogin.do",
			method : "POST",
			data : $("#sslogin").serialize(),
			dataType : "JSON",
			success : function(result) {
				console.log(result);
				location.href="redirect:login.do";
				var rs = result.result;
				if(rs == 0 ){
					console.log("아이디 없음 회원가입 해야함")
					//location.href = "/joinus.do";
				}else if(rs > 0){
					console.log("아이디 있음 로그인 가능");
					location.href ="/home.do";
					
				}
			}
		});
	} */
</script>
</head>
<body class="bg-primary">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">Login</h3>
								</div>
								<div class="card-body">
									<form id="login">
										<div class="form-floating mb-3">
											<input class="form-control" id="inputEmail" type="text" name="userid" placeholder="ID"/> 
											<label for="inputEmail">ID </label>
										</div>
										<div class="form-floating mb-3">
											<input class="form-control" id="inputPassword" name="userpass"
												type="password" placeholder="Password" /> <label
												for="inputPassword">Password</label>
										</div>
							
								
									</form>
									
									<button type="button" id="submit" onclick="login()" class="btn btn-primary">로그인</button>
									<button type="button"  onclick="location.href='joinus.do'" class="btn btn-primary">회원가입</button>
									<div>
									
								 		<a href="javascript:kakaoLogin();" ><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFQOJtNpYFKTS1T5QdhIDFFgLzQO93BuFjFw&usqp=CAU" /></a>
										<a href="javascript:kakaoLogout()">카카오 로그아웃</a>
										<div>
									
										</div>
									</div>
								</div>						
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	
	</div>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="/resources/js/kakaoLogin.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="/resources/js/scripts.js"></script>
	
</body>
</html>
