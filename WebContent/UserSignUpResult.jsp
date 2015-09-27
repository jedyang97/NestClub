<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><s:property
		value="getText('global.signUpSuccess')" /></title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/reverse.css" rel="stylesheet">
<link href="css/creative.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body class="bg-primary">
	<jsp:include page="Navigator.jsp" />
	<div class="row">
		<div class="col-xs-offset-2 col-xs-8">
			<h3>
				<s:property value="getText('global.signUpSuccessMessage')" />
			</h3>
			<h4>
				<s:property value="getText('global.userInformation')" />
			</h4>
			<table class="table">
				<tr>
					<td><strong><s:property
								value="getText('global.email')" /></strong></td>
					<td><s:property value="email" /></td>
				</tr>
				<tr>
					<td><strong><s:property
								value="getText('global.lastName')" /></strong></td>
					<td><s:property value="lastName" /></td>
				</tr>
				<tr>
					<td><strong><s:property
								value="getText('global.firstName')" /></strong></td>
					<td><s:property value="firstName" /></td>
				</tr>
				<tr>
					<td><strong><s:property
								value="getText('global.gender')" /></strong></td>
					<td><s:property value="gender" /></td>
				</tr>
				<tr>
					<td><strong><s:property
								value="getText('global.phoneNumber')" /></strong></td>
					<td><s:property value="phoneNumber" /></td>
				</tr>
				<tr>
					<td><strong><s:property
								value="getText('global.weChatAccount')" /></strong></td>
					<td><s:property value="weChatAccount" /></td>
				</tr>
				<tr>
					<td><strong><s:property
								value="getText('global.school')" /></strong></td>
					<td><s:property value="school" /></td>
				</tr>
				<tr>
					<td><strong><s:property
								value="getText('global.graduationYear')" /></strong></td>
					<td><s:property value="graduationYear" /></td>
				</tr>
				<tr>
					<td><strong><s:property
								value="getText('global.user_options')" /></strong></td>
					<td><s:if test="user_options.contains('lacMailingList')">
							<s:property value="getText('global.lacMailingList')" />
						</s:if></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>