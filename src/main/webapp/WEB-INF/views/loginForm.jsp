<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Experience fellow -> Sign in</title>


<link rel="icon" href="https://getbootstrap.com/favicon.ico">
<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="static/css/signin.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<header class="header clearfix"> <nav>
		<ul class="nav nav-pills float-right">
			<li class="nav-item"><a class="nav-link active" href="">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<%out.print(request.getContextPath());%>/register">Register</a>
			</li>
			<li class="nav-item"><a class="nav-link"
				href="<%out.print(request.getContextPath());%>/show">Your
					account</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<%out.print(request.getContextPath());%>/clients">Share
					your experience</a></li>
		</ul>
		</nav>
		<h3 class="text-muted">Experience fellow</h3>
		</header>



	<div class="container">
		<form method="post" action="login">
			<form class="form-signin">
			<br>
				<h2 class="form-signin-heading">Please sign in</h2>

				<label for="inputEmail" class="sr-only">Email address</label> <input
					type="text" name="email" id="inputEmail" class="form-control"
					placeholder="Email address" required="" autofocus=""> <label
					for="inputPassword" class="sr-only">Password</label> <input
					type="password" name="password" id="inputPassword"
					class="form-control" placeholder="Password" required="">
				<div class="checkbox">
					<label> <input type="checkbox" value="remember-me">
						Remember me
					</label>
				</div>
				<input class="btn btn-lg btn-primary btn-block" type="submit"
					value="Log in" />
			</form>
		</form>
	</div>

</body>
</html>