<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>요리 리스트 삭제 페이지</h1>
<form action="/cookDelete.do" method="post">
<input type="hidden" name="c_num" values="${vo.c_num }" />
<h2>${vo.c_num }을(를) 정말로 삭제하시겠습니까?</h2>

<button type="submit">삭제</button>
<a href="/cookList.do">리스트</a>
</form>
</body>
</html>