<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
<c:import url="../general/header.jsp" />

<table id="table">
	<tr>	
		<th width="26%">Name</th>
		<th width="35%">Description</th>
		<th width="30%">Status</th>
		<th width="13%">Finalization</th>
		<th width="2%">&nbsp;&nbsp;&nbsp;&nbsp;</th>
		<th width="2%">&nbsp;&nbsp;&nbsp;&nbsp;</th>
		<th width="2%">&nbsp;&nbsp;&nbsp;&nbsp;</th>
	</tr>
	<c:forEach items="${tasks}" var="task">
		<tr id="task_${task.id}">
			<td>${task.name}</td>

			<td>${task.description}</td>

			<c:if test="${task.closed eq false}">
				<td>Open</td>
			</c:if>
			<c:if test="${task.closed eq true}">
				<td>Closed</td>
			</c:if>

			<td>
				<fmt:formatDate	value="${task.closingDate.time}" pattern="dd/MM/yyyy"/>
			</td>

			<td>
				<a href="showTask?id=${task.id}" title="Edit Task">
					<img src="resources/images/edit.png" width="15"/>
				</a>
			</td>

			<c:if test="${task.closed eq false}">
				<td>
					<a href="javascript:void(0)" title="Close Task" onclick="closeTask(${task.id});">
						<img src="resources/images/done.png" width="15"/>
					</a>
				</td>
			</c:if>
			<c:if test="${task.closed eq true}">
				<td>
					<a href="javascript:void(0)" title="Reopen Task" onclick="reopenTask(${task.id});">
						<img src="resources/images/reopen.png" width="15"/>
					</a>
				</td>
			</c:if>
			<td>
				<a href="javascript:void(0)" title="Delete Task" onclick="deleteTask(${task.id});">
					<img src="resources/images/remove.png" width="15"/>
				</a>
			</td>
		</tr>
	</c:forEach>
</table>

<br />

<a class="linkP" href="newTask">New</a>

<c:import url="../general/footer.jsp" />
