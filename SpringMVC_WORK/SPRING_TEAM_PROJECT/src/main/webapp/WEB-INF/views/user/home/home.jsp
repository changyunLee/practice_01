<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <title>자취맨 :: 메인페이지 </title>

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
      <link href="../resources/css/carousel.css" rel="stylesheet">
  </head>
  <body>
    <header>
        
        <nav class="navbar navbar-expand-md navbar-light fixed-top bg-light">
          <a class="navbar-brand" href="#">
           <img src="../resources/js/icon1.png" width="30" height="30" class="d-inline-block align-top" alt="">
           자취맨
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
<!--                 <li class="nav-item"> -->
<!--                     <a class="nav-link" href="#">About</a> -->
<!--                   </li> -->
              <li class="nav-item">
                <a class="nav-link" href="/cookList.do">자취맨's 요리</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/noticeList.do">공지사항</a>
              </li>
            </ul>
<!--             <form class="form-inline mt-2 mt-md-0"> -->
<!--               <button type="button" class="btn btn-secondary"> -->
<!--                 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16"> -->
<!--   <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/> -->
<!-- </svg> -->
<!--               </button>&nbsp; -->
<!--               <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search"> -->
<!--             </form> -->
            
            <ul class="navbar-nav mt-2 mt-md-0">
              <li class="nav-item">
                <a href="/logout.do"><button class="btn btn-outline-warning" type="submit">Logout</button>&nbsp;</a>
                <a href="/user.do"><button class="btn btn-outline-warning" type="submit">myInfo</button>&nbsp;</a>
<!--                 <button class="btn btn-outline-warning" type="submit">Join-Us</button> -->
                </li> 
              </ul>
          </div>
        </nav>
      </header>
      
      <main role="main">
      
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
<!--             <li data-target="#myCarousel" data-slide-to="2"></li> -->
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" role="img" aria-label=" :  " preserveAspectRatio="xMidYMid slice" focusable="false"><title> </title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"> </text></svg>
      			 <img class="bd-placeholder-img" src="../resources/요리하는모습.png" width="100%" height="100%" alt="">
              <div class="container">
                <div class="carousel-caption text-left">
                  <h1>오늘의 이벤트!</h1>
                  <p>자취하는 모든 사람들의 요리 꿀팁들을 한 눈에!</p>
                  <p><a class="btn btn-lg btn-warning" href="/cookList.do">게시글 보러가기!</a></p>
                </div>
              </div>
            </div>
<!--             <div class="carousel-item"> -->
<!--               <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" role="img" aria-label=" :  " preserveAspectRatio="xMidYMid slice" focusable="false"><title> </title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"> </text></svg> -->
      
<!--               <div class="container"> -->
<!--                 <div class="carousel-caption"> -->
<!--                   <h1>자취맨에게 궁금하다 Q&A</h1> -->
<!--                   <p>자취하시는 모든 분들과 함께 피드백을 주고 받고 싶습니다</p> -->
<!--                   <p><a class="btn btn-lg btn-warning" href="#">질문하러 가기!</a></p> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
            <div class="carousel-item">
              <svg class="bd-placeholder-img" width="70%" height="70%" xmlns="http://www.w3.org/2000/svg" role="img" aria-label=" :  " preserveAspectRatio="xMidYMid slice" focusable="false"><title> </title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"> </text></svg>
     			 <img class="bd-placeholder-img" src="../resources/길쭉공지2.png" width="70%" height="70%" alt="">
              <div class="container">
                <div class="carousel-caption text-right">
                  <h1>알려드릴게요!</h1>
                  <p>이 달의 중요한 공지사항을 모아모아 한 눈에!</p>
                  <p><a class="btn btn-lg btn-warning" href="/noticeList.do">공지사항 보러가기</a></p>
                </div>
              </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      
      
        <!-- Marketing messaging and featurettes
        ================================================== -->
        <!-- Wrap the rest of the page in another container to center all the content. -->
      
        <div class="container marketing">
      
          <!-- Three columns of text below the carousel -->
          <div class="row">
            <div class="col-lg-4">
<!--               <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg> -->
     				 <img class="bd-placeholder-img rounded-circle" src="../resources/피자.png" width="180" height="180" alt="">
              <h2>요리 자취맨</h2>
              <p>오늘은 남은 재료로 피자어때?</p>
              <p><a class="btn btn-secondary" href="/cookList.do">오늘 요리보러가기 &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
<!--             <div class="col-lg-4"> -->
<!--               <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg> -->
      
<!--               <h2>주간 자취맨</h2> -->
<!--               <p>주말 쉴 때 해 먹기 좋은 간편 불백!</p> -->
<!--               <p><a class="btn btn-secondary" href="#">주간 요리보러가기 &raquo;</a></p> -->
<!--             </div>/.col-lg-4 -->
			<img class="bd-placeholder-img rounded-circle" src="../resources/KakaoTalk_20210915_180938501.png" width="300" height="300" alt="">
            
            <div class="col-lg-4">
<!--               <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg> -->
      			<img class="bd-placeholder-img rounded-circle" src="../resources/공지원1.png" width="180" height="180" alt="">
              <h2>자취맨 공지</h2>
              <p>공지를 지켜주지 않으면 삭제당한다?</p>
              <p><a class="btn btn-secondary" href="/noticeList.do">공지사항 보러가기 &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
          </div><!-- /.row -->
      
      
          <!-- START THE FEATURETTES -->
      
          <hr class="featurette-divider">
      
          <div class="row featurette">
            <div class="col-md-7">
              <h2 class="featurette-heading">자취맨 With Youtube</h2>
              <p class="lead">진짜인 요리 노하우를 전수할게요! 오늘의 요리 선생님은 누구?</p>
            </div>
            <div class="col-md-5">
              <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="350" height="350" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
                <title></title><a href="https://www.youtube.com/c/paikscuisine" target='_blank'><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">누굴까요?</text></svg></a>
      
            </div>
          </div>
      
          <hr class="featurette-divider">
      
          <!-- /END THE FEATURETTES -->
      
        </div><!-- /.container -->
      
      
        <!-- FOOTER -->
        <footer class="container">
          <p class="float-right"><a href="#">맨위로</a></p>
          <p>&copy; 2017-2021 Company, Inc. &middot; <a href="#">instagram</a> &middot; <a href="#">facebook</a></p>
        </footer>
      </main>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>


  </body>
</html>
