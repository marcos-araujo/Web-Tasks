<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<script src="resources/js/jquery.js"></script>
		<link href="resources/css/task.css" rel="stylesheet" />
		<link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.ico">
		<title>Tasks</title>
	</head>
	<body>
		<c:import url="../general/header.jsp" />
		<script type="text/javascript">
			function closeTask(id){
				$.post("closeTask", {'id' : id}, function(response){$("#task_"+id).html(response);});
			}
			
			function deleteTask(id){
				$.post("deleteTask", {'id' : id}, function(){$("#task_"+id).closest("tr").hide();});
			}
		</script>
		<br /><br />
		<p style="float:right;"><a href="logout">Sign out</a></p>
		<table>
			<tr>
				<th>Id</th>
				<th>Description</th>
				<th>Closed?</th>
				<th>Date of finalization</th>
				<th>X</th>
			</tr>
			<c:forEach items="${tasks}" var="task">
				<tr id="task_${task.id}">
					<td>${task.id}</td>
					<td><a href="showTask?id=${task.id}">${task.description}</a></td>
					<c:if test="${task.closed eq false}">
						<td>
							<a href="javascript:void(0)" onclick="closeTask(${task.id});">Close</a>
						</td>
						</c:if>
						<c:if test="${task.closed eq true}">
							<td>Closed</td>
						</c:if>
					<td><fmt:formatDate	value="${task.finalizationDate.time}" pattern="dd/MM/yyyy"/></td>
					<td><a href="javascript:void(0)" onclick="deleteTask(${task.id});">X</a></td>
				</tr>
			</c:forEach>
		</table>
		<br /><br />
		<a href="newTask">New task</a>
		<c:import url="../general/footer.jsp" />
	</body>
</html>