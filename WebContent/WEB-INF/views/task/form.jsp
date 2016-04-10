<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>New Task</title>
		<link href="resources/css/task.css" rel="stylesheet" /> 
		<link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.ico">
	</head>
	<body>
		<c:import url="../header.jsp" />
		<h3>Add task</h3>
		<form:errors path="task.description"/>
		<form action="addTask" method="post">
			Description: <br />
			<textarea name="description" rows="5" cols="100"></textarea><br />
			<input type="submit" value="Add">
		</form>
		<a href="listTasks">Cancel</a>
		<c:import url="../footer.jsp" />
	</body>
</html>