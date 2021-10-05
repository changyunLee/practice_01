<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <title>자취맨 :: 내 정보</title>

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
    <link href="/css/join.css" rel="stylesheet">
</head>
<body class="bg-light">

        <div class="container">
            <div class="py-5 text-center">
                <img class="d-block mx-auto mb-4" src="../resources/js/icon1.png" alt="" width="72" height="72">
                <h2>내 정보</h2>
                
           
            <div class="py-5 text-center">
                
                 <!-- 아이디 입력 수정 -->
                        <div >                          
							<label for="userId text-left">아이디</label>
							<input type="text" name="user_id" value="${vo.user_id }" class="form-control" readonly="readonly" style="text-align:center">                        
                 <!-- 비밀번호 입력 수정 -->
                         <div class="mb-8">
                             <label for="userPassowrd">비밀번호</label>
                             <input type="text" name="user_pw" value="${vo.user_pw }" readonly="readonly" class="form-control" style="text-align:center">
                 
                <!-- 이름 입력 수정-->
                         <div class="mb-3">
                             <label for="userName">이름</label>
                             <input type="text" name="user_pw" value="${vo.user_name }" readonly="readonly"  class="form-control" id="userName" style="text-align:center">

                 <!-- 나이 입력 수정-->
                         <div class="mb-3">
                            <label for="userAge">나이</label>
                            <input type="text" name="user_pw" value="${vo.user_age }" readonly="readonly"  class="form-control" id="userAge" style="text-align:center">
                            

                 <!-- 이메일 입력 수정 -->       
                        <div class="mb-3">
                            <label for="userEmail">Email</label>
                             <input type="email" name="user_pw" value="${vo.user_email }" readonly="readonly"  class="form-control" id="userEmail" style="text-align:center">
                              
                            </div>

                <hr class="mb-4">
                        <a href="/user_update.do?user_id=${vo.user_id }"><button class="btn btn-secondary btn-lg btn-block" type="submit">내 정보 수정하기</button></a><br />
                        <a href="/user_home.do"><button class="btn btn-secondary btn-lg btn-block" type="button">메인 페이지</button></a>
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


<!--         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" -->
<!--             integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" -->
<!--             crossorigin="anonymous"></script> -->
<!--         <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" -->
<!--             integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" -->
<!--             crossorigin="anonymous"></script> -->


    </body>
</html>