<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="resources/css/style.css" rel="stylesheet" /> 
	<link href="resources/css/jquery-ui.css" rel="stylesheet">
	<link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.ico">
	<title>Login</title>
	</head>
	<body>
		<h2>Task Management</h2>
		<form action="doLogin" method="post">
			User: <input type="text" name="user" /> <br />
			Password: <input type="password" name="password" /> <br />
			<input type="submit" value="Login" />
		</form>
	</body>
</html>