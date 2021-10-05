<%@page import="co.kr.proj.service.boardService"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function insert(){
		$.ajax({
			url:"/joinus_ajax.do",
			type:"POST",
			data:$("#insertForm").serialize(),
			dataType:"JSON",
			success:function(result){
				alert("회원가입성공");
				location.href = "/login.do";
			}
		})
	}
	
</script>
</head>
<body>

<h2>join us</h2>

<form id="insertForm">

	<input type="hidden" name="user_num" value="${max }" readonly="readonly" />
	<input name="user_id" type="text" value="아이디"/><br>
	<input name="user_pw" type="text" value="비밀번호"/><br>
	<input name="user_name" type="text" value="이름"/><br>
	<input name="user_age" type="number" value="나이"/><br>
	<input name="user_email" type="text" value="이메일"/><br>
	
</form>
	<button type="button" onclick = "insert()">가입하기</button>



</body>
</html>