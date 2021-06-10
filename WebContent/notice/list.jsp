<!-- template.html -->
<%@page import="kr.or.kpc.dto.NoticeDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.kpc.dao.NoticeDao"%>
<%@ page pageEncoding="utf-8" %>
<%@ include file="../inc/header.jsp" %>

<%
	String tempPage = request.getParameter("page");
	int cPage = 0;
	if(tempPage == null || tempPage.length() == 0){
		cPage = 1;
	}
	
	try{
		cPage = Integer.parseInt(tempPage);
	} catch(NumberFormatException e){
		cPage = 1;
	}
	
	/*
		cPage = 1 이면, 0, 10;
		cPage = 2 이면, 10, 10;
		cPage = 3 이면, 20, 10;
	*/
	int displayCount = 10; // 10개씩이면 10, 20개씩이면 20, 30개씩이면 30
	int start = (cPage-1)*10; 
	NoticeDao dao = NoticeDao.getInstance();
	ArrayList<NoticeDto> list = dao.select(start , displayCount);
%>
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
				<%-- table start --%>
				<h4>공지사항 리스트</h4>
				<div class="table-responsive">
				<table class="table table-hover">
					<colgroup>
						<col width="10%">
						<col width="10%">
						<col width="65%">
						<col width="20%">
					</colgroup>
				  <thead>
				    <tr>
				      <th scope="col">번호</th>
				      <th scope="col">작성자</th>
				      <th scope="col">제목</th>
				      <th scope="col">날짜</th>
				    </tr>
				  </thead>
				  <tbody>
				    <%
				    if(list.size() != 0){
				    	for(NoticeDto dto : list){
				    %>
				    <tr>
				      <th scope="row"><%=dto.getNum() %></th>
				      <td><%=dto.getWriter()%></td>
				      <td><a href='view.jsp'><%=dto.getTitle()%></a></td>
				      <td><%=dto.getRegdate()%></td>
				    </tr>
				    	<%}%>
				    <%}else{ %>
				    	<tr>
				    		<td colspan='4'> 비어있는 게시판 입니다.</td>
				    	</tr>	
				    		<%}%>
				  </tbody>
				</table>
				<%--Pagination start --%>
				<%
				/*
					총 rows 128개 가정, displayCount 10개 가정
					Previous 1 2 3 4 5 6 7 8 9 10 next => currentBlock : 1 block
					Previous 11 12 13 next => currentBlock : 2 block
					
				*/
				int totalRows = dao.getRows();
				int currentBlock = 0;
				int totalBlock = 0;
				int totalPage=0;
				int startPage = 0;
				int endPage = 0;
				int pageDisplayCount=10;
				
				
				/*
				cPage : 1-10 -> currentPage = 1
				cPage : 11-20 -> currentPage = 2...
				startPage = 1, 11, 21, 31...
				endPage = 10, 20, 30...
				*/
				
				
				/* if(totalPage%displayCount == 0){
					totalPage = totalRows/displayCount;
				}else{
					totalPage = totalRows/displayCount + 1;
				} */
				totalPage = (totalRows%displayCount==0) ? totalRows%displayCount : totalRows%displayCount + 1;
				
				if(totalPage==0){
					totalPage = 1;
				}
				
				if(cPage%displayCount == 0){
					currentBlock = cPage/displayCount;
				}else{
					currentBlock = cPage/displayCount + 1;
				}
				
				if(totalPage%displayCount == 0){
					totalBlock = totalPage/displayCount;
				}else{
					totalBlock = totalPage/displayCount + 1;
				}
				
				startPage = 1 + (currentBlock-1)*pageDisplayCount;
				endPage = pageDisplayCount + (currentBlock-1)*pageDisplayCount;
				
				if(currentBlock == totalBlock){
					endPage = totalPage;
				}
				
				%>
				<nav aria-label="Page navigation example">
				  <ul class="pagination justify-content-center">
				  <%if(currentBlock == 1){ %>
				    <li class="page-item disabled">
				      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
				    </li>
				    <%}else{%>
				    <li class="page-item">
				      <a class="page-link" href="list.jsp?page=<%=startPage-1 %>" tabindex="-1" aria-disabled="true">Previous</a>
				    </li>
				    <%}%>
				    <% for(int i=startPage;i<=endPage;i++){%>
				    <li class="page-item"><a class="page-link" href="list.jsp?page=<%=i%>"><%=i%></a></li>
					<%}%>
					<%if(totalBlock == currentBlock){ %>
				    <li class="page-item disabled">
				      <a class="page-link" href="#">Next</a>
				    </li>
				    <%}else{ %>
				    <li class="page-item">
				      <a class="page-link" href="list.jsp?page=<%=endPage+1%>">Next</a>
				    </li>
				    <%}%>
				    
				  </ul>
				</nav>
				<%--Pagination end --%>
				<div class="text-right">
					<a class="btn btn-success" href="write.jsp" role="button">글쓰기</a>
				</div>
				</div>
				<%-- table end--%>
			</div>
		</div>
		<!-- col end -->
	</div>
	<!-- container end -->
<%@ include file="../inc/footer.jsp" %>
	





