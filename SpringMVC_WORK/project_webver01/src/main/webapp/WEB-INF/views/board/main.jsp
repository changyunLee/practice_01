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
table#tb {
text-align: center;
}
</style>
</head>
<body>

	
<%@ include file ="../bbs/header.jsp" %>
<%@ include file ="../bbs/nav.jsp" %>

	
	<table border="2" class="table"	 id="tb">
	<tr><td><%
	String name=(String)session.getAttribute("name");
	out.println(name+"님 안녕하세요<br />");
	out.println("<a href='logout.do'>로그아웃</a>");
	%></td></tr>
	</table>
	<form action="list_menu.do" method="get">

	<input type="submit" value="MY ACCOUNT" class="form-control">
	</form>
	
	
	
<%@ include file ="../bbs/footer.jsp" %>
</body>
</html>