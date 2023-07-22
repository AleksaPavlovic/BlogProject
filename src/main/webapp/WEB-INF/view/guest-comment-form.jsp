<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guest Comment Form</title>
</head>
<body>
	<div id = "wrapper">
		<h1>List of Guest Comments</h1>
	</div>
	<br><br>
	<div id="data_container">
		<table>
			<tr>
				<th>ID</th>
				<th>Post</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Comment Content</th>
				<th>Created At</th>
				<th>Updated At</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="guestComment" items="${guestCommentList}">
				<tr>
					<th>${guestComment.idGuestComment}</th>
					<th>${guestComment.post.title}</th>
					<th>${guestComment.firstName}</th>
					<th>${guestComment.lastName}</th>
					<th>${guestComment.email}</th>
					<th>${guestComment.content}</th>
					<th>${guestComment.createdAt}</th>
					<th>${guestComment.updatedAt}</th>
					<th><a href="guest-comment-update?idGuestComment=${guestComment.idGuestComment}">update</a></th>
					<th><a href="guest-comment-delete?idGuestComment=${guestComment.idGuestComment}" onclick="if(!confirm('Delete this comment?')) return false">delete</a></th>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br><br>
	<a href="guest-comment-add">Add New Comment</a>
</body>
</html>