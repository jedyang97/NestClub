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
		value="getText('global.informationConfirmation')" /></title>

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
		<div class="col-sm-offset-2 col-sm-8">
			<h3>
				<s:property value="getText('global.organizeSuccess')" />
			</h3>
			<h4>
				<s:property value="getText('global.activityInformation')" />
			</h4>
			<table class="table">
				<tr>
					<td><strong><s:property
								value="getText('global.activityName')" /></strong></td>
					<td><s:property value="name" /></td>
				</tr>
				<tr>
					<td><strong><s:property
								value="getText('global.address')" /></strong></td>
					<td><s:property value="address" /></td>
				</tr>
				<tr>
					<td><strong><s:property
								value="getText('global.date')" /></strong></td>
					<td><s:property value="date" /></td>
				</tr>
				<tr>
					<td><strong><s:property
								value="getText('global.time')" /></strong></td>
					<td><s:property value="time" /></td>
				</tr>
				<tr>
					<td><strong><s:property
								value="getText('global.dressCode')" /></strong></td>
					<td><s:property value="dressCode" /></td>
				</tr>
				<tr>
					<td><strong><s:property
								value="getText('global.description')" /></strong></td>
					<td><pre style="white-space: pre-wrap">
							<s:property value="description" escape="false" />
						</pre></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>