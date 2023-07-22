<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Slider Form</title>
</head>
<body>
	<div id = "wrapper">
		<h1>List of Sliders</h1>
	</div>
	<br><br>
	<div id="data_container">
		<table>
			<tr>
				<th>ID</th>
				<th>Image</th>
				<th>Title</th>
				<th>Button Title</th>
				<th>Button Url</th>
				<th>Display Order</th>
				<th>Is Enabled</th>
				<th>Created At</th>
				<th>Updated At</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="slider" items="${sliderList}">
				<tr>
					<th>${slider.idSlider}</th>
					<th>${slider.image}</th>
					<th>${slider.title}</th>
					<th>${slider.buttonTitle}</th>
					<th>${slider.buttonUrl}</th>
					<th>${slider.displayOrder}</th>
					<th>${slider.isEnabled}</th>
					<th>${slider.createdAt}</th>
					<th>${slider.updatedAt}</th>
					<th><a href="slider-update?idSlider=${slider.idSlider}">update</a></th>
					<th><a href="slider-delete?idSlider=${slider.idSlider}" onclick="if(!confirm('Delete this slider?')) return false">delete</a></th>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br><br>
	<a href="slider-add">Add New Slider</a>
</body>
</html>