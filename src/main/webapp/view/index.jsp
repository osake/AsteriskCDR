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
 <div class="container">

      <!-- Static navbar -->
      <div class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><b>Oregon</b>CRM</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="/logout">Out</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </div>

<div class="table-row">
	<div class="table-responsive">
            <table class="table table-condensed">
              <thead>
                <tr>
                  <th>#ID</th>
                  <th>Header</th>
                  <th>Header</th>
                  <th>Header</th>
                  <th>Header</th>
                </tr>
              </thead>
              <tbody>
                  <c:forEach items="${asteriskList}" var="asterisk">
                  <tr>
                  <td><a href="#">#${asterisk.id}</a></td>
                  <td>${asterisk.clid}</td>
                  <td>${asterisk.disposition}</td>
                  <td>${asterisk.calldate}</td>
                  <td>${asterisk.lastdata}</td>
                  </tr>
                  </c:forEach>
              </tbody>
            </table>
          </div>
</div>
</div>

</body>
</html>