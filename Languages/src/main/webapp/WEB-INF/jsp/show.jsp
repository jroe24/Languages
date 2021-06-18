<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Java</title>
</head>
<body>	
	<a href="/languages">Dashboard</a>
	<br><br>
	<c:out value="${language.name}"></c:out><br>
	<c:out value="${language.creator}"></c:out><br>
	<c:out value="${language.version}"></c:out><br>

	<a href="/languages/${language.id}/edit">edit</a>
	<form action="/languages/${language.id}" method="post">
	    <input type="hidden" name="_method" value="delete">
		<input type="submit" value="Delete">
	</form>
</body>
</html>