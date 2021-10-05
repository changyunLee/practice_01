<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
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
<style>
    table {
      width: 100%;
      border-top: 1px solid #444444;
      border-collapse: collapse;
    }
    th, td {
      border-bottom: 1px solid #444444;
      padding: 10px;
    }
    #paging {
	display:inline-block;
}
	#test_btn1{ 
		border-top-left-radius: 5px; 
		border-bottom-left-radius: 5px; 
		border-top-right-radius: 5px; 
		border-bottom-right-radius: 5px; 
		margin-right:-2px; 
		
	} 
	#test_btn2{ 

	border :0;
	outline :0;	
	} 
	#test_btn3{ 

	border :0;
	outline :0;	
	} 
#btn_group button{ 
 	background-color: rgba(0,0,0,0);  
	color: skyblue; 
	border :0;
	outline :0;	
	}
  </style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
function list(nowPage){
	$.ajax({
		url:"/user_list_ajax.do",
		type:"GET",
		data:{page:nowPage , type:$("#type option:selected").val(), keyword:$("#keyword").val()},
		dataType:"JSON",
		success:function(result){
			console.log(result);
			$("#tbody").empty();
			$("#paging").empty();
			var list = result.list;
			for(var i = 0; i < list.length; i++){
				var html = "<tr>"
					html += "<td>"+list[i].user_num+"</td>"
					html += "<td>"+list[i].user_id+"</td>"
					html += "<td>"+list[i].user_pw+"</td>"
					html += "<td>"+list[i].user_name+"</td>"
					html += "<td>"+list[i].user_age+"</td>"
					html += "<td>"+list[i].user_email+"</td>"
					html += "<td><a href ='/user_List_delete.do?user_id="+list[i].user_id+"'>강제 즉시탈퇴</td>"
					html += "<td><a href ='/user_modify.do?user_id="+list[i].user_id+"'>강제 수정</td>"
					html += "</tr>"
					$("#tbody").append(html)
			}
			if(result.prev){
				$("#paging").append("<button id = 'test_btn3' onclick = 'list("+Number(nowPage-1)+")'>이전</button>");			
			}for(var i = result.startPage; i <= result.endPage; i++){
				$("#paging").append("<button  id = 'test_btn1' onclick = 'list("+i+")'>"+i+"</button>");
			}if(result.next){
				$("#paging").append("<button id = 'test_btn2' onclick = 'list("+Number(nowPage+1)+")'>다음</button>");
			}
		}
		
	})
}
$(function(){
	list(1)
})
</script>
</head>
<body>
<body class="bg-light">

        <div class="container">
            <div class="py-5 text-center">
                <img class="d-block mx-auto mb-4" src="../resources/js/icon1.png" alt="" width="72" height="72">
                <h2>User List</h2>


		<label>검색</label>
			<select id="type">
				<option value="user_id">아이디</option>
				<option value="user_name">이름</option>
			</select>
			
		<label>검색</label>
		<input type="text" id="keyword" />
		<button type="button" onclick = "list(1)">검색</button>


<table>
	<table width = "70%">
                    <tr>
                        <td class="mx-5 text-left">회원 번호</td>
                        <td class="mx-5 text-left">아이디</td>
                        <td class="mx-5 text-left">비밀번호</td>
                        <td class="mx-5 text-left">이름</td>
                        <td class="mx-5 text-left">나이</td>
                        <td class="mx-5 text-left">이메일</td>
                        <td class="mx-5 text-left">    </td>
                        <td class="mx-5 text-left">    </td>
                       
                    </tr>
	<tbody id="tbody"></tbody>

</table>
<div id="btn_group">
<div id="paging"></div>
</div>
			<hr class="mb-4">
                <a href="/user.do"><button class="btn btn-secondary btn-lg btn-block" type="button">메인 페이지</button></a>
                        
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
