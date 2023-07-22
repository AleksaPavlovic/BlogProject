<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Comment Form</title>
</head>
<body>
	<div id = "wrapper">
		<h1>List of Comments</h1>
	</div>
	<br><br>
	<div id="data_container">
		<table>
			<tr>
				<th>ID</th>
				<th>Post</th>
				<th>User</th>
				<th>Content</th>
				<th>Created At</th>
				<th>Updated At</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="comment" items="${commentList}">
				<tr>
					<th>${comment.idComment}</th>
					<th>${comment.post.title}</th>
					<th>${comment.user.username}</th>
					<th>${comment.content}</th>
					<th>${comment.createdAt}</th>
					<th>${comment.updatedAt}</th>
					<th><a href="comment-update?idComment=${comment.idComment}">update</a></th>
					<th><a href="comment-delete?idComment=${comment.idComment}" onclick="if(!confirm('Delete this comment?')) return false">delete</a></th>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br><br>
	<a href="comment-add">Add New Comment</a>
</body>
</html>