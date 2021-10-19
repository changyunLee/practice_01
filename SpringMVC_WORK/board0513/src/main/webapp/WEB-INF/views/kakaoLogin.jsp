<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>
    <a href="javascript:kakaoLogin();"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFQOJtNpYFKTS1T5QdhIDFFgLzQO93BuFjFw&usqp=CAU" /></a>
    <a href="javascript:kakaoLogout()">카카오 로그아웃</a>
    <script>
        //316e09adcb8c6b0ca831d8169c4e67c2    
        window.Kakao.init('316e09adcb8c6b0ca831d8169c4e67c2');
       
        function kakaoLogin() {
            window.Kakao.Auth.login({
                success: (authObj) => {
                    console.log(authObj);
                  
                 Kakao.API.request({
                    url: '/v2/user/me',
                    success : function(res){
                        console.log(res);
                        var id = res.kakao_account.email;
                        console.log(id);
                        
                       function tt() {
                    	   $("#tt").append(id);
                       }

                    }
                 });
                },
                fail :(err) =>{
                    console.error(err);
                },
            });
        }

        function kakaoLogout() {
            if(Kakao.Auth.getAccessToken()) {
                console.log('카카오 인증 엑세스 토큰이 존재합니다.',Kakao.Auth.getAccessToken())
                Kakao.Auth.logout(()=>{
                    console.log('로그아웃 되셨습니다.',Kakao.Auth.getAccessToken());
                });
            }
        }
    </script>
	<div>
	<input type="text" id="tt" value ="tt()"/>
	
    </div>
</body>
</html>