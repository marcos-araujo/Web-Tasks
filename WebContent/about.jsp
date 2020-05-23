<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytags" %>

<c:import url="WEB-INF/views/general/header.jsp" />

	<div id="about">

		<div class="about">Create, edit, delete, open and close tasks. </div>
		
		<div class="about">Features</div>
		<ul>
			<li>Task Management</li> 
			<li>Authentication</li>
		</ul>
		
		<div class="about">Design Patterns</div>
		<ul>
			<li>Model View Controller</li>
			<li>Data Access Object</li>
			<li>Dependency Injection</li>
		</ul>		
		
		<div class="about">APIs and Frameworks</div>
		<ul>	
			<li>Integration spring / hibernate</li>
			<li>Transaction Management</li>
			<li>Spring Security</li>
		</ul>

		<div class="about">Logic overview</div>
		<ul>	
			<li>The view layer is in JSP</li>
			<li>The database connection is in Spring Context</li>
			<li>The persistence is made by Hibernate API</li>
			<li>All requests go through a HandlerInterceptorAdapter, where the user sessions is verified</li>
			<li>The main logic is in a Spring Controller</li>
		</ul>
		
		<div class="about">Free Software<a target="_blank" class="about" href="https://github.com/marcos-morgado/SpringMVC-Tasks">Code</a>. Feel free to contribute.</div>
		
		<br />
	
		<a class="linkP" href="listTasks">Back</a>
	
	</div>
	
	</body>
		
</html>
