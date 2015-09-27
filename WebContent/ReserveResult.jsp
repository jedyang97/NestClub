<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title><s:property value="getText('global.informationConfirmation')" /></title>

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
	<div class="col-xs-offset-1 col-xs-10">
	<h3><s:property value="getText('global.reserveSuccess')" /></h3>
	<h4><s:property value="getText('global.informationConfirmation')" /></h4>
	<table class="table">
		<tr>
			<td><strong><s:property value="getText('global.activityName')" /></strong></td>
			<td><s:property value="eventName" /></td>
		</tr>
		<tr>
			<td><strong><s:property value="getText('global.firstName')" /></strong></td>
			<td><s:property value="firstName" /></td>
		</tr>
		<tr>
			<td><strong><s:property value="getText('global.lastName')" /></strong></td>
			<td><s:property value="lastName" /></td>
		</tr>
		<tr>
			<td><strong><s:property value="getText('global.gender')" /></strong></td>
			<td><s:property value="gender" /></td>
		</tr>
		<tr>
			<td><strong><s:property value="getText('global.phoneNumber')" /></strong></td>
			<td><s:property value="phoneNumber" /></td>
		</tr>
		<s:if test="event.items.contains('weChatAccount')">
		<tr>
			<td><strong><s:property value="getText('global.weChatAccount')" /></strong></td>
			<td><s:property value="weChatAccount" /></td>
		</tr>
		</s:if>
		<s:if test="event.items.contains('email')">
		<tr>
			<td><strong><s:property value="getText('global.email')" /></strong></td>
			<td><s:property value="email" /></td>
		</tr>
		</s:if>
		<s:if test="event.items.contains('job')">
		<tr>
			<td><strong><s:property value="getText('global.job')" /></strong></td>
			<td><s:property value="job" /></td>
		</tr>
		</s:if>
		<s:if test="event.items.contains('age')">
		<tr>
			<td><strong><s:property value="getText('global.age')" /></strong></td>
			<td><s:property value="age" /></td>
		</tr>
		</s:if>
		<s:if test="event.items.contains('school')">
		<tr>
			<td><strong><s:property value="getText('global.school')" /></strong></td>
			<td><s:property value="school" /></td>
		</tr>
		</s:if>
		<s:if test="event.items.contains('company')">
		<tr>
			<td><strong><s:property value="getText('global.company')" /></strong></td>
			<td><s:property value="company" /></td>
		</tr>
		</s:if>
	</table>
	</div>
	</div>

	<s:if test="event.items.contains('pay')">
		<script type="text/javascript" src="https://yoopay.cn/scripts/easyXDM.min.js"></script>
		<script type="text/javascript">
			var REMOTE = "https://yoopay.cn";
			var transport = new easyXDM.Socket(
					/** The configuration */
					{
						remote : REMOTE
								+ "/proxy.html?url=/payment/payment_widget/<s:property value="event.yooPayEventName" />%3Fwidth%3Dsmall%26attendeeList%3Dhideen%26ref%3D",
						swf : REMOTE + "/scripts/easyxdm.swf",
						container : "embedded",
						onMessage : function(message, origin) {
							this.container.getElementsByTagName("iframe")[0].style.width = "100%";
							this.container.getElementsByTagName("iframe")[0].style.height = parseInt(message)
									+ 20 + "px";
						}
					});
		</script>
		<div id="embedded"></div>
	</s:if>


</body>
</html>