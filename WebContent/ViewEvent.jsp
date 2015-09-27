<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><s:property value="getText('global.activityInformation')" /></title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/reverse.css" rel="stylesheet">
<link href="css/creative.css" rel="stylesheet">
</head>
<body class="bg-primary">
<jsp:include page="Navigator.jsp" />
<div class="row form-horizontal container-fluid">
  <h2 class="form-reverse-heading form-reverse"><s:property value="getText('global.activityInformation')" /></h2>
  <hr class="light">
  
  <div class="form-group">
    <label for="eventName" class="col-sm-2 control-label"><s:property value="getText('global.activityName')" /></label>
	<p class="col-sm-8 form-control-static"><s:property value="event.name" /></p>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label"><s:property value="getText('global.activityAddress')" /></label>
    <p class="col-sm-8 form-control-static"><s:property value="event.address" /></p>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label"><s:property value="getText('global.activityDate')" /></label>
    <p class="col-sm-8 form-control-static"><s:property value="event.date" /></p>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label"><s:property value="getText('global.activityTime')" /></label>
    <p class="col-sm-8 form-control-static"><s:property value="event.time" /></p>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label"><s:property value="getText('global.dressCode')" /></label>
    <p class="col-sm-8 form-control-static"><s:property value="event.dressCode" /></p>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label"><s:property value="getText('global.poster')" /></label>
    <p class="col-sm-8 form-control-static"><s:if test="event.poster != null"><img src="/upload/<s:property value="event.poster" />" style="max-width:100%;" /></s:if></p>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label"><s:property value="getText('global.activityDescription')" /></label>
    <pre class="col-sm-8 form-control-static"><s:property value="event.description" escape="false" /></pre>
  </div>
</div>

	<div class="row">
		<div class="col-sm-offset-2 col-sm-8">
			<h2 class="form-reverse-heading form-reverse">
				<s:property value="getText('global.reservationInformation')" />
			</h2>
			<hr class="light">
			<div class="form-reverse-heading form-reverse">
				<a class="btn btn-lg btn-default"
					href="
						<s:url action="ExportToExcel">
							<s:param name="eventName" value="event.name"></s:param>
						</s:url>
					"><s:property
						value="getText('global.exportToExcel')" /> </a>
			</div>
			<table class="table">
				<tr>
					<th><s:property value="getText('global.reservationCode')" /></th>
					<th><s:property value="getText('global.reservationTime')" /></th>
					<th><s:property value="getText('global.lastName')" /></th>
					<th><s:property value="getText('global.firstName')" /></th>
					<th><s:property value="getText('global.phoneNumber')" /></th>
					<th><s:property value="getText('global.weChatAccount')" /></th>
					<th><s:property value="getText('global.email')" /></th>
					<th><s:property value="getText('global.status')" /></th>
				</tr>

				<s:iterator value="reservationList" id="reservation">
					<tr>
						<td><s:property value="code" /></td>
						<td><s:date name="datetime" format="yyyy-MM-dd HH:mm:ss" /></td>
						<td><s:property value="lastName" /></td>
						<td><s:property value="firstName" /></td>
						<td><s:property value="phoneNumber" /></td>
						<td><s:property value="weChatAccount" /></td>
						<td><s:property value="email" /></td>
						<td><s:property value="status" /></td>
					</tr>
				</s:iterator>
			</table>
		</div>
	</div>
</body>
</html>