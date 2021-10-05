<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <title>자취맨 :: 회원정보수정</title>

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
                <h2>회원정보 수정하기</h2>
                
           
            <div class="py-5 text-center">
                <h4>기존 회원정보</h4>

                
                <form action="/user_modify.do" method="POST">
                 <!-- 아이디 입력 수정 -->
<%--                  <input type="hidden" name="user_id" value="${vo.user_id }" readonly="readonly" /> --%>
                 <input type="hidden" name="user_num" value="${vo.user_num}" readonly="readonly" />
                        <div class="mx-5 text-left">
                            <label for="userId text-left">아이디</label>
                            <input type="text" id="userId" class="form-control" name="user_id" value="${vo.user_id }" readonly="readonly">
                        

                 <!-- 비밀번호 입력 수정 -->
                         <div class="mb-8">
                             <label for="userPassowrd">비밀번호</label>
                             <input type="password" id="userPassowrd" class="form-control" name="user_pw">
                 
                <!-- 이름 입력 수정-->
                         <div class="mb-3">
                             <label for="userName">이름</label>
                             <input type="text" class="form-control" id="userName" name="user_name">

                 <!-- 나이 입력 수정-->
                         <div class="mb-3">
                            <label for="userAge">나이</label>
                            <input type="text" class="form-control" id="userAge" name="user_age">
                            

                 <!-- 이메일 입력 수정 -->       
                        <div class="mb-3">
                            <label for="userEmail">Email</label>
                             <input type="email" class="form-control" id="userEmail" value="${vo.user_email }" name="user_email">
                              
                            </div>


                <hr class="mb-4">
                        <button class="btn btn-secondary btn-lg btn-block" type="submit">정보 수정하기</button>	<hr />
            </div>
                        <a href="/user_list.do"><button class="btn btn-secondary btn-lg btn-block" type="button">취소하고 돌아가기</button></a>
        </div>
		</form>
        <footer class="my-5 pt-5 text-muted text-center text-small">
            <p class="mb-1">&copy; 2021 CookingMan</p>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="#">개인정보처리방침</a></li>
                <li class="list-inline-item"><a href="#">이용약관</a></li>
                <li class="list-inline-item"><a href="#">고객센터</a></li>
            </ul>
        </footer>
        </div>


<!--         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" -->
<!--             integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" -->
<!--             crossorigin="anonymous"></script> -->
<!--         <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" -->
<!--             integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" -->
<!--             crossorigin="anonymous"></script> -->



</body>
</html>