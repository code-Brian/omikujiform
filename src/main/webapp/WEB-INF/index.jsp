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

<title>CounterMeme Globally Offensive</title>
</head>
<body>
	<div class="container d-flex flex-column justify-content-center align-items-center mt-5 bg-light p-3 rounded">
		<h1>Omemekuji</h1>
		<form action="/omikuji" method="post">
			<label class="form-label">Pick any number from 5 to 25:</label>
			<input class="form-control" type="number" name="number">
			<label class="form-label">Enter the name of any city:</label>
			<input class="form-control" type="text" name="city">
			<label class="form-label">Enter the name of any person:</label>
			<input class="form-control" type="text" name="person">
			<label class="form-label">Enter the professional endeavor or hobby:</label>
			<input class="form-control" type="text" name="profession">
			<label class="form-label">Enter any type of living thing:</label>
			<input class="form-control" type="text" name="animal">
			<label class="form-label">Say something nice to someone:</label>
			<textarea class="form-control" name="niceness"></textarea>
			<input class="btn btn-primary mt-3 p-3 rounded" type="submit" value="Create Omemekuji">
		</form>
	</div>
</body>
</html>