<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Message Add</title>
</head>
<body>
	<form:form action="contact-message-save" modelAttribute="contactMessage">
		<form:hidden path="idContactMessage"/>
		Name: <form:input path="name"/>
		<br><br>
		Email: <form:input path="email"/>
		<br><br>
		Message: <form:input path="message"/>
		<br><br>
		Is Read: <form:checkbox path="isRead"/>
		<br><br>
		<input type="submit" value="save contactMessage">
	</form:form>
</body>
</html>