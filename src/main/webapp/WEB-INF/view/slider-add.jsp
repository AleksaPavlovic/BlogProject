<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Slider Add</title>
</head>
<body>
	<form:form action="slider-save" modelAttribute="slider">
		<form:hidden path="idSlider"/>
		Image: <form:input path="image"/>
		<br><br>
		Title: <form:input path="title"/>
		<br><br>
		Button Title: <form:input path="buttonTitle"/>
		<br><br>
		Button Url: <form:input path="buttonUrl"/>
		<br><br>
		Display Order: <form:input path="displayOrder"/>
		<br><br>
		Is Enabled: <form:checkbox path="isEnabled"/>
		<br><br>
		<input type="submit" value="save slider">
	</form:form>
</body>
</html>