<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <title>자취맨 :: 상세보기</title>

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
                <h2>상세한 내용</h2>
<div class="py-5 text-center">
                
                        <div >                          
							<label for="">글 번호</label>
							<input type="text" name="c_num" value="${vo.c_num }" class="form-control" readonly="readonly" style="text-align:center">                        

                         <div class="mb-8">
                             <label for="">제목</label>
                             <input type="text" name="c_title" value="${vo.c_title }" readonly="readonly" class="form-control" style="text-align:center">
                 
                         <div class="mb-3">
                             <label for="">내용</label>
                            <textarea rows="20" cols="20" class="form-control" readonly="readonly">${vo.c_content }</textarea>

                         <div class="mb-3">
                            <label for="">작성일</label>
                             <input type="text" name="c_date" value="${vo.c_date }" readonly="readonly"  class="form-control" style="text-align:center">
                            

                        <div class="mb-3">
                            <label for="">작성자</label>
                             <input type="text" name="c_writer" value="${vo.c_writer }" readonly="readonly"  class="form-control" style="text-align:center">

                        <div class="mb-3">
                            <label for="">조회수</label>
                             <input type="email" name="c_cnt" value="${vo.c_cnt }" readonly="readonly"  class="form-control" style="text-align:center">
                              
                            </div>


<c:if test="${vo.c_writer eq id}">
<a href="/cookUpdate.do?c_num=${vo.c_num }"><button class="btn btn-secondary btn-lg btn-block" type="button">수정 페이지</button></a> <br />
<a href="/cookDelete.do?c_num=${vo.c_num }"><button class="btn btn-secondary btn-lg btn-block" type="button">글 즉시 삭제</button></a> <br />
</c:if>
<a href="/cookList.do"><button class="btn btn-secondary btn-lg btn-block" type="button">메인 페이지</button></a>
</body>
</html>