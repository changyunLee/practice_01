	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file ="../bbs/header.jsp" %>
<%@ include file ="../bbs/nav.jsp" %>

<form action="withdraw.do" method="post">
<div>
<fieldset>
  <legend>출금하기</legend>
    <label for="balance">출금 금액:</label>
<input type="text" name="balance"  class="form-control"/>
  <label for="account_no">출금할 계좌번호:</label>
<input type="text" name="account_no"  class="form-control"/>
  <label for="password">비밀번호:</label>
<input type="password" name="password"  class="form-control"/>

<input type="submit" value="출금하기" class="form-control" onclick="alert('출금되었습니다.')"/>
</fieldset>
</div>
</form>



<%@ include file ="../bbs/footer.jsp" %>
</body>
</html>