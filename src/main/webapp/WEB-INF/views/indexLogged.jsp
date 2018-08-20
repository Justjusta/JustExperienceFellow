<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">

<title>Just Experience Fellow</title>
<link rel="stylesheet" type="text/css" href="static/css/style.css">

</head>

<body>

	<div class="container">
		<header class="header clearfix"> <nav>
		<ul class="nav nav-pills float-right">
			<li class="nav-item"><a class="nav-link active" href="/logged">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<%out.print(request.getContextPath());%>/register">Register</a>
			</li>
			<li class="nav-item"><a class="nav-link"
				href="<%out.print(request.getContextPath());%>/show">Your
					account</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<%out.print(request.getContextPath());%>/experience/add">Share
					your experience</a></li>
		</ul>
		</nav>
		<h3 class="text-muted">Experience fellow</h3>
		</header>

		<main role="main">

		<div class="jumbotron">
			<h1 class="display-3">Welcome in <br>
			Just Experience Fellow!</h1>
			<p>
				<a class="btn btn-lg btn-success"
					href="<%out.print(request.getContextPath());%>/experience/add/${user.id}" role="button">Share your experience</a>
			</p>

			<br> <br>
			<br>
			<br> <br> <br>

		</div>

		</main>

		<footer class="footer">
		<p>© 2018 Just</p>
		</footer>

	</div>
	</body>
</html>