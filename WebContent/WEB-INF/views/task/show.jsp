<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:import url="../general/header.jsp" />
<script type="text/javascript">
	function deleteTask(id){
		$.post("deleteTask", {'id' : id});
	}
</script>
<br /><br />
<form action="saveTask" method="post">
	<input type="hidden" name="id" value="${task.id}" />
	Name <br />
	<input type="text" name="name" value="${task.name}" size="98"/><br />
	Description<br />
	<textarea name="description" cols="100" rows="5">${task.description}</textarea>
	<br />
	<form:errors path="task.description"/><br /> 
	Finalization<br /> 
	<mytags:fieldDate id="finalizationDate" value="${task.finalizationDate.time}" />
	<br />
	<input type="submit" value="Save" />
	<a href="deleteTask?id=${task.id}">Delete</a>
	<a href="listTasks">Cancel</a>
</form>
<c:import url="../general/footer.jsp" />
