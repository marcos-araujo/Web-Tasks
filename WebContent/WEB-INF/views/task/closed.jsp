<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<td>${task.id}</td>
<td><a href="showTask?id=${task.id}">${task.description}</a></td>
<td>Closed</td>
<td><fmt:formatDate value="${task.finalizationDate.time}" pattern="dd/MM/yyyy" /></td>
<td><a href="deleteTask?id=${task.id}">X</a></td>
