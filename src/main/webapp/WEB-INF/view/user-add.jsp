<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Add</title>
</head>
<body>
	<form:form action="user-save" modelAttribute="user">
		<form:hidden path="idUser"/>
		Username: <form:input path="username"/>
		<br><br>
		Email: <form:input path="email"/>
		<br><br>
		Password: <form:input path="password"/>
		<br><br>
		First Name: <form:input path="firstName"/>
		<br><br>
		Last Name: <form:input path="lastName"/>
		<br><br>
		Phone Number: <form:input path="phoneNumber"/>
		<br><br>
		Profile Image: <form:input path="profileImage"/>
		<br><br>
		Is Banned: <form:checkbox path="isBanned"/>
		<br><br>
		<input type="submit" value="save user">
	</form:form>
</body>
</html>