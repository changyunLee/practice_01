<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
#table{
font-size: large;
}
h3{
text-align: center;
}
</style>
</head>
<body>
	<%@ include file="../bbs/header.jsp"%>
	<%@ include file="../bbs/nav.jsp"%>
	<h3>계좌 입출금내역</h3>
	<%
	String account_no = (String) session.getAttribute("account_no");
	String name = (String) session.getAttribute("name");
	int balance = (Integer) session.getAttribute("balance");

	//out.println(map.get("balance"));;
	// Map map = (HashMap) request.getAttribute("map");
	// int inmoney=(Integer)session.getAttribute("inmoney");
	// int outmoney=(Integer)session.getAttribute("inmoney");
	// out.println("입금금액 : "+inmoney);
	//out.println("출금금액 : "+outmoney);
	%>
	
		<p>입금</p>
		
			<ol>
			<c:forEach var="list" items="${list}">
				<li>입금:<c:out value=" ${list }" /></li>
				</c:forEach>	
			</ol>
		<hr />
		<p>출금</p>
			<ol>
				<c:forEach var="list2" items="${list2}">
				<li>출금:<c:out value=" ${list2 }" /></li>
				</c:forEach>
			</ol>

	
	
	<hr />
	<p>
		현재 잔액 :
		<%
	out.println(balance);
	%>
	</p>

</body>

</html>