<%@ page pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<script src="/js/jquery-3.6.0.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
	<title>template</title>
	<style>
.Nav {
  max-width: 980px;
  margin: 0 auto;
  overflow: visible
}
.wrapper {
  height: 5vh;
}

body {
  margin: 0;
}

nav {
  height: 44px;
 
  rgba:(0,0,0,0.5)
}

nav ul {
  display: flex;
  height: 44px;
  justify-content: space-around;
  align-items: center;
  padding: 0;
  margin: 0 auto;
  list-style-type: none;
}

nav li {}

nav a {
  display: block;
  color:green;
  font-size: 20px;
  font-family:fantasy;
  font-weight: lighter;
  text-decoration: none;
  transition: 0.3s;
}

nav a:hover {
  color: #B8B8B8;
}

.appleNav {
  max-width: 980px;
  margin: 0 auto;
}
</style>
  </head>
  <body>
  	<!-- navbar start -->
  	<div class="wrapper">
  <nav>
    <div class="Nav">
      <ul>
        <li><a href="/project/program.jsp">Park Recommendation?</a></li>
        <li><a href="/project/park.jsp">Program</a></li>
         <li><a href="/notice/list.jsp">Notice</a></li>
        <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	         Exercise
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="/project/upper.jsp">상체운동</a>
	          <a class="dropdown-item" href="#">하체운동</a>
	          <div class="dropdown-divider"></div>
      
		<!-- navbar end -->    
      </ul>
    </div>
  </nav>
</div>
  	<!-- navbar end -->
  	</body>
  	