<%--
  Created by IntelliJ IDEA.
  User: christian
  Date: 25.01.2016
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%--@elvariable id="asteriskList" type="java.util.List"--%>
<%@ page session="false" %>
<html>
<head>
    <title></title>
</head>
<body>
asfsdfsdfsfsfsdfsdfs
  <table class="tg">
    <tr>
      <th width="80">Person ID</th>
      <th width="120">Person Name</th>
      <th width="120">Person Country</th>
      <th width="60">Edit</th>
      <th width="60">Delete</th>
    </tr>

    <c:forEach items="${asteriskList}" var="asterisk">
      <tr>
        <td>${asterisk.id}</td>
        <td>${asterisk.clid}</td>
        <td>${asterisk.disposition}</td>
        <td><a href="<c:url value='/index' />" >Refresh</a></td>
        <td><a href="#" >Delete</a></td>
      </tr>
    </c:forEach>
  </table>

</body>
</html>
