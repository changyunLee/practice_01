<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="userUpdate.do" method="post">
<input type="text" name = "userid"  value="${id }" readonly/>	
<input type="text" name = "userpass"  placeholder="userPassword ....." />	
<input type="text" name = "username"  placeholder="userName...." />	
<input type="submit" value="회원정보수정"/>
</form>

<button type="button" onclick="location.href='userdelete.do'">회원탈퇴</button>
</body>
</html>