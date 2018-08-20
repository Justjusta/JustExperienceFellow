<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@	page isELIgnored="false"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">

<div class="container">
	<header class="header clearfix"> <nav>


	<ul class="nav nav-pills float-right">

		<li class="nav-item"><a class="nav-link"
			href="<%out.print(request.getContextPath());%>/logged">Home <span
				class="sr-only">(current)</span></a></li>
		<li class="nav-item"><a class="nav-link" href="/register">Register
				<span class="sr-only">(current)</span>
		</a></li>
		<li class="nav-item"><a class="nav-link"
			href="<%out.print(request.getContextPath());%>/show">Your account</a></li>
		<li class="nav-item"><a class="nav-link active"
			href="<%out.print(request.getContextPath());%>/experience/add/${user.id}">Share
				your experience</a></li>
	</ul>
	</nav>
	<h3 class="text-muted">Experience fellow</h3>
	</header>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>


	<link rel="stylesheet" href="static/css/style.css" />
</head>
<body>
	<div class="jumbotron">
		<h2 class="text-center">
			<b>ADD EXPERIENCE </b>
		</h2>
	</div>


	<form:form method="post" modelAttribute="experience">
		<form:hidden path="id" placeholder="Id" />


		<label>Select place</label>
		<form:select itemLabel="clientName" itemValue="id" path="client.id"
			items="${clients}" />
		<form:errors path="client" />
		<br>


		<label>Your experience:</label>
		<form:input path="text" placeholder="text" />
		<form:errors path="text" />


		<input type="submit" value="Add" />
	</form:form>
	<br>



</body>


</html>