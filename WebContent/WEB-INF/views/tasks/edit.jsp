<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:import url="../general/header.jsp" />

<div class="container">
	<br />
	<form action="saveTask" method="post">
		<input type="hidden" name="id" value="${task.id}" />
		
		Name <br />
		<input type="text" name="name" value="${task.name}" size="70"/><br />
		
		Description<br />
		<textarea name="description" cols="70" rows="5">${task.description}</textarea>
		
		<form:errors path="task.description"/><br /> 
		
		Finalization <mytags:fieldDate id="closingDate" value="${task.closingDate.time}" />
		
		<br />
		<input type="submit" value="Save" />
		<a href="deleteTask?id=${task.id}">Delete</a>
		<a href="listTasks">Cancel</a>
	</form>
</div>

<c:import url="../general/footer.jsp" />
