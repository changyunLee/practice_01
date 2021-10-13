<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  ${reply.rno} 번 댓글 수정
</button>
 <form id="modify" name="boardinfo">
<input type="hidden" name="bnum" value="" /><br />
</form>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">댓글 수정</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
			댓글 수정
      </div>
      <div class="modal-footer">
      <form action="updateReply.do" method="post">
      <input type="hidden" name="rno" value="${reply.rno }"/>
      <input type="text"  class="form-control"  name="content"  style="height:100px"/>
      <input type="submit" class="btn btn-primary" value="수정하기" />
      </form>
      <button type="button" class="btn btn-secondary" data-dismiss="modal">취소하기</button>
      	
       	
       	<a href="home.do">목록으로 돌아가기</a>
      </div>
    </div>
  </div>
</div>
<!------------------------------------------------------------------------------------------------------------------------------------------------->
</body>
</html>