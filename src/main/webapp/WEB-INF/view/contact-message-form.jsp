<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Messages Form</title>
</head>
<body>
	<div id = "wrapper">
		<h1>List of Contact Messages</h1>
	</div>
	<br><br>
	<div id="data_container">
		<table>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Message</th>
				<th>Is Read</th>
				<th>Created At</th>
				<th>Updated At</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="contactMessage" items="${contactMessageList}">
				<tr>
					<th>${contactMessage.idContactMessage}</th>
					<th>${contactMessage.name}</th>
					<th>${contactMessage.email}</th>
					<th>${contactMessage.message}</th>
					<th>${contactMessage.isRead}</th>
					<th>${contactMessage.createdAt}</th>
					<th>${contactMessage.updatedAt}</th>
					<th><a href="contact-message-update?idContactMessage=${contactMessage.idContactMessage}">update</a></th>
					<th><a href="contact-message-delete?idContactMessage=${contactMessage.idContactMessage}" onclick="if(!confirm('Delete this contact message?')) return false">delete</a></th>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br><br>
	<a href="contact-message-add">Add New Contact Message</a>
</body>
</html>