<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tag Form</title>
</head>
<body>
	<div id = "wrapper">
		<h1>List of Tags</h1>
	</div>
	<br><br>
	<div id="data_container">
		<table>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Created At</th>
				<th>Updated At</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="tag" items="${tagList}">
				<tr>
					<th>${tag.idTag}</th>
					<th>${tag.name}</th>
					<th>${tag.createdAt}</th>
					<th>${tag.updatedAt}</th>
					<th><a href="tag-update?idTag=${tag.idTag}">update</a></th>
					<th><a href="tag-delete?idTag=${tag.idTag}" onclick="if(!confirm('Delete this tag?')) return false">delete</a></th>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br><br>
	<a href="tag-add">Add New Tag</a>
</body>
</html>