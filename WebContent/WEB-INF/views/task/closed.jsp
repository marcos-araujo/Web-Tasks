<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<td>${task.name}</td>

<td>${task.description}</td>

<c:if test="${task.closed eq false}">
	<td>Open</td>
</c:if>
<c:if test="${task.closed eq true}">
	<td>Closed</td>
</c:if>

<td>
	<fmt:formatDate	value="${task.finalizationDate.time}" pattern="dd/MM/yyyy"/>
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