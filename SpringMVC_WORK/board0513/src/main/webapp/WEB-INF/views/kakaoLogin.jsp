<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>
    <a href="javascript:kakaoLogin();"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFQOJtNpYFKTS1T5QdhIDFFgLzQO93BuFjFw&usqp=CAU" /></a>
    <a href="javascript:kakaoLogout()">카카오 로그아웃</a>
 	<script src="/resources/js/kakaoLogin.js"></script>
 	
    <div>
    >>  ${kakaoID }
    </div>
</body>
</html>