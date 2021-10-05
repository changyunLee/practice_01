<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Account</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file ="../bbs/header.jsp" %>
<%@ include file ="../bbs/nav.jsp" %>
<%
	String account_no=(String)session.getAttribute("account_no");
	String name=(String)session.getAttribute("name");
    int balance=(Integer)session.getAttribute("balance");
	
	%>
	<h3>계좌정보</h3>
<table border="1" class="table">
<tr>
	<td>이름</td>
	<td><%out.println(name+"<br />");%></td>
</tr>
<tr>
	<td>계좌번호</td>
	<td><%out.println(account_no+"<br />"); %></td>
</tr>
<tr>
	<td>잔액 확인</td>
	<td><%out.println(balance+"<br />"); %></td>
	
</tr>
</table>
<form action="inout.do" method="get">
<input type="submit"  value="입출금목록"  class="form-control"/>
</form>
<br />
<hr />



<%@ include file ="../bbs/footer.jsp" %>
</body>
</html>