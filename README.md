# Web Tasks 

Create, edit, delete, open and close tasks.
		
Features
<ul>
	<li>Task Management</li> 
	<li>Authentication</li>
</ul>

Design Patterns
<ul>
	<li>Model View Controller</li>
	<li>Data Access Object</li>
	<li>Dependency Injection</li>
</ul>		

APIs and Frameworks
<ul>	
	<li>Integration spring / hibernate</li>
	<li>Transaction Management</li>
	<li>Spring Security</li>
</ul>

Logic overview
<ul>	
	<li>The view layer is in JSP</li>
	<li>The database connection is in Spring Context</li>
	<li>The persistence is made by Hibernate API</li>
	<li>All requests go through a HandlerInterceptorAdapter, where the user sessions is verified</li>
	<li>The main logic is in a Spring Controller</li>
</ul>
