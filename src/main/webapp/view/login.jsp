<%--
  Created by IntelliJ IDEA.
  User: oregon
  Date: 27.01.2016
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<spring:url value="/resources/bootstrap/css/bootstrap.min.css" var="bootstrapMinCss"/>
<spring:url value="/resources/dist/css/AdminLTE.min.css" var="AdminLTEMinCss"/>
<spring:url value="/resources/plugins/iCheck/square/blue.css" var="blue"/>
<spring:url value="/resources/plugins/jQuery/jQuery-2.1.4.min.js" var="jQuery"/>
<spring:url value="/resources/bootstrap/js/bootstrap.min.js" var="bootstrapJS"/>
<spring:url value="/resources/plugins/iCheck/icheck.min.js" var="icheck"/>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Asterisk CDR | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
  <link rel="stylesheet" href="${bootstrapMinCss}">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${AdminLTEMinCss}">
  <!-- iCheck -->
  <link rel="stylesheet" href="${blue}">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>Asterisk</b>CDR</a>
  </div><!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>
    <c:url value="/j_spring_security_check" var="loginUrl" />
    <form action="${loginUrl}" method="post">
      <div class="form-group has-feedback">
        <input name="j_username" class="form-control" placeholder="Email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input name="j_password" type="password" class="form-control" placeholder="Password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox"> Remember Me
            </label>
          </div>
        </div><!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
        </div><!-- /.col -->
      </div>
    </form>
    <a href="#">I forgot my password</a><br>
    <a href="#" class="text-center">Register a new membership</a>

  </div><!-- /.login-box-body -->
</div><!-- /.login-box -->

<!-- jQuery 2.1.4 -->
<script src="${jQuery}"></script>
<!-- Bootstrap 3.3.5 -->
<script src="${bootstrapMinCss}"></script>
<!-- iCheck -->
<script src="${icheck}"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>

</body>
</html>
