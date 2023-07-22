<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Form</title>
</head>
<body>
	<div id = "wrapper">
		<h1>List of Posts</h1>
	</div>
	<br><br>
	<div id="data_container">
		<table>
			<tr>
				<th>ID</th>
				<th>User</th>
				<th>Category</th>
				<th>Title</th>
				<th>Short Description</th>
				<th>Content</th>
				<th>Image</th>
				<th>Is Important</th>
				<th>Views</th>
				<th>Is Enabled</th>
				<th>Created At</th>
				<th>Updated At</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="post" items="${postList}">
				<tr>
					<th>${post.idPost}</th>
					<th>${post.user.username}</th>
					<th>${post.category.name}</th>
					<th>${post.title}</th>
					<th>${post.shortDescription}</th>
					<th>${post.content}</th>
					<th>${post.image}</th>
					<th>${post.isImportant}</th>
					<th>${post.views}</th>
					<th>${post.isEnabled}</th>
					<th>${post.createdAt}</th>
					<th>${post.updatedAt}</th>
					<th><a href="post-update?idPost=${post.idPost}">update</a></th>
					<th><a href="post-delete?idPost=${post.idPost}" onclick="if(!confirm('Delete this post?')) return false">delete</a></th>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br><br>
	<a href="post-add">Add New Post</a>
</body>
</html>