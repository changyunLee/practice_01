<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <title>자취맨 :: 글 쓰기</title>

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="../resources/css/join.css" rel="stylesheet">

</head>
<body class="bg-light">

        <div class="container">
            <div class="py-5 text-center">
                <img class="d-block mx-auto mb-4" src="../resources/js/icon1.png" alt="" width="72" height="72">
                <h2>공지 삭제</h2>

                <form action="manager_delete.do" method="post">
                <div >
                    <label for="">글 번호
                    <input type="text" name="n_num" class="form-control" value="${manager.n_num }" style="text-align: center;" readonly="readonly"></label>
                
                    <div class="mb-3">
                        <label for="">글 제목
                        <input type="text" class="form-control" name="n_title" value="${manager.n_title }" readonly="readonly"style="text-align: center;"> </label> 
                	<br />
                	<br />
					<h6><p>정말 ${manager.n_num }번 공지사항을 삭제하시겠습니까?</p></h6>

                <hr class="mb-4">
                        <button class="btn btn-secondary btn-lg btn-block" type="submit">공지 삭제하기</button> <br />
                        </form>
                        <a href="/manager_list.do"><button class="btn btn-secondary btn-lg btn-block" type="button">삭제 취소</button></a>
            </div>
        </div>

        <footer class="my-5 pt-5 text-muted text-center text-small">
            <p class="mb-1">&copy; 2021 CookingMan</p>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="#">개인정보처리방침</a></li>
                <li class="list-inline-item"><a href="#">이용약관</a></li>
                <li class="list-inline-item"><a href="#">고객센터</a></li>
            </ul>
        </footer>
        </div>

    </body>

</html>