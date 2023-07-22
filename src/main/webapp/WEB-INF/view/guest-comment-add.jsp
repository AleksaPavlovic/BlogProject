<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guest Comment Add</title>
</head>
<body>
	<form:form action="guest-comment-save" modelAttribute="guestComment">
		<form:hidden path="idGuestComment"/>
		Post: <form:select path="post.idPost" itemLabel="title" 
								itemValue="idPost" items="${postList}"/>
		<br><br>
		First Name: <form:input path="firstName"/>
		<br><br>
		Last Name: <form:input path="lastName"/>
		<br><br>
		Email: <form:input path="email"/>
		<br><br>
		Comment Content: <form:input path="content"/>
		<br><br>
		<input type="submit" value="save guestComment">
	</form:form>
</body>
</html>