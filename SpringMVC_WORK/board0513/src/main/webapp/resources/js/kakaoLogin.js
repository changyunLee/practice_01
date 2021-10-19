       //316e09adcb8c6b0ca831d8169c4e67c2    
       window.Kakao.init('316e09adcb8c6b0ca831d8169c4e67c2');
       
       function kakaoLogin() {
           window.Kakao.Auth.login({
               success: (authObj) => {
                   console.log(authObj);
                 
                Kakao.API.request({
                   url: '/v2/user/me',
                   success : function(res){
						location.href="/slogin.do";
                       var id = res.kakao_account.email;
                       console.log(id);
                       let url = '/test';
                       fetch(url+"?userid="+id)
                       .then()
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