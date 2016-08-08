<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<td>${task.id}</td>
<td><a href="showTask?id=${task.id}">${task.description}</a></td>
<td>Yes</td>
<td><fmt:formatDate value="${task.finalizationDate.time}" pattern="dd/MM/yyyy" /></td>
<td><a href="showTask?id=${task.id}">Editar</a></td>
<td><a href="javascript:void(0)" onclick="deleteTask(${task.id});">Delete</a></td>
