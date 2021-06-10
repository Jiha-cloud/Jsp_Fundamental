<%--scriptingElement.jsp--%>
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>scripting element</title>
	</head>
	<body>
		<h1>스크립팅 엘리먼트</h1>
		<%! 
			private int age;
			public int getAge(){
				return age;
			}
			public void setAge(int age){
				this.age = age;
			}
			
		%>
		<%
			int a = 10;
			out.println(a);
			
		%>
		
		<%= a %>
		<ul>
		<% 
			for(int i=0;i<10;i++){
				out.println("<li>"+i+"</li>");	
			}
		%>
		</ul>
		
		<ul>
		<%for(int i=0;i<10;i++){ %>
			<li><%=i %></li>
		<%} %>
		</ul>
		
		
		
		
		
		
		
		
		
		
		
		
		
	</body>
</html>