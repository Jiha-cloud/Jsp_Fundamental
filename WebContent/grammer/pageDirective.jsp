<%-- pageDirective.jsp --%>
<%--
	jsp -> servlet 파일로 변경되는 위치
	C:\Users\3-20\eclipse-workspace
	\.metadata\.plugins
	\org.eclipse.wst.server.core
	\tmp0\work\Catalina\localhost
	\ROOT\org\apache\jsp
 --%>

<%@ page import="kr.or.kpc.dto.MemberDto"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="kr.or.kpc.dao.MemberDao"%>
<%@ page contentType="text/html;charset=utf-8"  %>
<%@ page pageEncoding="utf-8" %>
<%@ page import="java.util.Calendar" %>
<%@ page session="false" %>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Page Directive</title>
	</head>
	<body>
		<h1>페이지 디렉티브</h1>
		<%
			Calendar cal = Calendar.getInstance();
			int year = cal.get(Calendar.YEAR);
			MemberDao dao = MemberDao.getInstance();
			ArrayList<MemberDto> list = dao.select(0, 10);
			out.println("<ul>");
			for(MemberDto dto : list){
				int num = dto.getNum();
				String name = dto.getName();
				String addr = dto.getAddr();
				out.println("<li>"+name+"</li>");
			}
			out.println("</ul>");
			//session.setAttribute("","");
			String str = null;
			int len = str.length();//NullPointerException
		
		%>
		
	</body>
</html>


