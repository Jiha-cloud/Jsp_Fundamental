<!-- template.html -->
<%@ page pageEncoding="utf-8" %>
<%@ include file="../inc/header.jsp" %>
  	<!-- breadcrumb start -->
  	<nav aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="/index.jsp">홈</a></li>
	    <li class="breadcrumb-item">공지사항</li>
	 </ol>
	</nav>
	<!-- breadcrumb end -->
  	
  	<!-- container start -->
	<div class="container">
		<!-- col start -->
		<div class="row">
			<div class="col-md-12">
			<h4>공지사항 수정하는 곳</h4>
			<!-- form start -->
			<form name = 'noticeForm' method = 'post' action = 'modifyDb.jsp'></form>
				<form>
  			<div class="form-group">
   		 	<label for="writer">작성자</label>
    		<input type="text" class="form-control" id="writer" name = 'writer' value = '성영한' placeholder="작성자를 입력하세요">
 		</div>
  			<div class="form-group">
    		<label for="title">제 목</label>
    		<input type="text" class="form-control" id="title" name = 'titel' value = '제목1' placeholder="제목을 입력하세요">
  		</div>
  			<div class="form-group">
    		<label for="content">내 용</label>
    		<textarea class="form-control" id="content" name = 'content' rows="10">내용1내용2</textarea>
  		</div>
	</form>
		<div class="text-right">
					<a class="btn btn-secondary" href="view.jsp" role="button">뷰</a>
					<a class="btn btn-success" id='modifyNotice' role="button">수정</a>
				</div>
<!-- form end -->
			</div>
		</div>
		<!-- col end -->
	</div>
	<!-- container end -->
<%@ include file="../inc/footer.jsp" %>
	






	





