<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
	function change(obj) {
		switch (obj) {
		case "male":
			document.getElementById("changeDiv").style.display = "block";
			document.getElementById("invitationWeChatAccount").required = true;
			break;
		case "female":
			document.getElementById("changeDiv").style.display = "none";
			document.getElementById("invitationWeChatAccount").required = false;
			document.getElementById("invitationWeChatAccount").value = "";
			break;
		}
	}
	
	function validate_required(field) {
		with (field) {
			if (required == true) {
				if (value == null || value == "") {
					var text = '<s:property value="getText('global.mustBeFilledOut')" />';
					alert(name + " " + text);
					field.focus();
					return false;
				}
			}
			return true;
		}
	}

	function validate_form(thisform) {
		with (thisform) {
			if (validate_required(weChatAccount) == false) {
				return false;
			}
			if (validate_required(gender) == false) {
				return false;
			}
			if (validate_required(invitationWeChatAccount) == false) {
				return false;
			}
			if (validate_required(age) == false) {
				return false;
			}
			if (validate_required(job) == false) {
				return false;
			}
			return true;
		}
	}
</script>

<title>${eventName}</title>

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

<form action="Reserve?${eventName}" onsubmit="return validate_form(this);" class="form-horizontal container-fluid">
  <h2 class="form-reverse-heading form-reverse"><s:property value="getText('global.reservationInformation')" /></h2>
  <hr class="light">
  
  <div class="form-group">
    <label for="eventName" class="col-sm-2 control-label"><s:property value="getText('global.activityName')" /></label>
    <div class="col-sm-8">
      <input name="eventName" value="${eventName}" type="text" id="EventName" class="form-control" readonly />
    </div>
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
    <label class="col-sm-2 control-label"><s:property value="getText('global.poster')" /></label>
    <p class="col-sm-8 form-control-static"><s:if test="event.poster != null"><img src="/upload/<s:property value="event.poster" />" style="max-width:100%;" /></s:if></p>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label"><s:property value="getText('global.activityDescription')" /></label>
    <pre class="col-sm-8 form-control-static"><s:property value="event.description" /></pre>
  </div>
  
  <div class="form-group">
    <label for="weChatAccount" class="col-sm-2 control-label"><s:property value="getText('global.weChatAccount')" /></label>
    <div class="col-sm-8">
      <input name="weChatAccount" type="text" id="weChatAccount" class="form-control" placeholder="WeChat" required />
    </div>
  </div>
  
  <div class="form-group">
    <label for="gender" class="col-sm-2 control-label"><s:property value="getText('global.gender')" /></label>
    <div class="col-sm-8">
      <select name="gender" id="gender" class="form-control" onchange="change(this.value)" required>
      	<option value="male"><s:property value="getText('global.male')" /></option>
      	<option value="female"><s:property value="getText('global.female')" /></option>
      </select>
    </div>
  </div>
  
  <div id="changeDiv" class="form-group">
    <label for="invitationWeChatAccount" class="col-sm-2 control-label"><s:property value="getText('global.invitationWeChatAccount')" /></label>
    <div class="col-sm-8">
      <input name="invitationWeChatAccount" type="text" id="invitationWeChatAccount" class="form-control" placeholder="Invitation WeChat" required />
    </div>
  </div>
  
  <div class="form-group">
    <label for="age" class="col-sm-2 control-label"><s:property value="getText('global.age')" /></label>
    <div class="col-sm-8">
      <input name="age" type="text" id="age" class="form-control" placeholder="Age" required />
    </div>
  </div>

  <div class="form-group">
    <label for="job" class="col-sm-2 control-label"><s:property value="getText('global.job')" /></label>
    <div class="col-sm-8">
      <input name="job" type="text" id="job" class="form-control" placeholder="Job" required />
    </div>
  </div>
  
  <div class="row">
      <button class="btn btn-lg btn-default col-xs-offset-2 col-sm-4" type="reset"><s:property value="getText('global.reset')" /></button>
      <button class="btn btn-lg btn-default col-sm-4" type="submit"><s:property value="getText('global.submit')" /></button>
  </div>
</form>
</body>
</html>
