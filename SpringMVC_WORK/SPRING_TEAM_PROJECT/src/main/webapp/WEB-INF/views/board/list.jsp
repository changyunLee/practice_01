<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <title>자취맨 :: 요리 게시판</title>

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
<script type="text/javascript"
src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
function list(nowPage){
	$.ajax({
		url:"listd.do",
		type:"GET",
		data:{page:nowPage, type:$("#type option:selected").val(),keyword:$("#keyword").val()},
		dataType:"JSON",
		success:function(result){
			console.log(result);
			console.log("이거 왜 안나오누");
			$("#paging").empty();
			$("#tt").empty();
			var list = result.list;
			for(var i =0; i<list.length; i++){
				var html = "<tr>"
					html +="<td>"+list[i].c_num+"</td>"
					html += "<td><a href='/cookB_detail.do?c_num="+list[i].c_num+"'>"+list[i].c_title+"</a></td>"
					html +="<td>"+list[i].c_date+"</td>"
					html +="<td>"+list[i].c_writer+"</td>"
					html +="<td>"+list[i].c_cnt+"</td>"
					html +="</tr>"
					$("#tt").append(html)
			}
			if(result.prev){
	            $("#paging").append("<button 'test_btn3' onclick = 'list("+Number(nowPage-1)+")'>이전</button>");
	            
	         }for(var i = result.startPage; i <= result.endPage; i++){
	            $("#paging").append("<button id = 'test_btn1' onclick = 'list("+i+")'>"+i+"</button>");
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
<body class="bg-light">
 <div class="container">
            <div class="py-5 text-center">
                <img class="d-block mx-auto mb-4" src="../resources/js/icon1.png" alt="" width="72" height="72">
                <h2>자취생들의 요리레시피</h2>
	
		<select  id="type">
			<option value="c_title">제목</option>
			<option value="c_writer">작성자</option>
			<option value="c_content">내용</option>
		</select>
		
		<label>검색</label>
			<input type="text" id="keyword" />
		<button type="button" onclick = "list(1)">검색</button>

	

	<table width = "70%">
		<tr>
			<th class="mx-5 text-center">번호</th>
			<th class="mx-5 text-center">제목</th>
			<th class="mx-5 text-center">날짜</th>
			<th class="mx-5 text-center">작성자</th>
			<th class="mx-5 text-center">조회수</th>
		</tr>

	<tbody id="tt"></tbody>
	</table>
	
	<div id="btn_group">
<div id="paging"></div>
</div>
	<hr class="mb-4">
                <a href="/cookB_insert.do"><button class="btn btn-secondary btn-lg btn-block" type="button">요리 레시피 쓰러가기</button></a>
           			<br />           
				<a href="/manager_home.do"><button class="btn btn-secondary btn-lg btn-block" type="button">메인 페이지</button></a>
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