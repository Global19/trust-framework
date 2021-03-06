<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" ng-app="trustFrameworkApp">
<head>
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.css" />
<link rel="stylesheet" href="resources/css/trust.css" />

<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.20/angular.js"></script>
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.20/angular-route.js"></script>
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.20/angular-sanitize.js"></script>
<script type="text/javascript"
	src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.js"></script>
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/0.10.0/ui-bootstrap.js"></script>
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/0.10.0/ui-bootstrap-tpls.js"></script>
<script type="text/javascript" src="resources/js/trust.js"></script>

<title>Dynamic Trust Framework Webapp</title>
</head>
<body>
	<h2>Dynamic Trust Framework Webapp</h2>

	<div>
		<p class="well">
			<security:authorize access="hasRole('ROLE_USER')">
				<b><span class="text-success">You are currently logged
						in.</span></b>

				<div>
					<span><a href="#/instance-builder">Go to Instance
							Builder</a></span> <br> <span><a href="#/card">View all
							cards</a></span> <br> <span><a href="#/card/new">Create new
							card</a></span>
							<br>
							<span><a href="j_spring_security_logout">Logout</a></span>
				</div>
				
			</security:authorize>
			<security:authorize access="!hasRole('ROLE_USER')">
				<b><span class="text-error">You are <em>NOT</em>
						currently logged in.
				</span></b>
				<div>
				<h4><a href="#/login"  class="login-button">Login</a></h4>
				</div>
			</security:authorize>
		</p>
	</div>

	<div ng-view></div>

</body>
</html>