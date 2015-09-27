<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title><s:property value="getText('global.activityList')" /></title>

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
	
	<div class="row">
	<div class="col-sm-offset-1 col-sm-10">
	<table class="table">
		<tr>
			<th><s:property value="getText('global.activityName')" /></th>
			<th><s:property value="getText('global.address')" /></th>
			<th><s:property value="getText('global.date')" /></th>
			<th><s:property value="getText('global.time')" /></th>
			<th><s:property value="getText('global.dressCode')" /></th>
			<th><s:property value="getText('global.status')" /></th>
		</tr>
		
		<s:iterator value="eventList" id="event">
			<tr>
				<td>
					<a href="
						<s:url action="ReserveInit">
							<s:param name="eventName" value="name"></s:param>
						</s:url>
					" ><s:property value="name" />
					</a>
				</td>
				<td><s:property value="address" /></td>
				<td><s:property value="date" /></td>
				<td><s:property value="time" /></td>
				<td><s:property value="dressCode" /></td>
				<td><s:if test="status == 'ongoing'"><s:property value="getText('global.ongoing')" /></s:if><s:if test="status == 'closed'"><s:property value="getText('global.closed')" /></s:if></td>		
			</tr>
		</s:iterator>
	</table>
	</div>
	</div>

</body>
</html>