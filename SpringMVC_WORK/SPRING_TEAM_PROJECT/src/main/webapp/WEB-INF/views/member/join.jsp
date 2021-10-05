<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <title>자취맨 :: 회원가입</title>

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
        .container {
  max-width: 960px;
}

.lh-condensed { line-height: 1.25; }
    </style>


    <!-- Custom styles for this template -->
    <link href="../resources/css/join.css" rel="stylesheet">
    
    <script src="https://code.jquery.com/jquery-2.2.1.js"></script>
    <script type ="text/javascript"> //자바 스크립트를 불러온다
    
    window.onload = function (){

    	$('#joinCheck').on('click' , function(){
    		joinCheck(); 
    		$.ajax({
    			data : $("#joinForm").serialize(),
    			type : "POST",
    			url : "join.do",
    			success : function (){
    				alert("회원가입이 완료되었습니다.");
    			},
    			error : function (){
    				
    			}
    		})
    	});
    	function joinCheck(){
    		  
            var objName = document.getElementById("userName");//이름 id
            var regname = /^[가-힣]{2,}$/; //이름에 사용할 정규 표현식
     
            if(!IdPwCheck()){ //아이디 비밀번호 검사
                return false;
            }else if(!EmailCheck()){ //이메일 검사
                return false;
            }else if(!regname.test(objName.value)){ //이름 검사
                alert("이름을 잘못 입력하셨습니다.");
                return false;
            }else{ //유효성 검사 완료시 회원가입 진행
                alert("회원가입이 완료되었습니다.");
                location.href = "/login.do";
                return true;
            }
        }
         
        function IdPwCheck(){
            var objId = document.getElementById("userid"); //아이디 id
            var objPw = document.getElementById("userpw"); //비밀번호 id
            var objName = document.getElementById("userName"); //이름 id
            var objPwCheck = document.getElementById("userpwcheck"); //비밀번호확인id
            var regExp1 = /^[\w]{4,12}$/; //아이디와 비밀번호에 사용할 정규표현식
            if(objId.value == ""){ //ID가 공백일 경우 false 반환
                alert("ID를 입력해 주세요");
                 console.log('아이디'+objId);
                return false;
           }else if(!regExp1.test(objId.value)){ //아이디의 값을 검사해 true or false 반환
                alert("ID를 4~12자의 영문 대소문자와 숫자로만 입력해주세요.");
                objId.value == "";
                return false;
           }else if(objPw.value != objPwCheck.value){ //비밀번호 확인이 다를 경우 false 반환
                alert("비밀번호와 비밀번호 확인을 다시 입력해주세요.");
                return false;
            }else if(objPw.value == objId.value){ //아이디 비밀번호가 같을 경우 false 반환
                alert("아이디와 비밀번호를 다르게 만들어주세요.");
                return false; 
            }else if(objName.value==''){
            	 alert("이름을 입력하세요");
            	 return false;
            } else if(!regExp1.test(objPw.value)){ //비밀번호 정규표현식 검사
                alert("PW를 4~12자의 영문 대소문자와 숫자로만 입력해주세요.");
                return false;
            }else{
                return true;
            }
        } //Id/Pw 검사 end

        function EmailCheck(){ //이메일 확인 함수
            var objEmail = document.getElementById("usermail"); //usermail text 할당
             var bb = /^[\w]+@[\w]+.[\.\w]{2,5}$/; //이메일 규칙 정규표현식 /^:문자열 시작 표현 \w:영문 대소문자, 숫자 +:1회 이상 {2,5}:2번 이상 5번 이하 $/:문자열 마지막 표현 
            if(!bb.test(objEmail.value)){ //이메일 값을 정규표현식과 비교하여 true or false 반환
            alert("이메일을 다시 입력해주세요.");
            return false;
            }else{ //검사 통과시 true 반환
                return true;
            }
        } //이메일 검사 end
    	
    }
    
   
    </script>
    </head>
    <body>
	<body class="bg-light">
        <div class="container">
            <div class="py-5 text-center">
                <img class="d-block mx-auto mb-4" src="../resources/js/icon1.png" alt="" width="72" height="72">
                <h2>회원가입하기</h2>
                <p class="lead">자취맨이 되기위한 회원가입 페이지입니다. 올바른 정보를 입력부탁드립니다!</p>
           
            <div class="py-5 text-center">
            <form method="post" id="joinForm" >
                
                		<input type="hidden" name="user_num" value="${max}" readonly="readonly"/>    
                		
                <!-- 아이디 -->
                        <div class="mx-5 text-left">
                            <label for="userId text-left">아이디</label>
                            <input name="user_id" type="text" id="userId" class="form-control" placeholder="ID를 입력하세요" required>
                        

                 <!-- 비밀번호 -->
                         <div class="mb-8">
                             <label for="userPassowrd">비밀번호</label>
                             <input name="user_pw" type="password" id="userPassowrd" class="form-control" placeholder="비밀번호를 입력하세요" required>
                 
                <!-- 이름 -->
                         <div class="mb-3">
                             <label for="userName">이름</label>
                             <input name="user_name" type="text" class="form-control" id="userName" placeholder="이름을 입력하세요" required>

                 <!-- 이름 -->
                         <div class="mb-3">
                            <label for="userAge">나이</label>
                            <input name="user_age" type="text" class="form-control" id="userAge" placeholder="나이를 입력하세요" required>
                            

                 <!-- 이메일 -->       
                        <div class="mb-3">
                            <label for="userEmail">Email</label>
                             <input name="user_email" type="email" class="form-control" id="userEmail" placeholder="you@example.com">
                              
                            </div>
					
                <hr class="mb-4">
                     <button class="btn btn-secondary btn-lg btn-block" type="submit"  id="joinForm">가입하기</button> <hr />
                	 <a href="/login.do"><button class="btn btn-secondary btn-lg btn-block" type="button">가입 취소</button></a>
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
		
		</form>
		

<!--         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" -->
<!--             integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" -->
<!--             crossorigin="anonymous"></script> -->
<!--         <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" -->
<!--             integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" -->
<!--             crossorigin="anonymous"></script> -->


    </body>

</body>
 
</html>
