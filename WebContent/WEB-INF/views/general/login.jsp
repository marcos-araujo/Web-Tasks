<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link href="resources/css/webTasks.css" rel="stylesheet" /> 
		<link href="resources/css/jquery-ui.css" rel="stylesheet">
		<link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.ico">
		<title>Login</title>
	</head>
	<body>
		<div id="login">
			<h2 class="tittle">Web Tasks</h2>
			<form action="doLogin" method="post">
				<table border="0" width="100%">
					<tr>
						<td>Login:</td>
						<td><input type="text" name="login" size="25"/></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type="password" name="password" size="25"/></td>
					</tr>
				</table>
				<input id="loginBotton" type="submit" value="Login" />
			</form>
			<span id="loginMessage"><b>${message}</b></span>
		</div>
	</body>
</html>