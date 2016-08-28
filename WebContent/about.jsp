<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link href="resources/css/task.css" rel="stylesheet" />
		<link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.ico">
		<title>About the project</title>
	</head>
	<body>
		<c:import url="WEB-INF/views/general/header.jsp" />
		<h4>Features</h4>
		<ul>
			<li>Task Management</li> 
			<li>Open and close the tasks</li>
			<li>Authentication</li>
		</ul>
		
		<h4>Design Patterns</h4>
		<ul>
			<li>Model View Controller</li>
			<li>Data Access Object</li>
		</ul>
		
		<h4>Concepts</h4> 
		<ul>
			<li>Integration spring with hibernate</li>
			<li>Dependency Injection</li>
			<li>Transaction Management</li>
			<li>Spring Security</li>
		</ul>
		<a href="listTasks">Back</a>
		<c:import url="WEB-INF/views/general/footer.jsp" />
	</body>
</html>