<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<meta charset="UTF-8">

<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function reply() {
		$.ajax({
			url : "/reply.do",
			type : "POST",
			data : $("#writereply").serialize(),
			dataType : "JSON",
			success : function(result) {
				console.log(result);
				alert("작성 완료");
				location.href = "/detail.do?bnum="+${board.bnum};
			}
		})
	}
	
	function replyDelete() {
		$.ajax({ 
		url : "replyDelete.do",
		type : "POST" , 
		data : $("#deletereply").serialize(),
		dataType : "JSON",
		success : function(result) {
			console.log(result);
			location.href = "/detail.do?bnum="+${board.bnum};
			}
		})
	}
	
	function replyUpdate() {
		$.ajax({ 
		url : "updateReply.do",
		type : "POST" , 
		data : $("#updatereply").serialize(),
		dataType : "JSON",
		success : function(result) {
			console.log(result);
			location.href = "/detail.do?bnum="+${board.bnum};
			}
		})
	}
	
</script>
</head>
<body>

	<div class="container">

		<table class="table table-striped">

			<tr>
				<th>번호</th>
				<td>${board.bnum}</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${board.title}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${board.writer}</td>
			</tr>
			<tr>
				<th>날짜</th>
				<td>${board.bdate}</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${board.bcnt}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea class="form-control" rows="5" id="bcontent" name="bcontent" readonly >${board.bcontent }</textarea></td>
			</tr>
		</table>
		
  		<c:if test="${board.writer == id }">
  		
			<button type="button" class="btn btn-warning"
				onclick="location.href='update.do?bnum=${board.bnum}'">게시글
				수정</button>
			<button type="button" class="btn btn-danger"
				onclick="location.href='delete.do?bnum=${board.bnum}'">게시글
				삭제</button>
		</c:if>
			
		<button type="button" class="btn btn-info"
			onclick="location.href='home.do'">홈으로 돌아가기</button>




<!---------------------------------------------댓글 ------------------------------------------------------------------------------->

		<table border="1" width="50%">
			<form id="writereply">
				<h3 style="text-align: center"> reply</h3>
				<input type="hidden" name="bnum" value=" ${board.bnum }" /><br />

				<div class="form-group">
					<label for="writer">writer:</label> <input type="text"
						class="form-control" id="writer" name="writer"
						value="${id }" readonly>
				</div>
				<div class="form-group">
					<label for="content">content:</label>
					<textarea class="form-control" rows="5" id="content" name="content"></textarea>
				</div>
			</form>
		</table>
		<button type="button" class="btn btn-primary" onclick="reply()">댓글입력</button>

		<div id="reply">
			<ol class="replyList">
				<c:forEach items="${replyList }" var="reply">
					<li>
						<p>
							<span class="glyphicon glyphicon-user"></span> 작성자 :
							${reply.writer } <br /> 작성 날짜 : ${reply.regdate }<br />
						</p>
						<p class="bg-info">-->${reply.content}</p>
						
<!-----------------------------------------------모달  button------------------------------------------------------------------------------------>						
<c:if test="${reply.writer == id }">
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"> 댓글 삭제  </button>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal2"> 댓글 수정 </button>


<!----------------------------------- ----------댓글 삭제 모달 ---------------------------------------------------------------------------------->
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">게시물 삭제</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

      ${reply.rno }번 댓글을 정말 삭제하시겠습니까?
      </div>
      <div class="modal-footer">
     	 <form id="deletereply">
      		<input type="hidden" name="rno" value="${reply.rno }"/>
      	</form>
      <button type="button" class="btn btn-primary" onclick="replyDelete()">삭제하기</button>
     
      	
       	<button type="button" class="btn btn-secondary" data-dismiss="modal">취소하기</button>
       	<a href="home.do">목록으로 돌아가기</a>
      </div>
    </div>
  </div>
</div>

<!------------------------------------------------------------------------------------------------------------------------------------------------->

<!----------------------------------------------- 댓글 수정 모달 ---------------------------------------------------------------------------------->
<!-- Modal -->
<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
      	<form id="updatereply">
      		<input type="hidden" name="rno" value="${reply.rno }"/>
     		<input type="text"  class="form-control"  name="content"  style="height:100px"/>
      	</form>
      <button type="button" class="btn btn-primary" onclick="replyUpdate()">수정하기</button>
      <button type="button" class="btn btn-secondary" data-dismiss="modal">취소하기</button>
      	
       	
       	<a href="home.do">목록으로 돌아가기</a>
      </div>
    </div>
  </div>
</div>
</c:if>


<!------------------------------------------------------------------------------------------------------------------------------------------------->
						</li>				
				</c:forEach>
			</ol>
		</div>
	</div>

</body>
</html>