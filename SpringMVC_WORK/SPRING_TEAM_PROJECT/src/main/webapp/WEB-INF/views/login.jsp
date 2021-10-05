<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" 
integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<title>자취맨 :: 로그인</title>
<style>
body {
  height: 100%;
}

body {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #f5f5f5;
}

.form-signin {
  width: 100%;
  max-width: 330px;
  padding: 15px;
  margin: auto;
}
.form-signin .checkbox {
  font-weight: 400;
}
.form-signin .form-control {
  position: relative;
  box-sizing: border-box;
  height: auto;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
        .bd-placeholder-img {
          font-size: 1.125rem;
          text-anchor: middle;
          -webkit-user-select: none;
          -moz-user-select: none;
          -ms-user-select: none;
          user-select: none;
        }
  
        @media (min-width: 768px) {
          .bd-placeholder-img-lg {
            font-size: 3.5rem;
          }
        }
         <link href="WebContent/resources/css/signin.css" rel="stylesheet">
      </style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
function login(){	
	$.ajax({
		url:"/login_ajax.do",
		type:"POST",
		data:$("#form-signin").serialize(),
		dataType:"JSON",
		success:function(result){
			var vo = result.result;
			// msg 가없으면 오류가 없음 즉 로그인 성공 
			if(vo.msg != null){
				alert(vo.msg);
			}else{
				//여기는 로그인 성공 admin 확인하기
				// 비밀번호는 이미 bd에서 확인함 
				if(vo.user_id.substring(0,10) == "IamManager"){
					alert("안녕하세요 관리자님");
					location.href="manager_home.do";
				}else{
					alert("안녕하세요 회원님");
					location.href="user_home.do";
				}
			}
		}
	})
}
</script>
</head>
<body class="text-center">
<form class="form-signin" id="form-signin">
      <img class="mb-4" src="../resources/js/icon1.png" alt="이미지" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">로그인하기</h1>
      <label for="inputEmail" class="sr-only">email adress</label>
      <input type="text" id="inputEmail" class="form-control" name="user_id" placeholder="ID 입력" required autofocus>
      <label for="inputPassword" class="sr-only">password</label>
      <input type="password" id="inputPassword" class="form-control"name="user_pw" placeholder="비밀번호 입력" required>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> 아이디 저장하기
        </label>
      </div>
      <button class="btn btn-lg btn-secondary btn-block" type="button" onclick="login()" >로그인</button><hr />
      <a href="/user_join.do"><button class="btn btn-lg btn-secondary btn-block" type="button">회원가입</button></a>
      <p class="mt-5 mb-3 text-muted">&copy; 2021 CookingMan.</p>
    </form>

<!--     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
<!--     <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script> -->
</body>
</html>
