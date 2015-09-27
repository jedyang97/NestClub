<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title><s:property value="getText('global.administratorSignIn')" /></title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/reverse.css" rel="stylesheet">
<link href="css/creative.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">
</head>
<body class="bg-primary">
<jsp:include page="Navigator.jsp" />
<div class="container">
  <form action="AdministratorSignIn" class="form-signin">
    <h2 class="form-signin-heading"><s:property value="getText('global.pleaseSignIn')" /></h2>
    <label for="username" class="sr-only"><s:property value="getText('global.username')" /></label>
    <input name="username" type="text" id="username" class="form-control" placeholder="Username" required autofocus>
    <label for="password" class="sr-only"><s:property value="getText('global.password')" /></label>
    <input name="password" type="password" id="password" class="form-control" placeholder="Password" required>
    <button class="btn btn-lg btn-default btn-block" type="submit"><s:property value="getText('global.signIn')" /></button>
  </form>
</div>
<!-- /container -->

</body>
</html>
