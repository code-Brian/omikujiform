<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/app.js"></script>

<title>Omemekuji</title>
</head>
<body>
	<div class="container d-flex align-items-center justify-content-center min-vh-100">
		<div class="card bg-light text-dark p-3">
			<div class="card-img">
				<img class="card-img rounded" style="opacity:0.3;" src="../img/anime-girl.gif" alt="a cute anime meme">
					<div class="card-img-overlay">
					<div class="d-flex flex-column justify-content-center align-items-center p-3 ">
						<h1 class="card-title">Omemekuji</h1>
						<p class="card-text">In <c:out value="${number}"/> years, you will live in <c:out value="${city}"/> with <c:out value="${person}"/> as your roommate, <c:out value="${profession}"/> for a living.</p>
						<p class="card-text">The next time you see a / an <c:out value="${animal}"/>, you will have good luck. Also, <c:out value="${niceness}"/></p>
					</div>
				</div>
				<form class="card align-self-end mt-3" action="/">
					<button class="btn btn-primary">Create another one!</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>