<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytags" %>

<c:import url="../general/header.jsp" />

	<div id="about">

		<div class="about">Create, edit, delete, open and close tasks.</div>
		
		<div class="about bold">Design Patterns</div>
		<ul>
			<li>Model View Controller</li>
			<li>Data Access Object</li>
			<li>Dependency Injection</li>
		</ul>		
		
		<div class="about bold">APIs and Frameworks</div>
		<ul>	
			<li>SpringMVC</li>
			<li>Hibernate</li>
			<li>Transaction Management</li>
			<li>Spring Security</li>
		</ul>

		<div class="about bold">How it works</div>
		<ul>	
			<li>The authentication process is implemented in AuthorizerInterceptor class.</li>
			<li>Spring @Autowired annotations provide dependency injection.</li>
			<li>The persistence layer is a Hibernate implementation.</li>
			<li>All requests go through a HandlerInterceptorAdapter, where the user sessions is verified</li>
			<li>JSP files perform the view layer.</li>
		</ul>
		
		<div class="about  bold">Free Software<a target="_blank" class="about" href="https://github.com/marcos-araujo/SpringMVC-Tasks">Code</a>. Feel free to contribute.</div>
		
		<br />
	
		<a class="linkP" href="listTasks">Back</a>
	
	</div>
	
	</body>
		
</html>
