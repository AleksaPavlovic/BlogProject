<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Comment Add</title>
</head>
<body>
	<form:form action="comment-save" modelAttribute="comment">
		<form:hidden path="idComment"/>
		Post: <form:select path="post.idPost" itemLabel="title" 
								itemValue="idPost" items="${postList}"/>
		<br><br>
		User: <form:select path="user.idUser" itemLabel="username" 
								itemValue="idUser" items="${userList}"/>
		<br><br>
		Comment Content: <form:input path="content"/>
		<br><br>
		<input type="submit" value="save comment">
	</form:form>
</body>
</html>