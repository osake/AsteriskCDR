<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
<div class="profile" style="color: #0074d9;">
    <img src="https://s-media-cache-ak0.pinimg.com/236x/ea/93/53/ea93537e4451928c4d522045b3514fae.jpg" alt="..." class="img-circle img-responsive">
    <span class="username"><b><sec:authentication property="principal.username"/></b></span>
</div>
<div class="menu">
        <ul>
            <li><a href="#"><b>Home</b></a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Table</a></li>
            <li><a href="#">Swart</a></li>
            <li><a href="#">Users</a></li>
            <li><a href="#">Asterisk</a></li>
        </ul>
</div>
 <div class="container">
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