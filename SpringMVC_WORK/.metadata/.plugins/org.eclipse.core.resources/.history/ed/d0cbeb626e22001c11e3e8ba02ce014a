<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function list(page) {
		$.ajax({
			url : "/list.do",
			type : "GET",
			data : {
				page : page,
				type : $("#type option:selected").val(),
				keyword : $("#keyword").val()
			},
			dataType : "JSON",

			success : function(result) {
				console.log(result.list);
				$("#tbody").empty();
				$("#paging").empty();
				var list = result.list;
				for (var i = 0; i < list.length; i++) {
					var html = "<tr>"
					html += "<td>" + list[i].bnum + "</td>"
					html += "<td><a href='detail.do?bnum=" + list[i].bnum
							+ "'>" + list[i].title + "</a></td>"
					html += "<td>" + list[i].writer + "</td>"
					html += "<td>" + list[i].bdate + "</td>"
					html += "<td>" + list[i].bcnt + "</td>"
					html += "<td>" + list[i].bcontent + "</td>"
					html += "<td>" + list[i].btype + "</td>"
					$("#tbody").append(html)
				}
				if (result.prev) {
					$("#paging").append(
							"<button onclick=list(" + Number(page - 1)
									+ ")>이전</button>");
				}
				for (var i = result.startPage; i <= result.endPage; i++) {
					$("#paging").append(
							"<button onclick=list(" + i + ")>" + i
									+ "</button>")
				}
				if (result.next) {
					$("#paging").append(
							"<button onclick=list(" + Number(page + 1)
									+ ")>다음</button>");
				}
			}
		})

	}

	$(function() {
		list(1)
	})
</script>
</head>
<body>

	<div class="container">
		<h1>게시판 연습</h1>

 <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>

		${member.userid }님 안녕하세요.
		<button type="button" onclick="location.href='logout.do'">로그아웃</button>

		<div >
			<div >
				<fieldset>
					<legend>검색</legend>
					<select id="type" >
						<option value="title">제목</option>
						<option value="writer">저자</option>
						<option value="bcontent">내용</option>
						<option value="bdate">날짜</option>
					</select>
			</div>
			<div >
				<div >
					<label>검색</label> 
					<input id="keyword" class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
					<button type="button" onclick="list(1)">검색</button>
					<button type="button" onclick="location.href='insert.do'">새글작성</button>
				</div>
			</div>

			</fieldset>
		</div>
		<table border="1" width="70%" >
			<tr>
				<td>글번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회</td>
				<td>내용</td>
				<td>분류</td>
			</tr>
			<tbody id="tbody"></tbody>
		</table>
		<div id="paging"></div>


	</div>
</body>
</html>