<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@	page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

<div class="container">
	<header class="header clearfix">

	<ul class="nav nav-pills float-right">

		<li class="nav-item"><a class="nav-link"
			href="<%out.print(request.getContextPath());%>/logged">Home <span
				class="sr-only">(current)</span></a></li>
		<li class="nav-item"><a class="nav-link" href="/register">Register
				<span class="sr-only">(current)</span>
		</a></li>
		<li class="nav-item"><a class="nav-link active"
			href="<%out.print(request.getContextPath());%>/show">Your account</a></li>
		<li class="nav-item"><a class="nav-link"
			href="<%out.print(request.getContextPath());%>/experience/add/${user.id}">Share
				your experience</a></li>
	</ul>
	<h3 class="text-muted">Experience fellow</h3>
	</header>
	<title>Experience fellow -> Your account</title>
</head>
<body>
	<div class="container-fluid">
		<h2 class="text-center">Your account</h2>

		User name:
		<p>${user.userName}</p>
		Email:
		<p>${user.email}</p>

		<p>
			<a href="<c:url value="/edit/${user.id}"/>" class="btn btn-default">
				EDIT <span class="glyphicon glyphicon-plus-sign"></span>
			</a>
		</p>
		<br>
		<p>HISTORY OF YOUR EXPERIENCES:</p>
		<table border="1">
			<tr>
				<td>Date</td>
				<td>Experience</td>
				
			</tr>

			<c:forEach items="${experiences}" var="e">
				<tr>
					<td>${e.created}</td>
					<td>${e.text}</td>
					
					<td><a
						href="<c:url value="/experience/delete/${experience.id}"/>">Delete</a></td>

				</tr>
			</c:forEach>

		</table>
		<br> <a href="<c:url value="/experience/add/${user.id}"/>"
			class="btn btn-default"> ADD NEW EXPERIENCE <span
			class="glyphicon glyphicon-plus-sign"></span>
		</a> <br> <br>
	</div>

	<footer class="footer">
	<p>© 2018 Just</p>
	</footer>
</body>
</html>