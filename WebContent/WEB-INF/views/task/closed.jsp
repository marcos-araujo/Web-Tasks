<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<td>${task.name}</td>

<td>${task.description}</td>

<td>Yes</td>

<td><fmt:formatDate value="${task.finalizationDate.time}" pattern="dd/MM/yyyy" /></td>

<td><a href="javascript:void(0)" onclick="closeTask(${task.id});"><img src="resources/images/done.png" width="15"/></a></td>

<td><a href="showTask?id=${task.id}"><img src="resources/images/edit.png" width="15"/></a></td>

<td><a href="javascript:void(0)" onclick="deleteTask(${task.id});"><img src="resources/images/remove.png" width="15"/></a></td>
