<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapMinCss"/>
<spring:url value="/resources/css/bootstrap-theme.min.css" var="bootstrapThemes"/>
<spring:url value="/resources/css/toolkit-inverse.css" var="toolkitInverse"/>
<spring:url value="/resources/css/app.css" var="appCss"/>
<html>
<head>
	<title>OregonCRM</title>
	<link rel="stylesheet" type="text/css" href="${bootstrapMinCss}">
	<link rel="stylesheet" type="text/css" href="${bootstrapThemes}">
	<link rel="stylesheet" type="text/css" href="${toolkitInverse}">
	<link rel="stylesheet" type="text/css" href="${appCss}">
	
</head>
<body class="login-page">
<div class="login-box">
	<div class="login-logo">
		<a href="#"><b>Oregon</b>CRM</a>
	</div>
	<div class="login-box-body">
		<c:url value="/j_spring_security_check" var="loginUrl" />
		<form action="${loginUrl}" method="POST">
			<div class="form-group has-feedback">
				<input name="j_username" class="form-control" placeholder="Login">
			</div>
			<div class="form-group has-feedback">
				<input name="j_password" type= "password"class="form-control" placeholder="Password">
			</div>
			<div class="row">
				<div class="col-xs-8">
					<div class="checkbox icheck">
						<div class="en aob aof">
							<label>
								<input type="checkbox">
								<span class="aoc row"></span>
								Remember me
							</label>
						</div>
					</div>
				</div>
				<div class="col-xs-4">
					<button class="btn btn-primary" type="submit">
  						<span class="icon icon-thumbs-up"></span>
  									Sign In
					</button>
				</div>
			</div>
		</form>
	</div>

</div>

</body>
</html>