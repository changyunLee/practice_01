<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<script type="text/javascript"  src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

	function login() {
		$.ajax({
			url:"loginj.do",
			method : "POST",
			data : $("#login").serialize(),
			dataType :"JSON",
			success : function (result){
				var vo = result.result;
				// msg 가없으면 오류가 없음 즉 로그인 성공 
				if(vo.msg != null){
					alert(vo.msg);
				}else{
					console.log(result);
					alert("안녕하세요 회원님");
					location.href="home.do";
				}
			}
		});
	}


</script>
</head>
<body>



<form id="login">
아이디 : <input type="text"  id="userid" name="userid"/>
비밀번호 :<input type="text"  id= "userpass" name="userpass" />		
</form>



<a href="login.do">홈페이지 고고 gogo</a>
<a href="joinus.do">회원가입</a>
</body>
</html>