<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Add</title>
</head>
<body>
	<form:form action="post-save" modelAttribute="post">
		<form:hidden path="idPost"/>
		User: <form:select path="user.idUser" itemLabel="username" 
								itemValue="idUser" items="${userList}"/>
		<br><br>
		Category: <form:select path="category.idCategory" itemLabel="name" 
								itemValue="idCategory" items="${categoryList}"/>
		<br><br>
		Title: <form:input path="title"/>
		<br><br>
		Short Description: <form:input path="shortDescription"/>
		<br><br>
		Content: <form:input path="content"/>
		<br><br>
		Image: <form:input path="image"/>
		<br><br>
		Is Important: <form:checkbox path="isImportant"/>
		<br><br>
		Views: <form:input path="views"/>
		<br><br>
		Is Enabled: <form:checkbox path="isEnabled"/>
		<br><br>
		Tags: <form:select path="tagList">
		    <form:options items="${tagList}" itemLabel="name" itemValue="idTag"/>
		</form:select>
		<br><br>
		<input type="submit" value="save post">
	</form:form>
</body>
</html>