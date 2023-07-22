<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tag Add</title>
</head>
<body>
	<form:form action="tag-save" modelAttribute="tag">
		<form:hidden path="idTag"/>
		Name: <form:input path="name"/>
		<br><br>
		<input type="submit" value="save tag">
	</form:form>
</body>
</html>