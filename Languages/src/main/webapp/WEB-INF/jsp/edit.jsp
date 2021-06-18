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
	<form:form action="/languages/${language.id}" method="post" modelAttribute="language">
	    <input type="hidden" name="_method" value="put">
	    <p>
	        <form:label path="name">Name</form:label>
	        <form:errors path="name" />
	        <form:input path="name" />
	    </p>
	    <p>
	        <form:label path="creator">Creator</form:label>
	        <form:errors path="creator" />
	        <form:textarea path="creator" />
	    </p>
	    <p>
	        <form:label path="version">Version</form:label>
	        <form:errors path="version" />
	        <form:input type="number" path="version" />
	    </p>
	    <input type="submit" value="Submit" />
	</form:form>
</body>
</html>