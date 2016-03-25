<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link href="resources/css/task.css" rel="stylesheet" />
		<link href="resources/css/jquery-ui.css" rel="stylesheet"> 
		<title>Menu</title>
	</head>
	<body>
		<p style="float:right; margin:0">Welcome, ${userOnline.user}</p>
		<h2>Task Management</h2>
		<a href="listTasks">List of Tasks</a>
		<a href="logout">Sign out</a>
	</body>
</html>