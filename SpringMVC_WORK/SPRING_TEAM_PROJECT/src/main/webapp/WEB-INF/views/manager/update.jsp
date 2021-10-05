<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <title>자취맨 :: 요리 글 수정</title>

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
<body>
<body class="bg-light">

        <div class="container">
            <div class="py-5 text-center">
                <img class="d-block mx-auto mb-4" src="../resources/js/icon1.png" alt="" width="72" height="72">
                <h2>공지사항 수정하기</h2>
                
           
            <div class="py-5 text-center">
                <h4>기존 공지 정보</h4>
<form action="/manager_update.do" method="post">
                       

                         <div class="mb-8">
                             <label for="">글 번호</label>
                             <input type="text" name="n_num" value="${manager.n_num }" readonly="readonly" class="form-control" style="text-align: center;">
                 
                         <div class="mb-3">
                             <label for="">제목</label>
                             <input type="text" name="n_title" class="form-control" style="text-align: center;">

                         <div class="mb-3">
                            <label for="">내용</label>
                            <textarea cols="20" rows="20" type="text" name="n_content" class="form-control" ></textarea>
                            
                        <div class="mb-3">
                            <label for="">작성자</label>
                             <input class="form-control" type="text" name="n_writer" value="${manager.n_writer }" readonly="readonly" style="text-align: center;">
                              
                            </div>


                <hr class="mb-4">
                        <button class="btn btn-secondary btn-lg btn-block" type="submit">공지 수정하기</button>	<hr />
            </div>
                        <a href="/manager_list.do"><button class="btn btn-secondary btn-lg btn-block" type="button">취소하고 돌아가기</button></a>
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