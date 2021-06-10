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
			<h4>공지사항 보기</h4>
			<!-- form start -->
			<form name = 'noticeForm' method = 'post' action = 'saveDb.jsp'></form>
				<form>
  			<div class="form-group">
   		 	<label for="writer">작성자 : 성영한</label>
    		
 		</div>
  			<div class="form-group">
    		<label for="title">제 목 : 제목1 </label>
    		
  		</div>
  			<div class="form-group">
    		<label for="content">내 용 : 내용1</label>
    		
  		</div>
	</form>
		<div class="text-right">
					<a class="btn btn-secondary" href="list.jsp" role="button">리스트</a>
					<a class="btn btn-success" href="modify.jsp" role="button">수정</a>
					<a class="btn btn-danger" id='deleteNotice' role="button">삭제</a>
				</div>
<!-- form end -->
			</div>
		</div>
		<!-- col end -->
	</div>
	<!-- container end -->
<%@ include file="../inc/footer.jsp" %>
	





			
				
			</div>
		</div>
		<!-- col end -->
	</div>
	<!-- container end -->
<%@ include file="../inc/footer.jsp" %>
	





