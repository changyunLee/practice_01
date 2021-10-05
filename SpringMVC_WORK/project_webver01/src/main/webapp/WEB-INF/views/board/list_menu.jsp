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
	<div class="container p-3 my-3 border">
		<h1>계좌 메뉴 리스트</h1>
		<p>원하시는 서비스 선택</p>
	</div>

	<div class="container">
		<h2>MENU</h2>

		<ul class="nav flex-column">
			<li class="nav-item"><a class="nav-link">
					<form action="myaccount.do" method="get">
						<input type="submit" value="계좌정보확인" class="form-control" />
					</form>
			</a></li>
			<li class="nav-item"><a class="nav-link">
					<form action="deposit.do" method="get">
						<input type="submit" value="입금" class="form-control" />
					</form>
			</a></li>
			<li class="nav-item"><a class="nav-link">
					<form action="withdraw.do" method="get">
						<input type="submit" value="출금" class="form-control" />
					</form>
			</a></li>
			<li class="nav-item"><a class="nav-link ">
					<form action="inout.do" method="get">
						<input type="submit" value="입출금내역" class="form-control" />
					</form>
			</a></li>
		</ul>
	</div>















<%@ include file ="../bbs/footer.jsp" %>
</body>
</html>