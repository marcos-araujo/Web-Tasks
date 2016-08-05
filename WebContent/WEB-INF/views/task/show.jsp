<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link href="resources/css/jquery-ui.css" rel="stylesheet">
		<link href="resources/css/task.css" rel="stylesheet" /> 
		<script src="resources/js/jquery.js"></script>
		<script src="resources/js/jquery-ui.js"></script>
		<link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.ico">
		<title>Update Task</title>
	</head>
	<body>
		<c:import url="../general/header.jsp" />
		<h3>Update task - ${task.id}</h3>
		<form:errors path="tarefa.descricao"/>
		<form action="updateTask" method="post">
			<input type="hidden" name="id" value="${task.id}" />
			Description:<br />
			<textarea name="description" cols="100" rows="5">${task.description}</textarea>
			<br />
			Closed? <input type="checkbox" name="closed" value="true" ${task.closed? 'checked' : ''}/> 
			<br />
			Date of finalization: <br />
			<mytags:fieldDate id="finalizationDate" value="${task.finalizationDate.time}" />
			<br />
			<input type="submit" value="Update"/>
		</form>
		<c:import url="../general/footer.jsp" />
	</body>
</html>