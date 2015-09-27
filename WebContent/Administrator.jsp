<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Administrator Page</title>

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
<body class="bg-success">

	<jsp:include page="Navigator.jsp" />

	<h2 class="form-reverse-heading form-reverse">
		<s:property value="getText('global.activityInformation')" />
	</h2>
	<hr class="light">

	<div class="row">
		<div class="col-sm-offset-2 col-sm-8">
			<table class="table">
				<tr>
					<th><s:property value="getText('global.activityName')" /></th>
					<th><s:property value="getText('global.address')" /></th>
					<th><s:property value="getText('global.date')" /></th>
					<th><s:property value="getText('global.time')" /></th>
					<th><s:property value="getText('global.dressCode')" /></th>
					<th><s:property value="getText('global.status')" /></th>
					<th><s:property value="getText('global.operation')" /></th>
				</tr>

				<s:iterator value="eventList" id="event">
					<tr>
						<td><a
							href="
						<s:url action="ViewEvent">
							<s:param name="eventName" value="name"></s:param>
						</s:url>
					"><s:property
									value="name" /> </a></td>
						<td><s:property value="address" /></td>
						<td><s:property value="date" /></td>
						<td><s:property value="time" /></td>
						<td><s:property value="dressCode" /></td>
						<td><s:if test="status == 'ongoing'">
								<s:property value="getText('global.ongoing')" />
							</s:if> <s:if test="status == 'closed'">
								<s:property value="getText('global.closed')" />
							</s:if></td>
						<td><a class="btn btn-default"
							href="
						<s:url action="ViewEvent">
							<s:param name="eventName" value="name"></s:param>
						</s:url>
					"><s:property
									value="getText('global.view')" /> </a> <a class="btn btn-default"
							href="
						<s:url action="RemoveEvent">
							<s:param name="eventName" value="name"></s:param>
						</s:url>
					"><s:property
									value="getText('global.remove')" /> </a> <a
							class="btn btn-default"
							href="
						<s:url action="EditEventInit">
							<s:param name="eventName" value="name"></s:param>
						</s:url>
					"><s:property
									value="getText('global.edit')" /> </a> <a class="btn btn-default"
							href="
						<s:url action="CloseOpenEvent">
							<s:param name="eventName" value="name"></s:param>
						</s:url>
					"><s:if
									test="status == 'ongoing'">
									<s:property value="getText('global.close')" />
								</s:if> <s:if test="status == 'closed'">
									<s:property value="getText('global.open')" />
								</s:if> </a></td>
					</tr>
				</s:iterator>
			</table>
		</div>
	</div>

	<h2 class="form-reverse-heading form-reverse">
		<s:property value="getText('global.mailingList')" />
	</h2>
	<hr class="light">

	<div class="row">
		<div class="col-sm-offset-2 col-sm-8">
			<table class="table">
				<tr>
					<th><s:property value="getText('global.name')" /></th>
					<th><s:property value="getText('global.operation')" /></th>
				</tr>

				<tr>
					<td><s:property value="getText('global.lacMailingList')" /></td>
					<td><a class="btn btn-lg btn-default"
						href="
						<s:url action="MailingListToExcel">
							<s:param name="mailingListName">lacMailingList</s:param>
						</s:url>
					"><s:property
								value="getText('global.exportToExcel')" /> </a></td>
				</tr>

			</table>
		</div>
	</div>

	<jsp:include page="Organize.jsp" />

</body>
</html>