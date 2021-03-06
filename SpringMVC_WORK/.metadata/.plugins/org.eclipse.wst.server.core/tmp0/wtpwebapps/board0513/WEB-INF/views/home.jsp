<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title></title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="/resources/css/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>

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
					//html += "<td>" + list[i].bcontent + "</td>"
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
<body class="sb-nav-fixed">

	<!-- nav바 -->
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="/home.do">게시판 커뮤니티</a>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>


				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#!">${id }님
							안녕하세요.</a></li>

					<li><hr class="dropdown-divider" /></li>
					<li><a class="dropdown-item" href="/logout.do">Logout</a></li>
					<li><a class="dropdown-item" href="userUpdate.do">회원정보수정</a></li>
				</ul></li>
		</ul>
	</nav>
	<!-- nav바 -->

	<!-- 사이드nav바 -->
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">MENU</div>
						<a class="nav-link" href="home.do">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> HOME
						</a>
						<div class="sb-sidenav-menu-heading">MENU</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> link
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="insert.do">새글작성</a>
							</nav>
						</div>


						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseAuth" aria-expanded="false"
									aria-controls="pagesCollapseAuth"> Authentication
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a> <a class="nav-link collapsed" href="#"
									data-bs-toggle="collapse" data-bs-target="#pagesCollapseError"
									aria-expanded="false" aria-controls="pagesCollapseError">
									Error
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>

							</nav>
						</div>
						<!-- 사이드nav바 -->

						<a class="nav-link" href="home.do">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> Tables
						</a>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">창윤코딩교실</div>
					게시판 커뮤니티
				</div>
			</nav>
		</div>
		
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">Tables</li>
					</ol>


					<div>
						<div>
							<fieldset>

								<select id="type">
									<option value="title">제목</option>
									<option value="writer">저자</option>
									<option value="bcontent">내용</option>
									<option value="bdate">날짜</option>
								</select>
						</div>
						<div>
							<div>
								<label>검색</label> <input id="keyword" class="form-control"
									type="text" placeholder="Search for..."
									aria-label="Search for..." aria-describedby="btnNavbarSearch" />
								<button type="button" onclick="list(1)">검색</button>
								<button type="button" onclick="location.href='insert.do'">새글작성</button>
							</div>
						</div>

						</fieldset>
					</div>

					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table me-1"></i> 글목록
						</div>
						<div class="card-body">
							<table id="datatablesSimple" border="1" width="70%">
								<thead>
									<tr>
										<td>글번호</td>
										<td>제목</td>
										<td>작성자</td>
										<td>작성일</td>
										<td>조회</td>							
										<td>분류</td>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<td>글번호</td>
										<td>제목</td>
										<td>작성자</td>
										<td>작성일</td>
										<td>조회</td>									
										<td>분류</td>
									</tr>
								</tfoot>
								<tbody id="tbody"></tbody>
							</table>
							<div id="paging"></div>
						</div>
					</div>
				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
					
						<div>
							<a href="https://youtube.com/">youtube</a> &middot; <a
								href="https://naver.com/"> NAVER</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="/resources/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
<!-- 	<script src="/resources/js/datatables-simple-demo.js"></script>  -->
</body>
</html>
