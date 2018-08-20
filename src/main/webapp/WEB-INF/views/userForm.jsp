<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<link rel="icon" href="https://getbootstrap.com/favicon.ico">
<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="static/css/signin.css" rel="stylesheet">


<div class="container">
	<header class="header clearfix"> <nav>
	

	<ul class="nav nav-pills float-right">
		<li class="nav-item"><a class="nav-link"
			href="<%out.print(request.getContextPath());%>/">Home <span
				class="sr-only">(current)</span></a></li>
		<li class="nav-item"><a class="nav-link active" href="/register">Register
				<span class="sr-only">(current)</span>
		</a></li>
		<li class="nav-item"><a class="nav-link"
			href="<%out.print(request.getContextPath());%>/show">Your account</a></li>
		<li class="nav-item"><a class="nav-link"
			href="<%out.print(request.getContextPath());%>/clients">Share your experiences</a></li>
	</ul>
	</nav>
	<h3 class="text-muted">Experience fellow</h3>
	</header>

	<title>Add user</title>
</head>
<body>

	<form:form method="post" modelAttribute="user">
	<br>
		<div>
			Username:
			<form:input path="userName" />
			<form:errors path="userName" element="div" />
		</div>
	<br>
		<div>
			Email:
			<form:input type="email" path="email" />
			<form:errors path="email" element="div" />
		</div>
	<br>
		<div>
			Password:
			<form:password path="password" />
			<form:errors path="password" element="div" />
		</div>

	<br>
		<input type="submit" value="Register now">
	</form:form>
<br><br>

		<footer class="footer">
		<p>© 2018 Just</p>
		</footer>
</body>
</html>