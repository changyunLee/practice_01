<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
function list(){
	$.ajax({
	url:"/user_ajax.do",
	type:"GET",
	dataType:"JSON",
	success:function(result){
		console.log(result);
		console.log(result.id);
		var id = result.id;
		if(id.substring(0,10) == "IamManager"){
			var html1 = "<a href = '/user_list.do'><button class='btn btn-secondary btn-lg btn-block' type='button'>회원 리스트</button><a>"
			var	html2 = "<a href = '/manager_home'><button class='btn btn-secondary btn-lg btn-block' type='button'>메인 홈페이지</button><a>"
				$("#user").append(html1)		
				$("#user2").append(html2)
			}
		else{
			var html3 = "<a href = '/user_home.do'><button class='btn btn-secondary btn-lg btn-block' type='button'>메인 홈페이지</button><a>"
				$("#user3").append(html3)
		}
		}
	})
}
$(function(){
	list()
})
</script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">


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
        <!-- Custom styles for this template -->
    <link href="/css/join.css" rel="stylesheet">
    </style>
</head>
<body class="bg-light">

        <div class="container">
            <div class="py-5 text-center">
                <img class="d-block mx-auto mb-4" src="../resources/js/icon1.png" alt="" width="72" height="72">
                <h2>UserInfo</h2>
                <br>
                <br>
           
            <!-- <div class="py-5 text-center">
                <h4>기존 회원정보</h4> -->

                <a href="/user_myinfo.do?user_id=${id}"><button class="btn btn-secondary btn-lg btn-block" type="button">내 정보 확인하기</button></a> <br />
                <div id="user"></div><br />
                <div id="user2"></div>
				<div id="user3"></div>
				 <br />
				<hr>
                <a href="/user_delete.do?user_id=${id}"><button class="btn btn-secondary btn-lg btn-block" type="button">탈퇴(즉시탈퇴)</button></a> <br />
</body>
</html>