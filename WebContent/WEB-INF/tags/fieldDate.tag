<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="id" required="true" %>
<%@ attribute name="value" rtexprvalue="true" type="java.util.Date" %>

<fmt:formatDate value="${value}" type="date" pattern="dd/MM/yyyy" var="theFormattedDate" />

<input id="${id}" name="${id}" value="${theFormattedDate}" size="7" />
<script>
	$("#${id}").datepicker({dateFormat: 'dd/mm/yy', changeYear:true, yearRange: '-100:+0'});
</script>