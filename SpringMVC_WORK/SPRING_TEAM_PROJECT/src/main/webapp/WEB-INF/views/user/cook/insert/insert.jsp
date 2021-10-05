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
<div class="container">

        <div class="py-5 text-center">
                <img class="d-block mx-auto mb-4" src="../resources/js/icon1.png" alt="" width="72" height="72">
                <h2>레시피</h2>
                
	<form action="/cookInsert.do" method="POST">
	
			 <div >
                    <label for="c_num text-left">글 번호
                    <input type="text" name="c_num" class="form-control" value="${max }" style="text-align: center;" readonly="readonly"></label>
                
                    <div class="mb-3">
                        <label for="c_writer">글쓴이
                        <input type="text" class="form-control" name="c_writer" value="${id}" readonly="readonly"style="text-align: center;"> </label> 
                        <div >
                            <label for="c_title">제목</label>
                            <input type="text" name="c_title" class="form-control" style="text-align: center;">
                        

                         <div class="mb-8">
                             <label for="c_content">내용</label>
                             <textarea type="text" name="c_content" rows="20" cols="20"class="form-control"></textarea>


                <hr class="mb-4">
                        <button class="btn btn-secondary btn-lg btn-block" type="submit">레시피 등록</button><br />
  </form>
                        <a href="/cookList.do"><button class="btn btn-secondary btn-lg btn-block" type="button">등록 취소</button></a>
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