<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"  src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
			 function sslogin() {
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
						location.href = "/joinus.do";
						//회원가입 창 넘어 갈 시 seesion 에 저장한 값을 가지고 id 만들기 하기~
					}else if(rs > 0){
						console.log("아이디 있음 로그인 가능");
						location.href ="/home.do";
						
					}
				}
			});
			} 
</script>

</head>
<body>
소셜로그인
			<form id="sslogin">
			<input type="text" name="userid" value="${ssID}"  />
			</form>
			<button type="button" onclick="sslogin()">로그인</button>
</body>
</html>